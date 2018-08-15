package vn.poly.sof305.sonphph05134.employee.action;

//import java.io.File;
//import javax.servlet.http.HttpServletRequest;
//import org.apache.commons.io.FileUtils;
//import org.apache.struts2.interceptor.ServletRequestAware;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;
import vn.poly.sof305.sonphph05134.employee.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.employee.form.EmployeeCreateForm;
import vn.poly.sof305.sonphph05134.employee.service.EmployeeService;
import vn.poly.sof305.sonphph05134.employee.dto.DepartmentDto;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/employee")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/employee/createEmployee.jsp"),
                @Result(name = "success", location = "/employee", type = "redirect")
        }
)
public class CreateEmpoyeeAction extends ActionSupport implements ModelDriven<EmployeeCreateForm> {
    //
    private final EmployeeService employeeService;

    @Autowired
    public CreateEmpoyeeAction(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    private EmployeeCreateForm employeeCreateForm = new EmployeeCreateForm();
    private EmployeeDto employeeDto = new EmployeeDto();
    private List<DepartmentDto> departmentDto;

    @Action("createEmployee")
    public String execute() throws Exception {
        return INPUT;
    }

    @Action("createEmployeeProcess")
    public String insertEmployee() throws Exception {

        if (employeeCreateForm != null) {
            if (!validateForm()) {
                return INPUT;
            }
            // Cast Form to DTO
            EmployeeDto employeeDto = (EmployeeDto) DataTransformUtil.transform(employeeCreateForm, EmployeeDto.class);
            if (employeeService.create(employeeDto) != null) {
                return SUCCESS;
            } else {
                addFieldError("code", getText("employee.create.code.error.notUnique"));
                return INPUT;
            }

        } else return INPUT;


    }
    private boolean validateForm() {
        boolean checkForm = true;

        //Check code empty
        if (StringUtils.isBlank(employeeCreateForm.getCode())) {
            addFieldError("code", getText("department.create.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(employeeCreateForm.getCode()) < 1 || StringUtils.length(employeeCreateForm.getCode()) > 6) {
            addFieldError("code", getText("department.create.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (employeeCreateForm.getCode() != null) {
            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(employeeCreateForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("department.create.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
        Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
        Matcher m = p.matcher(employeeCreateForm.getCode());
        boolean b = m.matches();
        if (!b) {
            addFieldError("code", getText("department.create.code.error.startLetters"));
            checkForm = false;
        }

        //Check name empty
        if (StringUtils.isBlank(employeeCreateForm.getName())) {
            addFieldError("name", getText("department.create.name.error.empty"));
            checkForm = false;
        }
        //Check name length
        if (StringUtils.length(employeeCreateForm.getName()) < 1 || StringUtils.length(employeeCreateForm.getName()) > 255) {
            addFieldError("name", getText("department.create.name.error.length"));
            checkForm = false;
        }

        return checkForm;
    }
    /**
     * Gets the model to be pushed onto the ValueStack instead of the Action itself.
     *
     * @return the model
     */
    @Override
    public EmployeeCreateForm getModel() {
        return employeeCreateForm;
    }

    // SETTERS, GETTERS

    public EmployeeDto getEmployeeDto() {
        return employeeDto;
    }

    public void setEmployeeDto(EmployeeDto employeeDto) {
        this.employeeDto = employeeDto;
    }

    public List<DepartmentDto> getDepartmentDto() {
        return departmentDto;
    }

    public void setDepartmentDto(List<DepartmentDto> departmentDto) {
        this.departmentDto = departmentDto;
    }
}
