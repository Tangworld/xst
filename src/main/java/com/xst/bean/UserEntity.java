package com.xst.bean;

import javax.persistence.*;

/**
 * Created by tsj on 16-3-25.
 * 用户实体
 */

@Entity
@Table(name = "mc_user", schema = "", catalog = "db_magiccloud")
public class UserEntity {
    private int uid;
    private String userName;
    private String password;
    private int authority;
    private String telephone;
    private String email;

    @Id
    @Column(name = "uid")
    public int getUid() {
        return uid;
    }


    public void setUid(int uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "userName")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "authority")
    public int getAuthority() {
        return authority;
    }

    public void setAuthority(int authority) {
        this.authority = authority;
    }

    @Basic
    @Column(name = "telephone")
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
