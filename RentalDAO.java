import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RentalDAO {
    private Connection conn;

    // Constructor: open connection
    public RentalDAO(Connection conn) {
        this.conn = conn;
    }

    // CREATE: add new rental
    public void addRental(Rental rental) throws SQLException {
        String sql = "INSERT INTO Rentals (CustomerID, EmployeeID, EquipmentID, StartDate, EndDate, Status) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, rental.getCustomerID());
        stmt.setInt(2, rental.getEmployeeID());
        stmt.setInt(3, rental.getEquipmentID());
        stmt.setDate(4, rental.getStartDate());
        stmt.setDate(5, rental.getEndDate());
        stmt.setString(6, rental.getStatus());
        stmt.executeUpdate();
    }

    // READ: get rental by ID
    public Rental getRentalById(int id) throws SQLException {
        String sql = "SELECT * FROM Rentals WHERE RentalID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Rental(
                rs.getInt("RentalID"),
                rs.getInt("CustomerID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getDate("StartDate"),
                rs.getDate("EndDate"),
                rs.getString("Status")
            );
        }
        return null;
    }

    // READ: get all rentals
    public List<Rental> getAllRentals() throws SQLException {
        List<Rental> list = new ArrayList<>();
        String sql = "SELECT * FROM Rentals";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            list.add(new Rental(
                rs.getInt("RentalID"),
                rs.getInt("CustomerID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getDate("StartDate"),
                rs.getDate("EndDate"),
                rs.getString("Status")
            ));
        }
        return list;
    }

    // READ: rental history for a customer
    public List<Rental> getRentalHistoryByCustomer(int customerId) throws SQLException {
        List<Rental> list = new ArrayList<>();
        String sql = "SELECT * FROM Rentals WHERE CustomerID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, customerId);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            list.add(new Rental(
                rs.getInt("RentalID"),
                rs.getInt("CustomerID"),
                rs.getInt("EmployeeID"),
                rs.getInt("EquipmentID"),
                rs.getDate("StartDate"),
                rs.getDate("EndDate"),
                rs.getString("Status")
            ));
        }
        return list;
    }

    // UPDATE: change rental status
    public void updateRentalStatus(int rentalId, String status) throws SQLException {
        String sql = "UPDATE Rentals SET Status=? WHERE RentalID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, status);
        stmt.setInt(2, rentalId);
        stmt.executeUpdate();
    }

    // DELETE: remove rental
    public void deleteRental(int id) throws SQLException {
        String sql = "DELETE FROM Rentals WHERE RentalID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
