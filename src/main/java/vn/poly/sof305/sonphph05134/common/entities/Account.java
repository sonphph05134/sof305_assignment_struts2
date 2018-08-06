package vn.poly.sof305.sonphph05134.common.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Hoai Son
 *
 */
@Entity
@Table(name="sonphph05134_account", schema = "abc_group")
public class Account {

	
	 /**
    * SONPHPH05134_ACCOUNT.ID
    */
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name = "ID")
   private Long id;
   /**
    * SONPHPH05134_ACCOUNT.USERNAME
    */
   @Column(name = "username")
   private String username;
  /**
    * SONPHPH05134_ACCOUNT.PASSWORD
    */
   @Column(name="password")
   private String password;
   /**
    * SONPHPH05134_ACCOUNT.NAME
    */
   @Column(name = "NAME")
   private String name;

	/**
    * SONPHPH05134_ACCOUNT.TYPE
    */
   @Column(name = "TYPE")
   @Enumerated(EnumType.STRING)
   private Type type;


	/**
    * SONPHPH05134_ACCOUNT.DEL_FLG
    */
   @Column(name = "DEL_FLG")
   @Enumerated(EnumType.STRING)
   private DelFlg delFlg;

   /**
    * SONPHPH05134_RECORD.INS_DATE
    */
   @Column(name = "INS_DATE")
   private Date insDate;

   /**
    * SONPHPH05134_RECORD.UPD_DATE
    */
   @Column(name = "UPD_DATE")
   private Date updDate;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the type
	 */
	public Type getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(Type type) {
		this.type = type;
	}

	/**
	 * @return the delFlg
	 */
	public DelFlg getDelFlg() {
		return delFlg;
	}

	/**
	 * @param delFlg the delFlg to set
	 */
	public void setDelFlg(DelFlg delFlg) {
		this.delFlg = delFlg;
	}

	/**
	 * @return the insDate
	 */
	public Date getInsDate() {
		return insDate;
	}

	/**
	 * @param insDate the insDate to set
	 */
	public void setInsDate(Date insDate) {
		this.insDate = insDate;
	}

	/**
	 * @return the updDate
	 */
	public Date getUpdDate() {
		return updDate;
	}

	/**
	 * @param updDate the updDate to set
	 */
	public void setUpdDate(Date updDate) {
		this.updDate = updDate;
	}

	/*=====================================================================================================
    *===== ENUM CLASSES                                                                              =====
    *=====================================================================================================*/

   /**
    * TYPE Statistic Enum
    */
   public enum Type {

       ADMIN, EMPLOYEE, DIRECTOR,NOTSET;
   }

   /**
    * DEL_FLG Enum
    */
   public enum DelFlg {
   	
       UNDELETED, DELETED;
   }
}
