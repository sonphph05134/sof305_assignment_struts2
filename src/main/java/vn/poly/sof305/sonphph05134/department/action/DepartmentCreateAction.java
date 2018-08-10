package vn.poly.sof305.sonphph05134.department.action;


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
import vn.poly.sof305.sonphph05134.department.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.department.form.DepartmentCreateForm;
import vn.poly.sof305.sonphph05134.department.service.DepartmentService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/department")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/department/createDepartment.jsp"),
                @Result(name = "success", location = "/department", type = "redirect")
        }
)
public class DepartmentCreateAction extends ActionSupport implements ModelDriven<DepartmentCreateForm> {
    private final DepartmentService departmentService;

    @Autowired
    public DepartmentCreateAction(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    private DepartmentCreateForm departmentCreateForm = new DepartmentCreateForm();
    private DepartmentDto departmentDto = new DepartmentDto();

    @Action("createDepartment")
    public String execute() throws Exception {
        return INPUT;
    }

    @Action("createDepartmentProcess")
    public String inputDepartment() throws Exception {
        if (departmentCreateForm != null) {
            if (!validateForm()) {
                return INPUT;
            }
            // Cast Form to DTO
            DepartmentDto departmentDto = (DepartmentDto) DataTransformUtil.transform(departmentCreateForm, DepartmentDto.class);
            if (departmentService.create(departmentDto) != null) {
                return SUCCESS;
            } else {
                addFieldError("code",getText("department.create.code.error.notUnique"));
                return INPUT;
            }

        } else return INPUT;


    }

    private boolean validateForm() {
        boolean checkForm = true;

        //Check code empty
        if (StringUtils.isBlank(departmentCreateForm.getCode())) {
            addFieldError("code", getText("department.create.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(departmentCreateForm.getCode()) < 1 || StringUtils.length(departmentCreateForm.getCode()) > 6) {
            addFieldError("code", getText("department.create.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (departmentCreateForm.getCode() != null) {
            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(departmentCreateForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("department.create.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
        Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
        Matcher m = p.matcher(departmentCreateForm.getCode());
        boolean b = m.matches();
        if (!b) {
            addFieldError("code", getText("department.create.code.error.startLetters"));
            checkForm = false;
        }

        //Check name empty
        if (StringUtils.isBlank(departmentCreateForm.getName())) {
            addFieldError("name", getText("department.create.name.error.empty"));
            checkForm = false;
        }
        //Check name length
        if (StringUtils.length(departmentCreateForm.getName()) < 1 || StringUtils.length(departmentCreateForm.getName()) > 255) {
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
    public DepartmentCreateForm getModel() {
        return departmentCreateForm;
    }

    // SETTERS, GETTERS

    public DepartmentDto getDepartmentDto() {
        return departmentDto;
    }

    public void setDepartmentDto(DepartmentDto departmentDto) {
        this.departmentDto = departmentDto;
    }
}
