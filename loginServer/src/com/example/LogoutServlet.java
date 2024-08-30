package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션을 가져오고 무효화합니다.
        HttpSession session = request.getSession();
        session.invalidate();

        // 로그인 페이지로 리디렉션합니다.
        response.sendRedirect("login.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // POST와 동일한 동작을 GET 요청에서도 수행합니다.
        doPost(request, response);
    }
}

/*
@WebServlet("/logout"): 이 어노테이션은 서블릿이 /logout 경로에서 요청을 처리하도록 설정합니다.
doPost: POST 요청을 처리합니다. 세션을 가져와 무효화하고, login.jsp로 리디렉션합니다.
doGet: GET 요청을 처리할 때도 POST와 동일한 동작을 수행하도록 합니다.
이 서블릿을 배포 후, 로그아웃 링크 클릭 시 logout URL로 요청이 전송되며, 사용자는 login.jsp로 리디렉션됩니다.
*/