import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MaintenanceDAO {
    private Connection conn;

    // Constructor: open connection
    public MaintenanceDAO(Connection conn) {
        this.conn = conn;
    }

    // CREATE: add new maintenance record
    public void addMaintenance(Maintenance maintenance) throws SQLException {
        String sql = "INSERT INTO Maintenance (EmployeeID, EquipmentID, Issue, RepairDate, Status) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, maintenance.getEmployeeID());
        stmt.setInt(2, maintenance.getEquipmentID());
        stmt.setString(3, maintenance.getIssue());
        stmt.setDate(4, maintenance.getRepairDate());
        stmt.setString(5, maintenance.getStatus());
        stmt.executeUpdate();
    }

    // READ: get maintenance by ID
    public Maintenance getMaintenanceById(int id) throws SQLException {
        String sql = "SELECT * FROM Maintenance WHERE MaintenanceID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Maintenance(
                rs.getInt("MaintenanceID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getString("Issue"),
                rs.getDate("RepairDate"),
                rs.getString("Status")
            );
        }
        return null;
    }

    // READ: get all maintenance records
    public List<Maintenance> getAllMaintenance() throws SQLException {
        List<Maintenance> list = new ArrayList<>();
        String sql = "SELECT * FROM Maintenance";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            list.add(new Maintenance(
                rs.getInt("MaintenanceID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getString("Issue"),
                rs.getDate("RepairDate"),
                rs.getString("Status")
            ));
        }
        return list;
    }

    // READ: get maintenance records for equipment
    public List<Maintenance> getMaintenanceByEquipment(int equipmentId) throws SQLException {
        List<Maintenance> list = new ArrayList<>();
        String sql = "SELECT * FROM Maintenance WHERE EquipmentID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, equipmentId);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            list.add(new Maintenance(
                rs.getInt("MaintenanceID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getString("Issue"),
                rs.getDate("RepairDate"),
                rs.getString("Status")
            ));
        }
        return list;
    }

    // UPDATE: change maintenance status
    public void updateMaintenanceStatus(int maintenanceId, String status) throws SQLException {
        String sql = "UPDATE Maintenance SET Status=? WHERE MaintenanceID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, status);
        stmt.setInt(2, maintenanceId);
        stmt.executeUpdate();
    }

    // DELETE: remove maintenance record
    public void deleteMaintenance(int id) throws SQLException {
        String sql = "DELETE FROM Maintenance WHERE MaintenanceID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
