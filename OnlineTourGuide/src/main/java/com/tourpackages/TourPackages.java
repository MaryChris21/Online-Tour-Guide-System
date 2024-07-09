package com.tourpackages;

public class TourPackages {
	private String pid;
	private String ptype;
	private String country;
	private String price;
	private String description;

	public TourPackages(String pid, String ptype, String country, String price, String description) {
		super();
		this.pid = pid;
		this.ptype = ptype;
		this.country = country;
		this.price = price;
		this.description = description;
	}

	public String getPid() {
		return pid;
	}

	public String getPtype() {
		return ptype;
	}

	public String getCountry() {
		return country;
	}

	public String getPrice() {
		return price;
	}

	public String getDescription() {
		return description;
	}


}
