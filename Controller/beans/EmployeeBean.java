/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;

public class EmployeeBean implements Serializable {
    private int employeeID;
    private String employeeName;
    private String email;
    private String password;
    private String position;
    private int supervisorID;

    public EmployeeBean() {}

    public int getEmployeeID() { return employeeID; }
    public void setEmployeeID(int employeeID) { this.employeeID = employeeID; }

    public String getEmployeeName() { return employeeName; }
    public void setEmployeeName(String employeeName) { this.employeeName = employeeName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getPosition() { return position; }
    public void setPosition(String position) { this.position = position; }

    public int getSupervisorID() { return supervisorID; }
    public void setSupervisorID(int supervisorID) { this.supervisorID = supervisorID; }
}
