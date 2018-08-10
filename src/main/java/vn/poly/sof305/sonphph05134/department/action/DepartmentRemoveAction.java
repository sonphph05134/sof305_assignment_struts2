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
import vn.poly.sof305.sonphph05134.department.form.DepartmentRemoveForm;
import vn.poly.sof305.sonphph05134.department.service.DepartmentService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/department")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/department/removeDepartment.jsp"),
                @Result(name = "success", location = "/department", type = "redirect")
        }
)
public class DepartmentRemoveAction extends ActionSupport implements ModelDriven<DepartmentRemoveForm> {
    /*
     *@param: department ID
     */
    private Long id;

    /*
     * @departmentService
     */
    private final DepartmentService departmentService;

    /*=====================================================================================================
     *===== AUTOWIRED PROPERTIES                                                                      =====
     *=====================================================================================================*/
    @Autowired
    public DepartmentRemoveAction(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    private DepartmentRemoveForm departmentRemoveForm = new DepartmentRemoveForm();
    private DepartmentDto departmentDto;

    @Action("/removeDepartment")
    public String execute() throws Exception{
        //get data
        DepartmentDto departmentDto = departmentService.detail(id);
        DataTransformUtil.transform(departmentDto, departmentRemoveForm);
        return INPUT;
    }

    @Action("/removeProcessDepartment")
    public String doRemove() throws Exception {
        // TODO Validation
        departmentService.remove(id);


        return SUCCESS;
    }

    private boolean validateForm() {
        boolean checkForm = true;

        //Check code empty
        if (StringUtils.isBlank(departmentRemoveForm.getCode())) {
            addFieldError("code", getText("department.remove.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(departmentRemoveForm.getCode()) < 1 || StringUtils.length(departmentRemoveForm.getCode()) > 6) {
            addFieldError("code", getText("department.remove.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (departmentRemoveForm.getCode() != null) {

            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(departmentRemoveForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("department.remove.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
        Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
        Matcher m = p.matcher(departmentRemoveForm.getCode());
        boolean b = m.matches();
        if (!b) {
            addFieldError("code", getText("department.remove.code.error.startLetters"));
            checkForm = false;
        }

        //Check name empty
        if (StringUtils.isBlank(departmentRemoveForm.getName())) {
            addFieldError("name", getText("department.remove.name.error.empty"));
            checkForm = false;
        }
        //Check name length
        if (StringUtils.length(departmentRemoveForm.getName()) < 1 || StringUtils.length(departmentRemoveForm.getName()) > 255) {
            addFieldError("name", getText("department.remove.name.error.length"));
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
    public DepartmentRemoveForm getModel() {
        return departmentRemoveForm;
    }

    // SETTERS, GETTERS

    public DepartmentDto getDepartmentDto() {
        return departmentDto;
    }

    public void setDepartmentDto(DepartmentDto departmentDto) {
        this.departmentDto = departmentDto;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
