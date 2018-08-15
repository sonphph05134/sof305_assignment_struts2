package vn.poly.sof305.sonphph05134.record.action;

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
import vn.poly.sof305.sonphph05134.record.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;
import vn.poly.sof305.sonphph05134.record.form.RecordCreateForm;
import vn.poly.sof305.sonphph05134.record.service.RecordService;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/record")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/record/createRecord.jsp"),
                @Result(name = "success", location = "/record", type = "redirect")
        }
)
public class CreateRecordAction extends ActionSupport implements ModelDriven<RecordCreateForm> {

    private final RecordService recordService;

    @Autowired
    public CreateRecordAction(RecordService recordService) {
        this.recordService = recordService;
    }

    private RecordCreateForm recordCreateForm = new RecordCreateForm();
    private RecordDto recordDto = new RecordDto();
    private List<EmployeeDto> listEmployeeDto;


    @Action("createRecord")
    public String execute() throws Exception {
        listEmployeeDto=recordService.employees(null);

        return INPUT;
    }

    @Action("createRecordProcess")
    public String insertRecord() throws Exception {


        if (recordCreateForm != null) {
            if (!validateForm()) {
                listEmployeeDto=recordService.employees(null);

                return INPUT;
            }
            // Cast Form to DTO
            RecordDto recordDto = (RecordDto) DataTransformUtil.transform(recordCreateForm, RecordDto.class);
            if (recordService.create(recordDto) != null) {

                return SUCCESS;
            } else {
                addFieldError("code", getText("record.create.code.error.notUnique"));
                return INPUT;
            }

        } else return INPUT;
    }

    private boolean validateForm() {
        boolean checkForm = true;

        //Check duplication code
        if (recordService.checkCode(recordCreateForm.getCode())) {
            addFieldError("code", getText("Error duplication code"));
            checkForm = false;
        }
        //Check code empty
        if (StringUtils.isBlank(recordCreateForm.getCode())) {
            addFieldError("code", getText("record.create.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(recordCreateForm.getCode()) < 1 || StringUtils.length(recordCreateForm.getCode()) > 6) {
            addFieldError("code", getText("record.create.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (recordCreateForm.getCode() != null) {
            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(recordCreateForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("record.create.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
//            Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
//            Matcher m = p.matcher(recordCreateForm.getCode());
//            boolean b = m.matches();
//            if (!b) {
//                addFieldError("code", getText("record.create.code.error.startLetters"));
//                checkForm = false;
//            }

        //Check reason empty
        if (StringUtils.isBlank(recordCreateForm.getReason())) {
            addFieldError("name", getText("record.create.reason.error.empty"));
            checkForm = false;
        }

        return checkForm;
    }

    @Override
    public RecordCreateForm getModel() {
        return recordCreateForm;
    }

    public RecordDto getRecordDto() {
        return recordDto;
    }

    public void setRecordDto(RecordDto recordDto) {
        this.recordDto = recordDto;
    }

    public void setListEmployeeDto(List<EmployeeDto> listEmployeeDto) {
        this.listEmployeeDto = listEmployeeDto;
    }

    public List<EmployeeDto> getListEmployeeDto() {
        return listEmployeeDto;
    }
}

