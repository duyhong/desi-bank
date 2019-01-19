package com.desi.bank.common.dao.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="optcode_tbl")
public class OptCode {
	private int id;
	private int optcode;
	private String userid;
	private Timestamp timestamp;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOptcode() {
		return optcode;
	}
	public void setOptcode(int optcode) {
		this.optcode = optcode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	@Override
	public String toString() {
		return "OptCode [id=" + id + ", optcode=" + optcode + ", userid=" + userid + ", timestamp=" + timestamp + "]";
	}
}
