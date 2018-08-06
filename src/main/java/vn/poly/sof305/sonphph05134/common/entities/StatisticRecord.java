package vn.poly.sof305.sonphph05134.common.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Hoai Son
 *
 */
@Entity
@Table(name = "SONPHPH05134_RECORD")
public class StatisticRecord {

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134_STATISTICRECORD.ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    /**
     * SONPHPH05134_STATISTICRECORD.EMPLOYEE_ID
     */
    @Column(name = "EMPLOYEE_ID")
    private Long employeeId;
    /**
     * SONPHPH05134_STATISTICRECORD.CODE
     */
    @Column(name = "CODE")
    private String code;
   /**
     * SONPHPH05134_STATISTICRECORD.TYPE
     */
    @Column(name = "TYPE")
    @Enumerated(EnumType.STRING)
    private Type type;

    /**
     * SONPHPH05134_RECORD.REASON
     */
    @Column(name = "REASON")
    private String reason;

    
	/**
     * SONPHPH05134_STATISTICRECORD.DEL_FLG
     */
    @Column(name = "DEL_FLG")
    @Enumerated(EnumType.STRING)
    private DelFlg delFlg;

    /**
     * SONPHPH05134_STATISTICRECORD.INS_DATE
     */
    @Column(name = "INS_DATE")
    private Date insDate;

    /**
     * SONPHPH05134_STATISTICRECORD.UPD_DATE
     */
    @Column(name = "UPD_DATE")
    private Date updDate;

    /**
     * SONPHPH05134_STATISTICRECORD.SONPHPH05134_EMPLOYEE
     */
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(insertable = false, updatable = false)
    private Employee employee;
    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
	/**
	 * Default Constructor
	 */
	public StatisticRecord() {
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

	/**
	 * @return the employee
	 */
	public Employee getEmployee() {
		return employee;
	}

	/**
	 * @param employee the employee to set
	 */
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
    
	/*=====================================================================================================
     *===== ENUM CLASSES                                                                              =====
     *=====================================================================================================*/

	/**
     * TYPE Statistic Enum
     */
    public enum Type {

        TT, KL, NONE;
    }

    /**
     * DEL_FLG Enum
     */
    public enum DelFlg {
    	
        UNDELETED, DELETED;
    }
    
    
}

