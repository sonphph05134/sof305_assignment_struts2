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
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;
import vn.poly.sof305.sonphph05134.record.form.RecordUpdateForm;
import vn.poly.sof305.sonphph05134.record.service.RecordService;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
@Namespace("/record")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/record/updateRecord.jsp"),
                @Result(name = "success", location = "/record", type = "redirect")
        }
)
public class UpdateRecordAction extends ActionSupport implements ModelDriven<RecordUpdateForm> {

    /*
     * param: record ID
     */
    private Long id;

    /*
     * param: recordService
     */
    private final RecordService recordService;

    @Autowired
    public UpdateRecordAction(RecordService recordService) {
        this.recordService = recordService;
    }

    private RecordUpdateForm recordUpdateForm = new RecordUpdateForm();

    @Action("/updateRecord")
    public String execute() throws Exception {
        RecordDto recordDto = recordService.detail(id);
        DataTransformUtil.transform(recordDto, recordUpdateForm);

        return INPUT;
    }

    @Action("/updateProcessRecord")
    public String updateRecord() {
        // TODO Validation
        RecordDto recordDto = (RecordDto) DataTransformUtil.transform(recordUpdateForm, RecordDto.class);
        recordDto.setId(id);

        if (recordService.update(recordDto) != null) {
            return SUCCESS;
        } else {
            addFieldError("code", getText("department.update.code.error.notUnique"));
            return INPUT;
        }

    }

    private boolean validateForm() {
        boolean checkForm = true;

        //Check code empty
        if (StringUtils.isBlank(recordUpdateForm.getCode())) {
            addFieldError("code", getText("record.update.code.error.empty"));
            checkForm = false;
        }
        //Check code length
        if (StringUtils.length(recordUpdateForm.getCode()) < 1 || StringUtils.length(recordUpdateForm.getCode()) > 6) {
            addFieldError("code", getText("record.update.code.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (recordUpdateForm.getCode() != null) {

            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(recordUpdateForm.getCode());
            boolean b = m.matches();
            if (!b) {
                addFieldError("code", getText("record.update.code.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pattern: code starts with 2 letters
        Pattern p = Pattern.compile("^[a-zA-Z]{2}(.*)");
        Matcher m = p.matcher(recordUpdateForm.getCode());
        boolean b = m.matches();
        if (!b) {
            addFieldError("code", getText("record.update.code.error.startLetters"));
            checkForm = false;
        }

        //Check name empty
        if (StringUtils.isBlank(recordUpdateForm.getReason())) {
            addFieldError("name", getText("record.update.name.error.empty"));
            checkForm = false;
        }

        return checkForm;
    }

    @Override
    public RecordUpdateForm getModel() {
        return recordUpdateForm;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
