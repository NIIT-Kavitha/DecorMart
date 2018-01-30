package com.Model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Supplier")
public class Supplier implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	private int supId;
	private String supName;
	
	public Supplier() {
		
	}
	public int getSupId() {
		return supId;
	}
	public void setSupId(int supId) {
		this.supId = supId;
	}
	public String getSupName() {
		return supName;
	}
	public void setSupName(String supName) {
		this.supName = supName;
	}

}
