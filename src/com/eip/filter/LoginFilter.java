package com.eip.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();//获取请求地址
        String contextPath = request.getContextPath();
        if (url.contains("UserLogin") || url.contains(".css") || url.contains(".js")
                || url.contains(".jpg") || url.contains(".ttf") || url.contains(".woff")
                || url.contains("login") || url.contains("register") || url.contains("findPwd")
                || url.contains("answerQ") || url.contains("resetPwd")|| url.contains("getUserByName")
                || url.contains ("updateUser") || url.contains ("updateUserPwd") || url.contains ("UserRegister")
                || url.contains ("checkUserByName")){
            filterChain.doFilter(servletRequest,servletResponse);//放行求情
        }else{
            HttpSession session = request.getSession();
            if (session.getAttribute("User")!=null || session.getAttribute ("SMName")!=null){
                filterChain.doFilter(servletRequest,servletResponse);
            }else{
                response.sendRedirect(contextPath+"/login.jsp");
            }
        }
    }

    @Override
    public void destroy() {

    }
}
