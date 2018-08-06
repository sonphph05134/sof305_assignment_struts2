/**
 * 
 */
package vn.poly.sof305.sonphph05134.homepage.dto;

/**
 * @author Hoai Son
 *
 */
public class EmployeeDto {
	 /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134_HOMEPAGE_EMPLOYEE.ID
     */
    private Long id;
    /**
     * SONPHPH05134_HOMEPAGE_EMPLOYEE.CODE
     */
    private String code;

    /**
     * SONPHPH05134_HOMEPAGE_EMPLOYEE.NAME
     */
    private String name;
    /**
     * SONPHPH05134_HOMEPAGE_EMPLOYEE.PHOTO
     */
    private String photo;

	/*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
	/**
	 * Default Constructor
	 */
	public EmployeeDto() {
		super();
	}
	/*=====================================================================================================
     *===== GETTER & SETTER                                                                           =====
     *=====================================================================================================*/
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
	 * @return the code
	 */
	public String getCode() {
		return code;
	}


	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
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
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}
	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
    
}
