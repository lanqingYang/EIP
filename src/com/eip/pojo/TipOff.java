package com.eip.pojo;

public class TipOff {
    private Integer id;
    private String name;
    private String address;
    private String reason;
    private Integer qualify;

    public TipOff() {
    }

    public TipOff(Integer id, String name, String address, String reason, Integer qualify) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.reason = reason;
        this.qualify = qualify;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public Integer getQualify() {
        return qualify;
    }

    public void setQualify(Integer qualify) {
        this.qualify = qualify;
    }

    @Override
    public String toString() {
        return "TipOff{" + "id=" + id + ", name='" + name + '\'' + ", address='" + address + '\'' + ", reason='" + reason + '\'' + ", qualify=" + qualify + '}';
    }
}
