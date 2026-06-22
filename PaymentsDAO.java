import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentsDAO {
    private Connection conn;

    // Constructor: open connection
    public PaymentsDAO(Connection conn) {
        this.conn = conn;
    }

    // CREATE: add new payment
    public void addPayment(Payment payment) throws SQLException {
        String sql = "INSERT INTO Payments (RentalID, Amount, PaymentDate, PaymentMethod) VALUES (?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, payment.getRentalID());
        stmt.setDouble(2, payment.getAmount());
        stmt.setDate(3, payment.getPaymentDate());
        stmt.setString(4, payment.getPaymentMethod());
        stmt.executeUpdate();
    }

    // READ: get payment by ID
    public Payment getPaymentById(int id) throws SQLException {
        String sql = "SELECT * FROM Payments WHERE PaymentID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Payment(
                rs.getInt("PaymentID"),
                rs.getInt("RentalID"),
                rs.getDouble("Amount"),
                rs.getDate("PaymentDate"),
                rs.getString("PaymentMethod")
            );
        }
        return null;
    }

    // READ: get all payments
    public List<Payment> getAllPayments() throws SQLException {
        List<Payment> list = new ArrayList<>();
        String sql = "SELECT * FROM Payments";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            list.add(new Payment(
                rs.getInt("PaymentID"),
                rs.getInt("RentalID"),
                rs.getDouble("Amount"),
                rs.getDate("PaymentDate"),
                rs.getString("PaymentMethod")
            ));
        }
        return list;
    }

    // READ: get payments by customer (join Rentals)
    public List<Payment> getPaymentsByCustomer(int customerId) throws SQLException {
        List<Payment> list = new ArrayList<>();
        String sql = "SELECT p.* FROM Payments p JOIN Rentals r ON p.RentalID = r.RentalID WHERE r.CustomerID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, customerId);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            list.add(new Payment(
                rs.getInt("PaymentID"),
                rs.getInt("RentalID"),
                rs.getDouble("Amount"),
                rs.getDate("PaymentDate"),
                rs.getString("PaymentMethod")
            ));
        }
        return list;
    }

    // UPDATE: change payment details
    public void updatePayment(Payment payment) throws SQLException {
        String sql = "UPDATE Payments SET RentalID=?, Amount=?, PaymentDate=?, PaymentMethod=? WHERE PaymentID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, payment.getRentalID());
        stmt.setDouble(2, payment.getAmount());
        stmt.setDate(3, payment.getPaymentDate());
        stmt.setString(4, payment.getPaymentMethod());
        stmt.setInt(5, payment.getPaymentID());
        stmt.executeUpdate();
    }

    // DELETE: remove payment
    public void deletePayment(int id) throws SQLException {
        String sql = "DELETE FROM Payments WHERE PaymentID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
