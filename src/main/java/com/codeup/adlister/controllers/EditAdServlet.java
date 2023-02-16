package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditAdServlet", urlPatterns = "/edit-ad")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/error");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/edit-ad.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int AdId = Integer.parseInt(request.getParameter("editMe"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        Ad newAd = new Ad(AdId, title, description);
        System.out.printf("turtle %s", newAd.getTitle());
//        DaoFactory.getAdsDao().updateAd(ad);
        response.sendRedirect("/ads/single");
}
}


