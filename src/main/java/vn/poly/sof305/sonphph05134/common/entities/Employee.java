package vn.poly.sof305.sonphph05134.common.entities;


import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

/**
 * Employee Entity
 * 
 * @author Hoai Son
 *
 */

@Entity
@Table(name = "SONPHPH05134_EMPLOYEE")
public class Employee {

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134_EMPLOYEE.ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    /**
     * SONPHPH05134_EMPLOYEE.DEPARTMENT_ID
     */
    @Column(name = "DEPARTMENT_ID")
    private Long departmentId;

    /**
     * SONPHPH05134_EMPLOYEE.CODE
     */
    @Column(name = "CODE")
    private String code;

    /**
     * SONPHPH05134_EMPLOYEE.NAME
     */
    @Column(name = "NAME")
    private String name;

    /**
     * SONPHPH05134_EMPLOYEE.GENDER
     */
    @Column(name = "GENDER")
    @Enumerated(EnumType.STRING)
    private Gender gender;

    /**
     * SONPHPH05134_EMPLOYEE.BIRTHDAY
     */
    
    @Column(name = "BIRTHDAY")
    //@Convert(converter = LocalDateConverter.class)
    private LocalDate birthday;

    /**
     * SONPHPH05134_EMPLOYEE.PHOTO
     */
    @Column(name = "PHOTO")
    private String photo;

    /**
     * SONPHPH05134_EMPLOYEE.EMAIL
     */
    @Column(name = "EMAIL")
    private String email;

    /**
     * SONPHPH05134_EMPLOYEE.PHONE
     */
    @Column(name = "PHONE")
    private String phone;

    /**
     * SONPHPH05134_EMPLOYEE.SALARY
     */
    @Column(name = "SALARY")
    private Long salary;

    /**
     * SONPHPH05134_EMPLOYEE.NOTES
     */
    @Column(name = "NOTES")
    private String notes;

    /**
     * SONPHPH05134_EMPLOYEE.DEL_FLG
     */
    @Column(name = "DEL_FLG")
    @Enumerated(EnumType.STRING)
    private DelFlg delFlg;

    /**
     * SONPHPH05134_EMPLOYEE.INS_DATE
     */
    @Column(name = "INS_DATE")
    private Date insDate;

    /**
     * SONPHPH05134_EMPLOYEE.UPD_DATE
     */
    @Column(name = "UPD_DATE")
    private Date updDate;

    /**
     * SONPHPH05134_EMPLOYEE.SONPHPH05134_DEPARTMENT
     */
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(insertable = false, updatable = false)
    private Department department;

    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/

    /**
     * Default constructor
     */
    public Employee() {
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
     * @return the departmentId
     */
    public Long getDepartmentId() {
        return departmentId;
    }

    /**
     * @param departmentId the departmentId to set
     */
    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
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
     * @return the gender
     */
    public Gender getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(Gender gender) {
        this.gender = gender;
    }

    /**
     * @return the birthday
     */
    public LocalDate getBirthday() {
        return birthday;
    }

    /**
     * @param birthday the birthday to set
     */
    
    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
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

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the salary
     */
    public Long getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(Long salary) {
        this.salary = salary;
    }

    /**
     * @return the notes
     */
    public String getNotes() {
        return notes;
    }

    /**
     * @param notes the notes to set
     */
    public void setNotes(String notes) {
        this.notes = notes;
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
     * @return the department
     */
    public Department getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    public void setDepartment(Department department) {
        this.department = department;
    }

    /*=====================================================================================================
     *===== ENUM CLASSES                                                                              =====
     *=====================================================================================================*/

    /**
     * GENDER Enum
     */
    public enum Gender {

        MALE, FEMALE, UNDEFINED;
    }

    /**
     * DEL_FLG Enum
     */
    public enum DelFlg {

        UNDELETED, DELETED;
    }


}
