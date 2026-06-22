import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EquipmentDAO {
    private Connection conn;

    // Constructor: open connection
    public EquipmentDAO(Connection conn) {
        this.conn = conn;
    }

    // CREATE: add new equipment
    public void addEquipment(Equipment equipment) throws SQLException {
        String sql = "INSERT INTO Equipment (EquipmentName, EquipmentType, Condition, PricePerDay, AvailabilityStatus) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, equipment.getEquipmentName());
        stmt.setString(2, equipment.getEquipmentType());
        stmt.setString(3, equipment.getCondition());
        stmt.setDouble(4, equipment.getPricePerDay());
        stmt.setBoolean(5, equipment.isAvailable());
        stmt.executeUpdate();
    }

    // READ: get equipment by ID
    public Equipment getEquipmentById(int id) throws SQLException {
        String sql = "SELECT * FROM Equipment WHERE EquipmentID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Equipment(
                rs.getInt("EquipmentID"),
                rs.getString("EquipmentName"),
                rs.getString("EquipmentType"),
                rs.getString("Condition"),
                rs.getDouble("PricePerDay"),
                rs.getBoolean("AvailabilityStatus")
            );
        }
        return null;
    }

    // READ: get all equipment
    public List<Equipment> getAllEquipment() throws SQLException {
        List<Equipment> list = new ArrayList<>();
        String sql = "SELECT * FROM Equipment";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            list.add(new Equipment(
                rs.getInt("EquipmentID"),
                rs.getString("EquipmentName"),
                rs.getString("EquipmentType"),
                rs.getString("Condition"),
                rs.getDouble("PricePerDay"),
                rs.getBoolean("AvailabilityStatus")
            ));
        }
        return list;
    }

    // UPDATE: change equipment details
    public void updateEquipment(Equipment equipment) throws SQLException {
        String sql = "UPDATE Equipment SET EquipmentName=?, EquipmentType=?, Condition=?, PricePerDay=?, AvailabilityStatus=? WHERE EquipmentID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, equipment.getEquipmentName());
        stmt.setString(2, equipment.getEquipmentType());
        stmt.setString(3, equipment.getCondition());
        stmt.setDouble(4, equipment.getPricePerDay());
        stmt.setBoolean(5, equipment.isAvailable());
        stmt.setInt(6, equipment.getEquipmentID());
        stmt.executeUpdate();
    }

    // DELETE: remove equipment
    public void deleteEquipment(int id) throws SQLException {
        String sql = "DELETE FROM Equipment WHERE EquipmentID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
