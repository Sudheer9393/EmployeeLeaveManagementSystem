package com.elms;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ViewLeaveServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd =
                request.getRequestDispatcher("viewLeave.jsp");

        rd.forward(request, response);
    }
}
