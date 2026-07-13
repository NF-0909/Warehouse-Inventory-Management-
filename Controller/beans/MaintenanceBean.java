package beans;

import java.io.Serializable;
import java.sql.Date;

public class MaintenanceBean implements Serializable {
    private int maintenanceID;
    private int employeeID;
    private int equipmentID;
    private String issue;
    private Date repairDate;
    private String status;

    public MaintenanceBean() {}

    public int getMaintenanceID() { return maintenanceID; }
    public void setMaintenanceID(int maintenanceID) { this.maintenanceID = maintenanceID; }

    public int getEmployeeID() { return employeeID; }
    public void setEmployeeID(int employeeID) { this.employeeID = employeeID; }

    public int getEquipmentID() { return equipmentID; }
    public void setEquipmentID(int equipmentID) { this.equipmentID = equipmentID; }

    public String getIssue() { return issue; }
    public void setIssue(String issue) { this.issue = issue; }

    public Date getRepairDate() { return repairDate; }
    public void setRepairDate(Date repairDate) { this.repairDate = repairDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}