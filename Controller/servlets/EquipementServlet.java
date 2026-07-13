package servlets;

import beans.EquipmentBean;
import dao.EquipmentDAO;
import java.io.IOException;
import java.util.List;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EquipmentServlet")
public class EquipmentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        EquipmentDAO dao = new EquipmentDAO();
        try {
            List<EquipmentBean> equipmentList = dao.getAllEquipment();

            request.setAttribute("equipmentList", equipmentList);
            request.getRequestDispatcher("equipment.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving inventory.");
        }
    }
}