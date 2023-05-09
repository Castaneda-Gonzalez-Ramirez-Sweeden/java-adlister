package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="UpdateUsersServlet", urlPatterns = "/users/edit")
public class UpdateUsersServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }
        req.getRequestDispatcher("/WEB-INF/users/UpdateUsers.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("editMe"));
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        User newPerson = new User(id,username, email,password);
        DaoFactory.getUsersDao().updateUser(newPerson);
        req.getSession().setAttribute("user", newPerson);
        resp.sendRedirect("/login");
    }
}