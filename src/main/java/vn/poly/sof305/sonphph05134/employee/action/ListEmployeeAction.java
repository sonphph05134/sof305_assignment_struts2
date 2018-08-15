package vn.poly.sof305.sonphph05134.employee.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.common.entities.Department;
import vn.poly.sof305.sonphph05134.common.entities.Employee;
import vn.poly.sof305.sonphph05134.employee.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.employee.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.employee.form.EmployeeSearchForm;
import vn.poly.sof305.sonphph05134.employee.repository.DepartmentRepository;
import vn.poly.sof305.sonphph05134.employee.service.EmployeeService;

import java.util.List;


@Component
@Action("employee")
@Results(
        {
                @Result(name = "success", location = "/WEB-INF/views/employee/indexEmployee.jsp")
        }
)
public class ListEmployeeAction extends ActionSupport implements ModelDriven<ListDataDto> {

    private final EmployeeService employeeService;


    @Autowired
    public ListEmployeeAction(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }


    private ListDataDto<EmployeeDto> listEmployee = new ListDataDto<>();
    private List<EmployeeDto> employeeDto;
    private List<DepartmentDto> departmentDto;
    private ListPagingDto listPagingDto;

    private String code;
    private String name;
    private Long pn;
    private Long departmentId;

    public String execute() throws Exception {


        //TODO param for search function
        if (pn != null) {
            listEmployee = employeeService.list(departmentId,code,name,pn);
        } else {
            listEmployee = employeeService.list(departmentId,code,name,1L);
            employeeDto = listEmployee.getList();
            listPagingDto = listEmployee.getPaging();

        }

        if (listPagingDto.getTotalRecords() == null) {
            addActionMessage(getText("department.list.search.message.empty"));
        } else {
            addActionMessage(getText("department.list.search.message.found") + "\t" + listPagingDto.getTotalRecords());
        }
        departmentDto=employeeService.departments(null);
        return SUCCESS;

    }

    /**
     * Gets the model to be pushed onto the ValueStack instead of the Action itself.
     *
     * @return the model
     */
    @Override
    public ListDataDto getModel() {
        return listEmployee;
    }



    // SETTERS, GETTERS
    public List<EmployeeDto> getEmployeeDto() {
        return employeeDto;
    }

    public void setEmployeeDto(List<EmployeeDto> employeeDto) {
        this.employeeDto = employeeDto;
    }

    public ListPagingDto getListPagingDto() {
        return listPagingDto;
    }

    public void setListPagingDto(ListPagingDto listPagingDto) {
        this.listPagingDto = listPagingDto;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPn() {
        return pn;
    }

    public void setPn(Long pn) {
        this.pn = pn;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {

        this.departmentId = departmentId;
    }
    public List<DepartmentDto> getDepartmentDto() {

        return departmentDto;
    }
    public void setDepartmentDto(List<DepartmentDto> departmentDto) {

        this.departmentDto = departmentDto;
    }

}
