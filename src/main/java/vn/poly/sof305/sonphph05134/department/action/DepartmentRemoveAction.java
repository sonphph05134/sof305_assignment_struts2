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
