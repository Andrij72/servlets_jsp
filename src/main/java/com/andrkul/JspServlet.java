package com.andrkul;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/temp-servlet")
public class JspServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      // resp.sendRedirect("/my-app/sample-jsp.jsp");
       List<User> users = new ArrayList<User>() {{
            add(new User("Andr", 24));
            add(new User("John", 28));
            add(new User("Petr", 25));
        }};
        req.setAttribute("users",users);

        getServletContext().getRequestDispatcher("/sample-jsp.jsp").forward(req,resp);
    }
}
