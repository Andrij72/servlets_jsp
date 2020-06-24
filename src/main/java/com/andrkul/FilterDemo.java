package com.andrkul;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.Date;

/**
 * Simple class that implements interface {@link Filter}.
 *
 * @author A.Kulynych
 */
public class FilterDemo implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        String ipAddress = request.getRemoteAddr();
        String dateTime = new Date().toString();

        System.out.println("\n\n==============================================\n");

        System.out.println("Request...");
        System.out.println("Date/Time: " + dateTime);
        System.out.println("IP:" + ipAddress);

        System.out.println("\n==============================================\n");

        chain.doFilter(request, response);
    }

    public void destroy() {

    }
}