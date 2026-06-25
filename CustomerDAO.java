package dao;

import beans.CustomerBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

    public void registerCustomer(CustomerBean customer) throws SQLException {
        String sql = "INSERT INTO Customer (UserName, Email, Password) VALUES (?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, customer.getUserName());
        ps.setString(2, customer.getEmail());
        ps.setString(3, customer.getPassword());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public CustomerBean loginCustomer(String email, String password) throws SQLException {
        String sql = "SELECT * FROM Customer WHERE Email=? AND Password=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        CustomerBean customer = null;

        if (rs.next()) {
            customer = new CustomerBean();
            customer.setCustomerID(rs.getInt("CustomerID"));
            customer.setUserName(rs.getString("UserName"));
            customer.setEmail(rs.getString("Email"));
            customer.setPassword(rs.getString("Password"));
        }

        rs.close();
        ps.close();
        con.close();

        return customer;
    }

    public List<CustomerBean> getAllCustomers() throws SQLException {
        List<CustomerBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Customer";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            CustomerBean c = new CustomerBean();
            c.setCustomerID(rs.getInt("CustomerID"));
            c.setUserName(rs.getString("UserName"));
            c.setEmail(rs.getString("Email"));
            c.setPassword(rs.getString("Password"));
            list.add(c);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public void deleteCustomer(int customerID) throws SQLException {
        String sql = "DELETE FROM Customer WHERE CustomerID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, customerID);
        ps.executeUpdate();

        ps.close();
        con.close();
    }
}