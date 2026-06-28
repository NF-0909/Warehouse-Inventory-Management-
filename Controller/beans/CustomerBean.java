package beans;

import java.io.Serializable;

public class CustomerBean implements Serializable {
    private int customerID;
    private String userName;
    private String email;
    private String password;

    public CustomerBean() {}

    public int getCustomerID() { return customerID; }
    public void setCustomerID(int customerID) { this.customerID = customerID; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}