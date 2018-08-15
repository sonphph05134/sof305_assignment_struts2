package vn.poly.sof305.sonphph05134.record.dto;

import java.util.Date;

import vn.poly.sof305.sonphph05134.common.entities.Record;
import vn.poly.sof305.sonphph05134.common.entities.Record.Type;

/**
 * @author Hoai Son
 *
 */
public class RecordDto {
	

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134 RECORD.ID
     */
	private Long id;
	
    /**
     * SONPHPH05134_RECORD.EMPLOYEE_ID
     */
    private Long employeeId;
    /**
     * SONPHPH05134_RECORD.EMPLOYEE_CODE
     */
    private String employeeCode;

    /**
     * SONPHPH05134_RECORD.EMPLOYEE_NAME
     */
    private String employeeName;

    /**
     * SONPHPH05134 RECORD.CODE
     */
	private String code;
    /**
     * SONPHPH05134 RECORD.TYPE
     */
	private Type type;
    /**
     * SONPHPH05134 RECORD.REASON
     */
	private String reason;

	
    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
    /**
     * Default constructor
     */
	public RecordDto() {
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
	 * @return the employeeCode
	 */
	public String getEmployeeCode() {
		return employeeCode;
	}


	/**
	 * @param employeeCode the employeeCode to set
	 */
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}


	/**
	 * @return the employeeName
	 */
	public String getEmployeeName() {
		return employeeName;
	}


	/**
	 * @param employeeName the employeeName to set
	 */
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
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
