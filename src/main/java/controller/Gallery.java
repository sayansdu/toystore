package controller;

import dal.ImageRepository;
import entity.K_Image;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Gallery extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ImageRepository goodService = new ImageRepository();
        K_Image image = goodService.getImage();
        session.setAttribute("image", image);
        response.sendRedirect("/Kupon/gallery.jsp");
    }
}
