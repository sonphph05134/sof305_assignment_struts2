package vn.poly.sof305.sonphph05134.common.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Hoai Son
 *
 */
@Entity()
@Table(name = "SONPHPH05134_DEPARTMENT")
public class Department {

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/
    
    /**
     * SONPHPH05134_DEPARTMENT.ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;
    
    /**
     * SONPHPH05134_DEPARTMENT.code
     */
    @Column(name ="CODE", unique=true)
    private String code;
    
    /**
     * SONPHPH05134_DEPARTMENT.name
     */
    @Column(name = "NAME", unique=true)
    private String name;
    
    /**
     * SONPHPH05134_DEPARTMENT.DEL_FLG
     */
    @Column(name = "DEL_FLG")
    @Enumerated(EnumType.STRING)
    private DelFlg delFlg;
    
    /**
     * SONPHPH05134_DEPARTMENT.INS_DATE
     */
    @Column(name = "INS_DATE")
    private Date insDate;
    
    /**
     * SONPHPH05134_DEPARTMENT.UPD_DATE
     */
    @Column(name = "UPD_DATE")
    private Date updDate;
    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/
    /*
     * Default constructor
     */
    public Department() {
        
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
    /*
     * DEL_FLG Enum
     */
    public enum DelFlg {
        UNDELETED, DELETED;
    }
}
