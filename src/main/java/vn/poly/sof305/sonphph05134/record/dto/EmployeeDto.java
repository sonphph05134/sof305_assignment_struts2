package vn.poly.sof305.sonphph05134.record.dto;

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

    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
	/**
	 * 
	 */
	public EmployeeDto() {
		super();
	}
    /*=====================================================================================================
     *===== GETTER & SETTER                                                                           =====
     *=====================================================================================================*/


	/**
	 * @return the employeeId
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

}
