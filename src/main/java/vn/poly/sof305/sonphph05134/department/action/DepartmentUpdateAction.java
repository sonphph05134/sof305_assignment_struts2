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
import vn.poly.sof305.sonphph05134.department.form.DepartmentUpdateForm;
import vn.poly.sof305.sonphph05134.department.service.DepartmentService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/department")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/department/updateDepartment.jsp"),
                @Result(name = "success", location = "/department", type = "redirect")
        }
)
public class DepartmentUpdateAction extends ActionSupport implements ModelDriven<DepartmentUpdateForm> {
    /*
     * param: department ID
     */
    private Long id;

    /*
     * param: departmentService
     */
    private final DepartmentService departmentService;

    @Autowired
    public DepartmentUpdateAction(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    private DepartmentUpdateForm departmentUpdateForm = new DepartmentUpdateForm();

    @Action("/updateDepartment")
    public String execute() throws Exception{
        DepartmentDto departmentDto = departmentService.detail(id);
        DataTransformUtil.transform(departmentDto, departmentUpdateForm);

        return INPUT;
    }

    @Action("/updateProcessDepartment")
    public String updateDepartment() {
        // TODO Validation


        DepartmentDto departmentDto =  (DepartmentDto) DataTransformUtil.transform(departmentUpdateForm, DepartmentDto.class);
        departmentDto.setId(id);

        if (departmentService.update(departmentDto) != null) {
            return SUCCESS;
        } else {
            addFieldError("code",getText("department.update.code.error.notUnique"));
            return INPUT;
        }

    }

    private boolean validateForm() {
        boolean checkForm = true;

        //Check code empty
        if (StringUtils.isBlank(departmentUpdateForm.getCode())) {
            addFieldError("code", getText("department.update.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(departmentUpdateForm.getCode()) < 1 || StringUtils.length(departmentUpdateForm.getCode()) > 6) {
            addFieldError("code", getText("department.update.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (departmentUpdateForm.getCode() != null) {

            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(departmentUpdateForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("department.update.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
        Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
        Matcher m = p.matcher(departmentUpdateForm.getCode());
        boolean b = m.matches();
        if (!b) {
            addFieldError("code", getText("department.update.code.error.startLetters"));
            checkForm = false;
        }

        //Check name empty
        if (StringUtils.isBlank(departmentUpdateForm.getName())) {
            addFieldError("name", getText("department.update.name.error.empty"));
            checkForm = false;
        }
        //Check name length
        if (StringUtils.length(departmentUpdateForm.getName()) < 1 || StringUtils.length(departmentUpdateForm.getName()) > 255) {
            addFieldError("name", getText("department.update.name.error.length"));
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
    public DepartmentUpdateForm getModel() {

        return departmentUpdateForm;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {

        this.id = id;
    }
}
