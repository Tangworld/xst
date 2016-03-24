package com.xst.bean;

import javax.persistence.*;

/**
 * Created by sl on 16-3-22.
 */
@Entity
@Table(name = "mc_resources", schema = "", catalog = "db_magiccloud")
public class ResourcesEntity {
    private int rid;
    private String name;
    private String startCity;
    private String endCity;
    private Integer days;
    private String picture;
    private Double grade;
    private Integer price;
    private String sourceWeb;
    private String url;
    private Integer comments;

    @Id
    @Column(name = "rid")
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "start_city")
    public String getStartCity() {
        return startCity;
    }

    public void setStartCity(String startCity) {
        this.startCity = startCity;
    }

    @Basic
    @Column(name = "end_city")
    public String getEndCity() {
        return endCity;
    }

    public void setEndCity(String endCity) {
        this.endCity = endCity;
    }

    @Basic
    @Column(name = "days")
    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    @Basic
    @Column(name = "picture")
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Basic
    @Column(name = "grade")
    public Double getGrade() {
        return grade;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }

    @Basic
    @Column(name = "price")
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @Basic
    @Column(name = "source_web")
    public String getSourceWeb() {
        return sourceWeb;
    }

    public void setSourceWeb(String sourceWeb) {
        this.sourceWeb = sourceWeb;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "comments")
    public Integer getComments() {
        return comments;
    }

    public void setComments(Integer comments) {
        this.comments = comments;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ResourcesEntity that = (ResourcesEntity) o;

        if (rid != that.rid) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (startCity != null ? !startCity.equals(that.startCity) : that.startCity != null) return false;
        if (endCity != null ? !endCity.equals(that.endCity) : that.endCity != null) return false;
        if (days != null ? !days.equals(that.days) : that.days != null) return false;
        if (picture != null ? !picture.equals(that.picture) : that.picture != null) return false;
        if (grade != null ? !grade.equals(that.grade) : that.grade != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (sourceWeb != null ? !sourceWeb.equals(that.sourceWeb) : that.sourceWeb != null) return false;
        if (url != null ? !url.equals(that.url) : that.url != null) return false;
        if (comments != null ? !comments.equals(that.comments) : that.comments != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = rid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (startCity != null ? startCity.hashCode() : 0);
        result = 31 * result + (endCity != null ? endCity.hashCode() : 0);
        result = 31 * result + (days != null ? days.hashCode() : 0);
        result = 31 * result + (picture != null ? picture.hashCode() : 0);
        result = 31 * result + (grade != null ? grade.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (sourceWeb != null ? sourceWeb.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (comments != null ? comments.hashCode() : 0);
        return result;
    }
}
