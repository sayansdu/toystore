package controller.admin;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

public class AddGood extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int count = 0;
        try {
            List<FileItem> multiparts = new ServletFileUpload(
                    new DiskFileItemFactory()).parseRequest(request);
            String name = "",
                   description = "",
                   category ="",
                   photo_dir="";
            int price = 0,
                amount = 0;

            for(FileItem item : multiparts){
                if(!item.isFormField()){
                    String pname = new File(item.getName()).getName();
                    File dir = new File("C:"+File.separator+"image");
                    if(!dir.exists())    dir.mkdir();

                    long name_in_milliseconds = System.currentTimeMillis();
                    String file_type = "", file_name="";
                    int dot_position = 0;
                    for(int i = pname.length()-1; i>0; i--){
                        if(pname.charAt(i) == '.'){
                            file_type = pname.substring(i+1);
                            break;
                        }
                    }
                    file_name = String.valueOf(name_in_milliseconds)+"."+file_type;
                    File file = new File(dir.getAbsolutePath() + File.separator + file_name);
                    file.setExecutable(false);
                    file.setWritable(false);
                    file.setExecutable(false);
                    photo_dir = file.getAbsolutePath();
                    item.write(file);
                }else {
                        if(item.getFieldName().equals("name")){
                            if((item.getString()).trim().isEmpty()){
                                request.setAttribute("error-name", "Название товара не должно быть пустым");
                                count++;
                            } else {
                                name = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                            }
                        }
                        else if(item.getFieldName().equals("category")){
                            if((item.getString()).trim().isEmpty()){
                                session.setAttribute("error-category", "Категория товара не должно быть пустым");
                                count++;
                            } else {
                                category = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                            }
                        }
                        else if(item.getFieldName().equals("description")){
                            description = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                        }
                        else if(item.getFieldName().equals("price")){
                            if(!isNumber(item.getString().trim())){
                                session.setAttribute("error-price", "Цена должна содержать только цифры");
                                count++;
                            } else {
                                price = Integer.parseInt(item.getString());
                            }
                        }
                        else if(item.getFieldName().equals("amount")){
                            if(!isNumber(item.getString().trim())){
                                session.setAttribute("error-amount", "Количество должна содержать только цифры");
                                count++;
                            } else {
                                amount = Integer.parseInt(item.getString());
                            }
                        }
                }
            }
            if(count > 0){
                response.sendRedirect("/Kupon/admin/add.jsp");
                return;
            }
            Service service;
            service = new Service();
            service.saveGood(name, description, category, price, amount, photo_dir);

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("something is wrong");
        }
        response.sendRedirect("/Kupon/admin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public boolean isNumber(String number){
        if(number==null || number.isEmpty())
            return false;
        try{
            Integer.parseInt(number);
        }catch (NumberFormatException e){
            return false;
        }
        return true;
    }
}
