package vn.poly.sof305.sonphph05134.record.form;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import vn.poly.sof305.sonphph05134.common.entities.Record.Type;

/**
 * @author Hoai Son
 *
 */
public class RecordCreateForm {
    /**
     * SONPHPH05134_RECORD_EMPLOYEE.ID
     */
    @NotNull
    private Long employeeId;

    /**
     * SONPHPH05134_RECORD.CODE
     */
    @NotEmpty
    @Size(min= 6, max = 6)
    private String code;

    /**
     * SONPHPH05134_RECORD.TYPE
     */
    @NotNull
    private Type type;
    /**
     * SONPHPH05134_RECORD.REASON
     */
    @NotNull
    private String reason;
	/**
	 * @return the employeeId
	 */
	public Long getEmployeeId() {
		return employeeId;
	}
	/**
	 * @param employeeId the employeeId to set
	 */
	public void setEmployeeId(Long employeeId) {
		this.employeeId = employeeId;
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
	 * @return the reason
	 */
	public String getReason() {
		return reason;
	}
	/**
	 * @param reason the reason to set
	 */
	public void setReason(String reason) {
		this.reason = reason;
	}
    
    
}
