package com.example;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // 기본적인 사용자 인증 로직 (실제 프로젝트에서는 데이터베이스 사용 권장)
        if ("user".equals(username) && "password".equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            resp.sendRedirect("home.jsp");
        } else {
            resp.sendRedirect("error.jsp");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // GET 요청 처리
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 기본적인 사용자 인증 로직 (실제 프로젝트에서는 데이터베이스 사용 권장)
        if ("user".equals(username) && "password".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        } else {
        	response.sendRedirect("error.jsp");
        }
    }
}
