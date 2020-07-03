package kr.co.domain;

import java.io.Serializable;

public class DepartDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String did;
	private String dname;
	
	public DepartDTO() {
	}
	
	public DepartDTO(String did, String dname) {
		super();
		this.did = did;
		this.dname = dname;
	}

	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
