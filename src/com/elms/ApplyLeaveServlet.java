package com.elms;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ApplyLeaveServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                (String) request.getSession().getAttribute("username");

        String date = request.getParameter("date");
        String reason = request.getParameter("reason");

        try {
            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(
                            "insert into leaves(username,leave_date,reason,status) values(?,?,?,?)");

            ps.setString(1, username);
            ps.setString(2, date);
            ps.setString(3, reason);
            ps.setString(4, "Pending");

            ps.executeUpdate();

            response.getWriter().println("Leave Applied Successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
