package vn.poly.sof305.sonphph05134.auth.dto;

import vn.poly.sof305.sonphph05134.common.entities.Account.Type;

/**
 * @author Hoai Son
 *
 */
public class LoginDto {

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134 ACCOUNT.ID
     */
	private String id;
    /**
     * SONPHPH05134 ACCOUNT.USERNAME
     */
	private String username;
    /**
     * SONPHPH05134 ACCOUNT.PASSWORD
     */
	private String password;
    /**
     * SONPHPH05134 ACCOUNT.NAME
     */
	private String name;
    /**
     * SONPHPH05134 ACCOUNT.TYPE
     */
	private Type type;
    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
	/**
	 * Default Constructor
	 */
	public LoginDto() {
		super();
	}
    /*=====================================================================================================
     *===== GETTER & SETTER                                                                           =====
     *=====================================================================================================*/
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
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
	
	
}
