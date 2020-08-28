package com.eip.pojo;

public class Highschool {
    private Integer HSId;
    private String HSName;
    private String HSAddress;
    private String HSDescription;
    private Integer HSStuffs;
    private Integer HSTeachers;
    private Integer HSCapacity;
    private Integer HSCapacityYears;
    private Float HSPointX;
    private Float HSPointY;

    public Highschool() {
    }

    public Highschool(Integer HSId, String HSName, String HSAddress, String HSDescription, Integer HSStuffs, Integer HSTeachers, Integer HSCapacity, Integer HSCapacityYears, Float HSPointX, Float HSPointY) {
        this.HSId = HSId;
        this.HSName = HSName;
        this.HSAddress = HSAddress;
        this.HSDescription = HSDescription;
        this.HSStuffs = HSStuffs;
        this.HSTeachers = HSTeachers;
        this.HSCapacity = HSCapacity;
        this.HSCapacityYears = HSCapacityYears;
        this.HSPointX = HSPointX;
        this.HSPointY = HSPointY;
    }

    public Integer getHSId() {
        return HSId;
    }

    public void setHSId(Integer HSId) {
        this.HSId = HSId;
    }

    public String getHSName() {
        return HSName;
    }

    public void setHSName(String HSName) {
        this.HSName = HSName;
    }

    public String getHSAddress() {
        return HSAddress;
    }

    public void setHSAddress(String HSAddress) {
        this.HSAddress = HSAddress;
    }

    public String getHSDescription() {
        return HSDescription;
    }

    public void setHSDescription(String HSDescription) {
        this.HSDescription = HSDescription;
    }

    public Integer getHSStuffs() {
        return HSStuffs;
    }

    public void setHSStuffs(Integer HSStuffs) {
        this.HSStuffs = HSStuffs;
    }

    public Integer getHSTeachers() {
        return HSTeachers;
    }

    public void setHSTeachers(Integer HSTeachers) {
        this.HSTeachers = HSTeachers;
    }

    public Integer getHSCapacity() {
        return HSCapacity;
    }

    public void setHSCapacity(Integer HSCapacity) {
        this.HSCapacity = HSCapacity;
    }

    public Integer getHSCapacityYears() {
        return HSCapacityYears;
    }

    public void setHSCapacityYears(Integer HSCapacityYears) {
        this.HSCapacityYears = HSCapacityYears;
    }

    public Float getHSPointX() {
        return HSPointX;
    }

    public void setHSPointX(Float HSPointX) {
        this.HSPointX = HSPointX;
    }

    public Float getHSPointY() {
        return HSPointY;
    }

    public void setHSPointY(Float HSPointY) {
        this.HSPointY = HSPointY;
    }

    @Override
    public String toString() {
        return "HighschoolMapper{" + "HSId=" + HSId + ", HSName='" + HSName + '\'' + ", HSAddress='" + HSAddress + '\'' + ", HSDescription='" + HSDescription + '\'' + ", HSStuffs=" + HSStuffs + ", HSTeachers=" + HSTeachers + ", HSCapacity=" + HSCapacity + ", HSCapacityYears=" + HSCapacityYears + ", HSPointX=" + HSPointX + ", HSPointY=" + HSPointY + '}';
    }
}
