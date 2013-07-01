package com.cathysoft.phdeers.domains;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Version;

@Entity
@NamedQueries({
	@NamedQuery(name="byCode", query="FROM Region r WHERE r.dm=:dm")
})
public class Region {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Version
	private int version;
	
	@ManyToOne(optional=true)
	private Region belongsTo;
	
	@Column(length=6, unique=true)
	private String dm;
	
	@Column(length=30)
	private String mc;
	
	public Region() {
	}

	public Region(Region belongsTo, String dm, String mc) {
		this.belongsTo = belongsTo;
		this.dm = dm;
		this.mc = mc;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public Region getBelongsTo() {
		return belongsTo;
	}

	public void setBelongsTo(Region belongsTo) {
		this.belongsTo = belongsTo;
	}

	public String getDm() {
		return dm;
	}

	public void setDm(String dm) {
		this.dm = dm;
	}

	public String getMc() {
		return mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}
}
