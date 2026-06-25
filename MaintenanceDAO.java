package dao;

import beans.MaintenanceBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MaintenanceDAO {

    public void addMaintenance(MaintenanceBean m) throws SQLException {
        String sql = "INSERT INTO Maintenance (EmployeeID, EquipmentID, Issue, RepairDate, Status) VALUES (?, ?, ?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, m.getEmployeeID());
        ps.setInt(2, m.getEquipmentID());
        ps.setString(3, m.getIssue());
        ps.setDate(4, m.getRepairDate());
        ps.setString(5, m.getStatus());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<MaintenanceBean> getAllMaintenance() throws SQLException {
        List<MaintenanceBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Maintenance";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            MaintenanceBean m = new MaintenanceBean();
            m.setMaintenanceID(rs.getInt("MaintenanceID"));
            m.setEmployeeID(rs.getInt("EmployeeID"));
            m.setEquipmentID(rs.getInt("EquipmentID"));
            m.setIssue(rs.getString("Issue"));
            m.setRepairDate(rs.getDate("RepairDate"));
            m.setStatus(rs.getString("Status"));
            list.add(m);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public void updateMaintenanceStatus(int maintenanceID, String status) throws SQLException {
        String sql = "UPDATE Maintenance SET Status=? WHERE MaintenanceID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, status);
        ps.setInt(2, maintenanceID);

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public void deleteMaintenance(int maintenanceID) throws SQLException {
        String sql = "DELETE FROM Maintenance WHERE MaintenanceID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, maintenanceID);
        ps.executeUpdate();

        ps.close();
        con.close();
    }
}