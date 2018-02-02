package com.Model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Supplier")
public class Supplier implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	private int supId;
	private String supName;
	
	@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="psupplier")
	private Set<Product> products=new HashSet<Product>(0);
	
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
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
