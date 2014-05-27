<%@ page import="java.util.List" %>
<%@ page import="entity.Goods" %>
<%@ page import="java.io.OutputStream" %><%

    if(request.getParameter("img_id")!=null ){
        List<Goods> goods = (List<Goods>) session.getAttribute("goods");
        long imgId = Long.parseLong(request.getParameter("img_id"));
        for (int i = 0; i < goods.size(); i++) {
            if( goods.get(i).getId()== imgId){
                response.setContentType("image/gif");
                OutputStream o = response.getOutputStream();

                o.write(goods.get(i).getImage());
                o.flush();
                o.close();
                break;
            }
        }
    }

%>
