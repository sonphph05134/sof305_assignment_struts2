package vn.poly.sof305.sonphph05134.department.form;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

/**
 * @author Hoai Son
 *
 */
public class DepartmentCreateForm {
	
	@NotEmpty
	@Size(min=5, max=5)
	private String code;
	
	@NotEmpty
	@Size(max=255)
	private String name;

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
