package vn.poly.sof305.sonphph05134.record.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;
import vn.poly.sof305.sonphph05134.record.form.RecordRemoveForm;
import vn.poly.sof305.sonphph05134.record.service.RecordService;

@Component
@Namespace("/record")
@Results(
        {
                @Result(name = "input", location = "/WEB-INF/views/record/removeRecord.jsp"),
                @Result(name = "success", location = "/record", type = "redirect")
        }
)
public class RemoveRecordAction extends ActionSupport implements ModelDriven<RecordRemoveForm> {

    /*
     *@param: record ID
     */
    private Long id;

    /*
     * @recordService
     */
    private final RecordService recordService;

    /*=====================================================================================================
     *===== AUTOWIRED PROPERTIES                                                                      =====
     *=====================================================================================================*/
@Autowired

    public RemoveRecordAction(RecordService recordService) {
        this.recordService = recordService;
    }

    private RecordRemoveForm recordRemoveForm = new RecordRemoveForm();
    private RecordDto RecordDto;

    @Action("/removeRecord")
    public String execute() throws Exception{
        //get data
        RecordDto recordDto = recordService.detail(id);
        DataTransformUtil.transform(recordDto, recordRemoveForm);
        return INPUT;
    }

    @Action("/removeProcessRecord")
    public String doRemove() throws Exception {
        // TODO Validation
        recordService.remove(id);
        return SUCCESS;
    }

    @Override
    public RecordRemoveForm getModel() {
        return recordRemoveForm;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public RecordDto getRecordDto() {
        return RecordDto;
    }

    public void setRecordDto(RecordDto recordDto) {
        RecordDto = recordDto;
    }
}
