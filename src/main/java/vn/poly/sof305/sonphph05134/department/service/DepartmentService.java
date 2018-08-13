/**
 * 
 */
package vn.poly.sof305.sonphph05134.department.service;

import vn.poly.sof305.sonphph05134.common.bases.BaseServiceInterface;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.department.dto.DepartmentDto;

/**
 * @author Hoai Son
 *
 */
public interface DepartmentService extends BaseServiceInterface {

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
    ListDataDto<DepartmentDto> list(String code, String name, Long pn);
        
        /*
         * Get detail info of department
         * 
         * @param id
         * @
         * return
         */
    DepartmentDto detail(Long id);
    
    /*
     * Create new department
     * 
     * @param departmentDto
     * 
     * Return Create Id
     */
    Long create(DepartmentDto departmentDto);
    
    /*
     * Update existed department
     * 
     * @param id
     * 
     * @return
     */
    Long update(DepartmentDto departmentDto);
    
    /*
     * Remove existed department
     * 
     * @param id
     * 
     * @return
     */
    Long remove(Long id);
}
