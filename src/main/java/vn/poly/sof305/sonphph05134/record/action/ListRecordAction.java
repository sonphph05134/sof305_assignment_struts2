package vn.poly.sof305.sonphph05134.record.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.record.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;
import vn.poly.sof305.sonphph05134.record.service.RecordService;

import java.util.List;

@Component
@Action("record")
@Results(
        {
                @Result(name = "success", location = "/WEB-INF/views/record/indexRecord.jsp")
        }
)
public class ListRecordAction extends ActionSupport implements ModelDriven<ListDataDto> {

    private final RecordService recordService;

    @Autowired
    public ListRecordAction(RecordService recordService) {
        this.recordService = recordService;
    }

    private ListDataDto<RecordDto> listRecord = new ListDataDto<>();
    private List<RecordDto> recordDto;
    private List<EmployeeDto> employeeDto;
    private ListPagingDto listPagingDto;


    private String code;
    private String reason;
    private Long pn;
    private Long employeeId;

    public String execute() throws Exception {


        //TODO param for search function
        if (pn != null) {
            listRecord = recordService.list(employeeId,code,reason,pn);
        } else {
            listRecord = recordService.list(employeeId, code,reason, 1L);
            recordDto = listRecord.getList();
            listPagingDto = listRecord.getPaging();

        }

        if (listPagingDto.getTotalRecords() == null) {
            addActionMessage(getText("record.list.search.message.empty"));
        } else {
            addActionMessage(getText("record.list.search.message.found") + "\t" + listPagingDto.getTotalRecords());
        }
        employeeDto = recordService.employees(null);

        return SUCCESS;


    }
    @Override
    public ListDataDto getModel() {
        return listRecord;
    }

    //Getter and Setter


    public List<RecordDto> getRecordDto() {
        return recordDto;
    }

    public void setRecordDto(List<RecordDto> recordDto) {
        this.recordDto = recordDto;
    }

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

    public Long getPn() {
        return pn;
    }

    public void setPn(Long pn) {
        this.pn = pn;
    }

    public Long getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Long employeeId) {
        this.employeeId = employeeId;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

}