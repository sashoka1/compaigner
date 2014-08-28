package  com.saInfosoft.compaigner.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name="memberMaster")
public class MemberAdd {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	
	@Column
	String firstName;
	
	@Column
	String lastName;
	
	@Column
	String mobile;
	
	@ManyToOne()
	@JoinColumn(name="Group_ID")
	GroupAdd group;
	
	@Column
	String comment;
	
	@Column
	String emailId;
	
	public MemberAdd() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public GroupAdd getGroup() {
		return group;
	}

	public void setGroup(GroupAdd group) {
		this.group = group;
	}

}
