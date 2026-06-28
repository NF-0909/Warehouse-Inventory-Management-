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
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        CustomerDAO dao = new CustomerDAO();
        try {
            CustomerBean customer = dao.loginCustomer(email, password);
            if (customer != null) {
                HttpSession session = request.getSession();
                session.setAttribute("currentCustomer", customer);
                response.sendRedirect("dashboard.jsp");
            } else {
                request.setAttribute("error", "Invalid Email or Password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database Error: " + e.getMessage());
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}