package controller.admin.good.update;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.GoodService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 4/22/14
 * Time: 12:22 PM
 * To change this template use File | Settings | File Templates.
 */
@WebServlet(name = "Save")
public class Save extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int count = 0;
        try {
            List<FileItem> multiparts = new ServletFileUpload(
                    new DiskFileItemFactory()).parseRequest(request);
            String id="", name = "", description = "", category ="", photo_dir= File.separator+"Kupon"+File.separator+"images"+File.separator+"toys"+File.separator+"toy.jpg",
                    section="", producer="", color="", size="";
            byte[] foto_bytes = new byte[0];
            int price = 0;

            for(FileItem item : multiparts){
                if(!item.isFormField() && item.getSize()!=0){
                    foto_bytes = null;
                    foto_bytes = item.get();
                   /* System.out.println(item.getFieldName());
                    String pname = new File(item.getName()).getName();
                    File dir = new File("C:"+File.separator+"image");
                    if(!dir.exists())    dir.mkdir();

                    long name_in_milliseconds = System.currentTimeMillis();
                    String file_type = "", file_name="";
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
                    item.write(file);*/
                }else {
                    if(item.getFieldName().equals("name")){
                        if((item.getString()).trim().isEmpty()){
                            request.setAttribute("error-name", "Название товара не должно быть пустым");
                            count++;
                        } else {
                            name = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                            request.setAttribute("error-name", null);
                        }
                    }
                    else if(item.getFieldName().equals("price")){
                        if(!isNumber(item.getString().trim())){
                            session.setAttribute("error-price", "Цена должна содержать только цифры");
                            count++;
                        } else {
                            price = Integer.parseInt(item.getString());
                            session.setAttribute("error-price", null);
                        }
                    }
                    else if(item.getFieldName().equals("category")){
                        category = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }


                    else if(item.getFieldName().equals("description")){
                        description = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("section")){
                        section = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("producer")){
                        producer = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("color")){
                        color = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("size")){
                        size = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("id")){
                        id = item.getString();
                    }
                    else if(item.getFieldName().equals("foto_bytes")){
                        foto_bytes = null;
                        foto_bytes = item.get();
                    }

                }
            }
            if(count > 0){
                response.sendRedirect("/Kupon/admin/edit_product.jsp");
                return;
            }
            GoodService service = new GoodService();
            service.updateGood(Long.parseLong(id), name, description, price, Long.parseLong(category),Long.parseLong(section), photo_dir, producer, color, size,foto_bytes);

        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("something is wrong");
        }
        response.sendRedirect("/Kupon/admin/goods/all");
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
