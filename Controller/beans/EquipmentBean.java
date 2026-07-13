package beans;

import java.io.Serializable;
import java.util.logging.Logger;
import java.math.BigDecimal;

public class EquipmentBean implements Serializable {
    private int equipmentID;
    private String equipmentName;
    private String equipmentType;
    private String conditionStatus;
    private BigDecimal pricePerDay;
    private boolean availabilityStatus;

    public EquipmentBean() {}

    public int getEquipmentID() { return equipmentID; }
    public void setEquipmentID(int equipmentID) { this.equipmentID = equipmentID; }

    public String getEquipmentName() { return equipmentName; }
    public void setEquipmentName(String equipmentName) { this.equipmentName = equipmentName; }

    public String getEquipmentType() { return equipmentType; }
    public void setEquipmentType(String equipmentType) { this.equipmentType = equipmentType; }

    public String getConditionStatus() { return conditionStatus; }
    public void setConditionStatus(String conditionStatus) { this.conditionStatus = conditionStatus; }

    public BigDecimal getPricePerDay() { return pricePerDay; }
    public void setPricePerDay(BigDecimal pricePerDay) { this.pricePerDay = pricePerDay; }

    public boolean isAvailabilityStatus() { return availabilityStatus; }
    public void setAvailabilityStatus(boolean availabilityStatus) { this.availabilityStatus = availabilityStatus; }
}