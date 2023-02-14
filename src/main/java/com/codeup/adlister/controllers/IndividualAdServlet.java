package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndividualAdServlet", urlPatterns = "/ads/single")
public class IndividualAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int singleAd = Integer.parseInt(request.getParameter("id"));

        request.setAttribute("singleAd", DaoFactory.getAdsDao().getAdById(singleAd));

        request.getRequestDispatcher("WEB-INF/ads/single.jsp").forward(request, response);
    }

}
