package com.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Product {
	
	@Id
	@GeneratedValue
	private int pid;
	private String pname;
	private String pdesc;
	private Float price;
	private Integer stock;
	
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="catId")
	private Category pcategory;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="supId")
	private Supplier psupplier;
	
	@Transient
	private String productImage;

	public Product() {
		
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	public Category getPcategory() {
		return pcategory;
	}
	public void setPcategory(Category pcategory) {
		this.pcategory = pcategory;
	}
	public Supplier getPsupplier() {
		return psupplier;
	}
	public void setPsupplier(Supplier psupplier) {
		this.psupplier = psupplier;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}	
	
}
