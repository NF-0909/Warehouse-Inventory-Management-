package servlets;

import beans.CustomerBean;
import beans.EquipmentBean;
import beans.RentalBean;
import dao.EquipmentDAO;
import dao.RentalDAO;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RentalServlet")
public class RentalServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        int equipmentID = Integer.parseInt(request.getParameter("id"));
        EquipmentDAO eqDao = new EquipmentDAO();
        
        try {
            EquipmentBean eq = eqDao.getEquipmentById(equipmentID);
            request.setAttribute("selectedEquipment", eq);
            request.getRequestDispatcher("rentEquipment.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("EquipmentServlet");
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        CustomerBean user = (CustomerBean) session.getAttribute("currentCustomer");
        
        if (user == null) {
            response.sendRedirect("login.jsp?error=Session expired. Please log in.");
            return;
        }

        int equipmentID = Integer.parseInt(request.getParameter("equipmentID"));
        Date startDate = Date.valueOf(request.getParameter("startDate"));
        Date endDate = Date.valueOf(request.getParameter("endDate"));
        
        EquipmentDAO eqDao = new EquipmentDAO();
        RentalDAO rentalDao = new RentalDAO();

        try {
            EquipmentBean eq = eqDao.getEquipmentById(equipmentID);
            

            LocalDate start = startDate.toLocalDate();
            LocalDate end = endDate.toLocalDate();
            long days = ChronoUnit.DAYS.between(start, end);
            if (days <= 0) days = 1; // Minimum baseline single-day rental

            BigDecimal costPerDay = eq.getPricePerDay();
            BigDecimal totalAmount = costPerDay.multiply(new BigDecimal(days));


            RentalBean rental = new RentalBean();
            rental.setCustomerID(user.getCustomerID());
            rental.setEquipmentID(equipmentID);
            rental.setStartDate(startDate);
            rental.setEndDate(endDate);
            rental.setStatus("Pending");
            rental.setTotalAmount(totalAmount);


            rentalDao.createRental(rental);
            eqDao.updateAvailability(equipmentID, false);

            response.sendRedirect("dashboard.jsp?msg=Rental confirmed successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Transaction processing error: " + e.getMessage());
            request.getRequestDispatcher("rentEquipment.jsp").forward(request, response);
        }
    }
}