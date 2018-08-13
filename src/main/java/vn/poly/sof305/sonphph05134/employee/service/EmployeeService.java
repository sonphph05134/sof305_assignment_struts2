/**
 * 
 */
package vn.poly.sof305.sonphph05134.employee.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import vn.poly.sof305.sonphph05134.common.bases.BaseServiceInterface;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.employee.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.employee.dto.EmployeeDto;


/**
 * @author Hoai Son
 *
 */
public interface EmployeeService extends BaseServiceInterface{
	

    List<DepartmentDto> departments(String code);

    ListDataDto<EmployeeDto> list(Long departmentId, String code, String name, Long pn);

    EmployeeDto detail(Long id);

    Long create(EmployeeDto employeeDto);

    Long update(EmployeeDto employeeDto);

    Long remove(Long id);

    String saveImage(String code, MultipartFile file);
}
