package com.xst.bean;

import javax.persistence.*;

/**
 * Created by tsj on 16-3-28.
 */
@Entity
@Table(name = "mc_webs", schema = "", catalog = "db_magiccloud")
public class WebEntity {
    private int wid;
    private String webname;
    private String url;

    @Id
    @Column(name = "wid")
    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    @Basic
    @Column(name = "webname")
    public String getWebname() {
        return webname;
    }

    public void setWebname(String webname) {
        this.webname = webname;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
