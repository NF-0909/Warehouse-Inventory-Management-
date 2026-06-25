package dao;

import beans.RentalBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RentalDAO {

    public void createRental(RentalBean rental) throws SQLException {
        String sql = "INSERT INTO Rentals (CustomerID, EmployeeID, EquipmentID, StartDate, EndDate, Status, TotalAmount) VALUES (?, ?, ?, ?, ?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, rental.getCustomerID());
        ps.setInt(2, rental.getEmployeeID());
        ps.setInt(3, rental.getEquipmentID());
        ps.setDate(4, rental.getStartDate());
        ps.setDate(5, rental.getEndDate());
        ps.setString(6, rental.getStatus());
        ps.setBigDecimal(7, rental.getTotalAmount());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<RentalBean> getRentalsByCustomer(int customerID) throws SQLException {
        List<RentalBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Rentals WHERE CustomerID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, customerID);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            RentalBean r = new RentalBean();
            r.setRentalID(rs.getInt("RentalID"));
            r.setCustomerID(rs.getInt("CustomerID"));
            r.setEmployeeID(rs.getInt("EmployeeID"));
            r.setEquipmentID(rs.getInt("EquipmentID"));
            r.setStartDate(rs.getDate("StartDate"));
            r.setEndDate(rs.getDate("EndDate"));
            r.setStatus(rs.getString("Status"));
            r.setTotalAmount(rs.getBigDecimal("TotalAmount"));
            list.add(r);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public List<RentalBean> getAllRentals() throws SQLException {
        List<RentalBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Rentals";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            RentalBean r = new RentalBean();
            r.setRentalID(rs.getInt("RentalID"));
            r.setCustomerID(rs.getInt("CustomerID"));
            r.setEmployeeID(rs.getInt("EmployeeID"));
            r.setEquipmentID(rs.getInt("EquipmentID"));
            r.setStartDate(rs.getDate("StartDate"));
            r.setEndDate(rs.getDate("EndDate"));
            r.setStatus(rs.getString("Status"));
            r.setTotalAmount(rs.getBigDecimal("TotalAmount"));
            list.add(r);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public void updateRentalStatus(int rentalID, String status, int employeeID) throws SQLException {
        String sql = "UPDATE Rentals SET Status=?, EmployeeID=? WHERE RentalID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, status);
        ps.setInt(2, employeeID);
        ps.setInt(3, rentalID);

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public void deleteRental(int rentalID) throws SQLException {
        String sql = "DELETE FROM Rentals WHERE RentalID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, rentalID);
        ps.executeUpdate();

        ps.close();
        con.close();
    }
}