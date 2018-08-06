package vn.poly.sof305.sonphph05134.department.dto;

/**
 * @author Hoai Son
 *
 */
public class DepartmentDto {

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134 DEPARTMENT.ID
     */
	private Long id;
    /**
     * SONPHPH05134 DEPARTMENT.CODE
     */
	private String code;
    /**
     * SONPHPH05134 DEPARTMENT.NAME
     */
	private String name;
    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
    /**
     * Default constructor
     */
	public DepartmentDto() {
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
	
}
