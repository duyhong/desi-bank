package com.desi.bank.springdata.dao.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "cities_tbl")
@Entity
public class CityEntity {
	private int cid;
	private String ccode;
	private String name;

	@Id
	@GeneratedValue
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Column(length=30)
	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	@Column(length=100)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "CityEntity [cid=" + cid + ", ccode=" + ccode + ", name=" + name + "]";
	}

}