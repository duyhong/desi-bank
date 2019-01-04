package com.desi.bank.common.dao.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * dd
 * @author VC1
 *
 */
@Entity
@Table(name="user_login_tbl")
public class Login {
	private String loginid;
	private String name;
    private String password;
	private String role;
	private String locked;
	private int noOfAttempt;
	private Timestamp llt;
	private String email;
	private Date passwordExpire;
	private List<CustomerQuestionAnswer> customerQuestionAnswers;
	
	
	@OneToMany(mappedBy="login",cascade=CascadeType.ALL) // login is an attribute present inside CustomerQuestionAnswer entity
	public List<CustomerQuestionAnswer> getCustomerQuestionAnswers() {
		return customerQuestionAnswers;
	}

	public void setCustomerQuestionAnswers(List<CustomerQuestionAnswer> customerQuestionAnswers) {
		this.customerQuestionAnswers = customerQuestionAnswers;
	}

	public Date getPasswordExpire() {
		return passwordExpire;
	}

	public void setPasswordExpire(Date passwordExpire) {
		this.passwordExpire = passwordExpire;
	}

	@Transient
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Timestamp getLlt() {
		return llt;
	}

	public void setLlt(Timestamp llt) {
		this.llt = llt;
	}

	public int getNoOfAttempt() {
		return noOfAttempt;
	}

	public void setNoOfAttempt(int noOfAttempt) {
		this.noOfAttempt = noOfAttempt;
	}

	@Id
	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getLocked() {
		return locked;
	}

	public void setLocked(String locked) {
		this.locked = locked;
	}

	@Override
	public String toString() {
		return "Login [loginid=" + loginid + ", name=" + name + ", password="
				+ password + ", role=" + role + ", locked=" + locked + "]";
	}
	

}
