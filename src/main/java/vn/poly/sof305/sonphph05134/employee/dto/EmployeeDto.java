
package vn.poly.sof305.sonphph05134.employee.dto;

import java.time.LocalDate;


import vn.poly.sof305.sonphph05134.common.entities.Employee.Gender;

/**
 * @author Hoai Son
 *
 */
public class EmployeeDto {
	

    /*=====================================================================================================
     *===== PRIVATE PROPERTIES                                                                        =====
     *=====================================================================================================*/

    /**
     * SONPHPH05134_EMPLOYEE.ID
     */
    private Long id;

    /**
     * SONPHPH05134_EMPLOYEE.DEPARTMENT_ID
     */
    private Long departmentId;

    /**
     * SONPHPH05134_EMPLOYEE.DEPARTMENT.CODE
     */
    private String departmentCode;

    /**
     * SONPHPH05134_EMPLOYEE.DEPARTMENT.NAME
     */
    private String departmentName;

    /**
     * SONPHPH05134_EMPLOYEE.CODE
     */
    private String code;

    /**
     * SONPHPH05134_EMPLOYEE.NAME
     */
    private String name;

    /**
     * SONPHPH05134_EMPLOYEE.GENDER
     */
    private Gender gender;

    /**
     * SONPHPH05134_EMPLOYEE.BIRTHDAY
     */
    private LocalDate birthday;

    /**
     * SONPHPH05134_EMPLOYEE.PHOTO
     */
    private String photo;

    /**
     * SONPHPH05134_EMPLOYEE.EMAIL
     */
    private String email;

    /**
     * SONPHPH05134_EMPLOYEE.PHONE
     */
    private String phone;

    /**
     * SONPHPH05134_EMPLOYEE.SALARY
     */
    private Long salary;

    /**
     * SONPHPH05134_EMPLOYEE.NOTES
     */
    private String notes;

    /*=====================================================================================================
     *===== CONSTRUCTOR METHOD                                                                        =====
     *=====================================================================================================*/

    /**
     * Default constructor
     */
    public EmployeeDto() {
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
     * @return the departmentCode
     */
    public String getDepartmentCode() {
        return departmentCode;
    }

    /**
     * @param departmentCode the departmentCode to set
     */
    public void setDepartmentCode(String departmentCode) {
        this.departmentCode = departmentCode;
    }

    /**
     * @return the departmentName
     */
    public String getDepartmentName() {
        return departmentName;
    }

    /**
     * @param departmentName the departmentName to set
     */
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
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
}
