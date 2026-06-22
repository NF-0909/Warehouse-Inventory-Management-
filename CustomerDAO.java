import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
    private Connection conn;

    // Constructor: open connection
    public CustomerDAO(Connection conn) {
        this.conn = conn;
    }

    // CREATE: register new customer
    public void addCustomer(Customer customer) throws SQLException {
        String sql = "INSERT INTO Customer (UserName, Email, Password) VALUES (?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, customer.getUserName());
        stmt.setString(2, customer.getEmail());
        stmt.setString(3, customer.getPassword()); // ideally hashed
        stmt.executeUpdate();
    }

    // READ: get customer by ID
    public Customer getCustomerById(int id) throws SQLException {
        String sql = "SELECT * FROM Customer WHERE CustomerID = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Customer(
                rs.getInt("CustomerID"),
                rs.getString("UserName"),
                rs.getString("Email"),
                rs.getString("Password")
            );
        }
        return null;
    }

    // READ: login check
    public Customer login(String email, String password) throws SQLException {
        String sql = "SELECT * FROM Customer WHERE Email = ? AND Password = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, email);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            return new Customer(
                rs.getInt("CustomerID"),
                rs.getString("UserName"),
                rs.getString("Email"),
                rs.getString("Password")
            );
        }
        return null; // login failed
    }

    // READ: get all customers
    public List<Customer> getAllCustomers() throws SQLException {
        List<Customer> list = new ArrayList<>();
        String sql = "SELECT * FROM Customer";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            list.add(new Customer(
                rs.getInt("CustomerID"),
                rs.getString("UserName"),
                rs.getString("Email"),
                rs.getString("Password")
            ));
        }
        return list;
    }

    // UPDATE: change customer details
    public void updateCustomer(Customer customer) throws SQLException {
        String sql = "UPDATE Customer SET UserName=?, Email=?, Password=? WHERE CustomerID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, customer.getUserName());
        stmt.setString(2, customer.getEmail());
        stmt.setString(3, customer.getPassword());
        stmt.setInt(4, customer.getCustomerID());
        stmt.executeUpdate();
    }

    // DELETE: remove customer
    public void deleteCustomer(int id) throws SQLException {
        String sql = "DELETE FROM Customer WHERE CustomerID=?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}
