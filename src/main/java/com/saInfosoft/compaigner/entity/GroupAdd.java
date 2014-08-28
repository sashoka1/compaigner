package com.saInfosoft.compaigner.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "GroupMaster")
public class GroupAdd {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;

	@Column
	String name;

	@OneToMany(mappedBy = "group", cascade = CascadeType.REMOVE)
	List<MemberAdd> member;

	public GroupAdd() {
		super();
	}

	public List<MemberAdd> getMember() {
		return member;
	}

	public void setMember(List<MemberAdd> member) {
		this.member = member;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
