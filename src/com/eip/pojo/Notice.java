package com.eip.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Notice {
    private Integer id;
    private String username;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date date;
    private String title;
    private String content;
    private Integer qualify;

    public Notice() {
    }

    public Notice(Integer id, String username, Date date, String title, String content, Integer qualify) {
        this.id = id;
        this.username = username;
        this.date = date;
        this.title = title;
        this.content = content;
        this.qualify = qualify;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getQualify() {
        return qualify;
    }

    public void setQualify(Integer qualify) {
        this.qualify = qualify;
    }

    @Override
    public String toString() {
        return "Notice{" + "id=" + id + ", username='" + username + '\'' + ", date=" + date + ", title='" + title + '\'' + ", content='" + content + '\'' + ", qualify=" + qualify + '}';
    }
}
