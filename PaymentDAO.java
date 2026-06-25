package dao;

import beans.PaymentBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {

    public void addPayment(PaymentBean payment) throws SQLException {
        String sql = "INSERT INTO Payments (RentalID, Amount, PaymentDate, PaymentMethod) VALUES (?, ?, ?, ?)";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, payment.getRentalID());
        ps.setBigDecimal(2, payment.getAmount());
        ps.setDate(3, payment.getPaymentDate());
        ps.setString(4, payment.getPaymentMethod());

        ps.executeUpdate();
        ps.close();
        con.close();
    }

    public List<PaymentBean> getAllPayments() throws SQLException {
        List<PaymentBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Payments";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            PaymentBean p = new PaymentBean();
            p.setPaymentID(rs.getInt("PaymentID"));
            p.setRentalID(rs.getInt("RentalID"));
            p.setAmount(rs.getBigDecimal("Amount"));
            p.setPaymentDate(rs.getDate("PaymentDate"));
            p.setPaymentMethod(rs.getString("PaymentMethod"));
            list.add(p);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }

    public List<PaymentBean> getPaymentsByRental(int rentalID) throws SQLException {
        List<PaymentBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Payments WHERE RentalID=?";

        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, rentalID);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            PaymentBean p = new PaymentBean();
            p.setPaymentID(rs.getInt("PaymentID"));
            p.setRentalID(rs.getInt("RentalID"));
            p.setAmount(rs.getBigDecimal("Amount"));
            p.setPaymentDate(rs.getDate("PaymentDate"));
            p.setPaymentMethod(rs.getString("PaymentMethod"));
            list.add(p);
        }

        rs.close();
        ps.close();
        con.close();

        return list;
    }
}