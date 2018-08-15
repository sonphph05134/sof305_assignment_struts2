package vn.poly.sof305.sonphph05134.record.service;

import java.util.List;

import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.record.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;


/**
 * @author Hoai Son
 *
 */

public interface RecordService {
    /*
     * check code department
     * @param code
     * @return list department
     */
    boolean checkCode(String code);

    /*
     * Get list department
     *
     * @param code
     * @param name
     * @param pn
     *
     * @return list department
     */
    List<EmployeeDto> employees(String code);
    /*
     * Get detail info of department
     *
     * @param id
     * @
     * return
     */
    ListDataDto<RecordDto> list(Long employeeId, String code, String reason, Long pn);

    RecordDto detail(Long id);
    /*
     * Create new department
     *
     * @param departmentDto
     *
     * Return Create Id
     */

    Long create(RecordDto recordDto);
    /*
     * Update existed department
     *
     * @param id
     *
     * @return
     */
    Long update(RecordDto recordDto);
    /*
     * Remove existed department
     *
     * @param id
     *
     * @return
     */
    Long remove(Long id);

}
