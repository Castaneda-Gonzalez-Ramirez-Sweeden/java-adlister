package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.MessagesServlet", urlPatterns = "/messages")
public class MessagesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            response.sendRedirect("/messages");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/messages.jsp").forward(request, response);

        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/messages");
        }
    }
}


