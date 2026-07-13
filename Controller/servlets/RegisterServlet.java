package servlets;

import beans.CustomerBean;
import dao.CustomerDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        CustomerBean customer = new CustomerBean();
        customer.setUserName(name);
        customer.setEmail(email);
        customer.setPassword(password);

        CustomerDAO dao = new CustomerDAO();
        try {
            dao.registerCustomer(customer);

            response.sendRedirect("login.jsp?msg=Registration successful! Please login.");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error registering account: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}