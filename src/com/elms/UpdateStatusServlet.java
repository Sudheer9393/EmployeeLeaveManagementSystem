package com.elms;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UpdateStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                            "update leaves set status=? where leave_id=?");

            ps.setString(1, status);
            ps.setInt(2, id);

            ps.executeUpdate();
            response.sendRedirect("adminHome.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
