package com.cathysoft.phdeers.domains;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

@Entity
public class Examinee {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(length=20, nullable=false)
	private String xm;
	
	@Column(length=40, nullable=false)
	private String xmpy;
	
	@Column(length=2)
	private String zjlx;
	
	@Column(length=18, nullable=false, unique=true)
	private String zjhm;
	
	@Column(length=8)
	private String csrq;
	
	@Column(length=1)
	private String xbm;
	
	@Column(length=2)
	private String mzm;
	
	@Column(length=1)
	private String hfm;
	
	@Column(length=2)
	private String zzmmm;
	
	@Column(length=1)
	private String xyjrm;
	
	@Column(length=6)
	private String csdm;
	
	@Column(length=6)
	private String jgdm;
	
	@Column(length=6)
	private String hkszdm;
	
	@Column(length=6)
	private String daszdm;
	
	@Column(length=60, nullable=false)
	private String daszdw;
	
	@Column(length=80, nullable=false)
	private String daszdwdz;
	
	@Column(length=6)
	private String daszdwyzbm;
	
	@Column(length=2)
	private String xxgzdwxz;
	
	@Column(length=60)
	private String xxgzdw;
	
	@Version
	private int version;
}
