package beans;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

public class RentalBean implements Serializable {
    private int rentalID;
    private int customerID;
    private int employeeID; //Handle primitive 0 if null, or change to Integer if needed
    private int equipmentID;
    private Date startDate;
    private Date endDate;
    private String status;
    private BigDecimal totalAmount;

    public RentalBean() {}

    public int getRentalID() { return rentalID; }
    public void setRentalID(int rentalID) { this.rentalID = rentalID; }

    public int getCustomerID() { return customerID; }
    public void setCustomerID(int customerID) { this.customerID = customerID; }

    public int getEmployeeID() { return employeeID; }
    public void setEmployeeID(int employeeID) { this.employeeID = employeeID; }

    public int getEquipmentID() { return equipmentID; }
    public void setEquipmentID(int equipmentID) { this.equipmentID = equipmentID; }

    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }

    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public BigDecimal getTotalAmount() { return totalAmount; }
    public void setTotalAmount(BigDecimal totalAmount) { this.totalAmount = totalAmount; }
}