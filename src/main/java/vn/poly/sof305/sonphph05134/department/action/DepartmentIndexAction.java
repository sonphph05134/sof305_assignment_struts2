package vn.poly.sof305.sonphph05134.department.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.department.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.department.service.DepartmentService;

import java.util.List;

@Component
@Action("department")
@Results(
        {
                @Result(name = "success", location = "../webapp/views/department/indexDepartment.jsp")
        }
)
public class DepartmentIndexAction extends ActionSupport implements ModelDriven<ListDataDto> {

        private final DepartmentService departmentService;

        @Autowired
        public DepartmentIndexAction(DepartmentService departmentService) {
                this.departmentService = departmentService;
                }

        private ListDataDto<DepartmentDto> listDepartment = new ListDataDto<>();
        private List<DepartmentDto> departmentDto;
        private ListPagingDto listPagingDto;

        //Parameters
        private String code;
        private String name;
        private Long pn;

    public String listDepartment() throws Exception {

        //TODO param for search function
                if (pn != null) {
                listDepartment = departmentService.list(code,name,pn);
                } else listDepartment = departmentService.list(code, name, 1L);
                departmentDto = listDepartment.getList();
                listPagingDto = listDepartment.getPaging();

                if (listPagingDto.getTotalRecords() == null) {
                addActionMessage(getText("department.list.search.message.empty"));
                } else addActionMessage(getText("department.list.search.message.found")+"\t"+listPagingDto.getTotalRecords());

                return SUCCESS;
    }


                @Override
                public ListDataDto getModel() {
                        return listDepartment;
                        }

                // SETTERS, GETTERS
                public List<DepartmentDto> getDepartmentDto() {
                        return departmentDto;
                        }

                public void setDepartmentDto(List<DepartmentDto> departmentDto) {
                        this.departmentDto = departmentDto;
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
}
