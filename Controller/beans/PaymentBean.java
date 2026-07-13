package beans;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

public class PaymentBean implements Serializable {
    private int paymentID;
    private int rentalID;
    private BigDecimal amount;
    private Date paymentDate;
    private String paymentMethod;

    public PaymentBean() {}

    public int getPaymentID() { return paymentID; }
    public void setPaymentID(int paymentID) { this.paymentID = paymentID; }

    public int getRentalID() { return rentalID; }
    public void setRentalID(int rentalID) { this.rentalID = rentalID; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    public Date getPaymentDate() { return paymentDate; }
    public void setPaymentDate(Date paymentDate) { this.paymentDate = paymentDate; }

    public String getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(String paymentMethod) { this.paymentMethod = paymentMethod; }
}