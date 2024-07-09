package com.tourguides;

public class TourGuides {
	private String tid;
	private String tname;
	private String tnic;
	private String tage;
	private String taddress;
	private String tcountry;
	private String tphnum;
	
	public TourGuides(String tid, String tname, String tnic, String tage, String taddress, String tcountry,String tphnum) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.tnic = tnic;
		this.tage = tage;
		this.taddress = taddress;
		this.tcountry = tcountry;
		this.tphnum = tphnum;
	}

	public String getTid() {
		return tid;
	}

	public String getTname() {
		return tname;
	}

	public String getTnic() {
		return tnic;
	}

	public String getTage() {
		return tage;
	}

	public String getTaddress() {
		return taddress;
	}

	public String getTcountry() {
		return tcountry;
	}

	public String getTphnum() {
		return tphnum;
	}
	
}
