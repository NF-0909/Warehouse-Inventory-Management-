package dao;

import beans.EmployeeBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    public EmployeeBean loginEmployee(String email, String password) throws SQLException {
        String sql = "SELECT * FROM Employee WHERE Email=? AND Password=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        EmployeeBean employee = null;

        if (rs.next()) {
            employee = new EmployeeBean();
            employee.setEmployeeID(rs.getInt("EmployeeID"));
            employee.setEmployeeName(rs.getString("EmployeeName"));
            employee.setEmail(rs.getString("Email"));
            employee.setPassword(rs.getString("Password"));
            employee.setPosition(rs.getString("Position"));
            employee.setSupervisorID(rs.getInt("SupervisorID"));
        }

        rs.close();
        ps.close();
        con.close();

        return employee;
    }

    public void addEmployee(EmployeeBean employee) throws SQLException {
        String sql = "INSERT INTO Employee (EmployeeName, Email, Password, Position, SupervisorID) VALUES (?, ?, ?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, employee.getEmployeeName());
        ps.setString(2, employee.getEmail());
        ps.setString(3, employee.getPassword());
        ps.setString(4, employee.getPosition());
        ps.setInt(5, employee.getSupervisorID());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<EmployeeBean> getAllEmployees() throws SQLException {
        List<EmployeeBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Employee";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            EmployeeBean e = new EmployeeBean();
            e.setEmployeeID(rs.getInt("EmployeeID"));
            e.setEmployeeName(rs.getString("EmployeeName"));
            e.setEmail(rs.getString("Email"));
            e.setPassword(rs.getString("Password"));
            e.setPosition(rs.getString("Position"));
            e.setSupervisorID(rs.getInt("SupervisorID"));
            list.add(e);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public void deleteEmployee(int employeeID) throws SQLException {
        String sql = "DELETE FROM Employee WHERE EmployeeID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, employeeID);
        ps.executeUpdate();

        ps.close();
        con.close();
    }
}