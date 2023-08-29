package org.devmasters.wisebladeweb.isswmq.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.devmasters.wisebladeweb.isswmq.dto.CreateUserDto;
import org.devmasters.wisebladeweb.isswmq.entity.Role;
import org.devmasters.wisebladeweb.isswmq.service.UserService;
import org.devmasters.wisebladeweb.isswmq.util.JspHelper;

import java.io.IOException;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

    private final UserService userService = UserService.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("role", Role.values());
        req.getRequestDispatcher(JspHelper.getPath("registration")).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CreateUserDto userDto = CreateUserDto.builder()
                .name(req.getParameter("username"))
                .email(req.getParameter("email"))
                .password(req.getParameter("password"))
                .build();
        userService.create(userDto);
        resp.sendRedirect("/login");
    }
}
