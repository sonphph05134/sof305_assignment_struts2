/**
 * 
 */
package vn.poly.sof305.sonphph05134.department.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.poly.sof305.sonphph05134.common.bases.BaseService;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.common.entities.Department;
import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;
import vn.poly.sof305.sonphph05134.department.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.department.form.DepartmentCreateForm;
import vn.poly.sof305.sonphph05134.department.repository.DepartmentRepository;
import vn.poly.sof305.sonphph05134.department.service.DepartmentService;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Hoai Son
 *
 */
@Service
public class DepartmentServiceImpl extends BaseService implements DepartmentService {
	
	/*=====================================================================================================
     *===== AUTOWIRED PROPERTIES                                                                      =====
     *=====================================================================================================*/

    @Autowired
    DepartmentRepository departmentRepository;

    /*=====================================================================================================
     *===== MAPPING METHOD                                                                            =====
     *=====================================================================================================*/

    @Override
    public boolean checkCode(String code) {
        List<Department> listCode = departmentRepository.searchByCode(code);
        if(listCode.isEmpty()){
            return false;
        }
        return true;
    }

    @Override
    public ListDataDto<DepartmentDto> list(String code, String name, Long pn) {

        // Declare result data
        ListDataDto<DepartmentDto> listDataDto = new ListDataDto<DepartmentDto>();

        // Calculating paging
        ListPagingDto pagingDto = listDataDto.getPaging();
        pagingDto.setCurrentPage(pn);

        // Count record
        Long totalRecords = departmentRepository.count(code, name);
        pagingDto.setTotalRecords(totalRecords);

        // Check no result data
        if (totalRecords.intValue() == 0) {
            return listDataDto;
        }

        // Get list department
        List<Department> departmentList = departmentRepository.select(code, name, pagingDto.getOffset(), pagingDto.getLimit());

        // Cast to department dto
        List<DepartmentDto> departmentDtoList = new ArrayList<>();
        for (Department department : departmentList) {
            departmentDtoList.add(
                    (DepartmentDto) DataTransformUtil.transform(department, DepartmentDto.class));
        }

        // Set list into data dto
        listDataDto.setList(departmentDtoList);

        // Return data list
        return listDataDto;
    }

    @Override
    public DepartmentDto detail(Long id) {

        // Get data
        Department department = departmentRepository.select(id);

        // Check existing
        if (department == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return detail DTO
        return (DepartmentDto) DataTransformUtil.transform(department, DepartmentDto.class);
    }

    @Override
    public Long create(DepartmentDto departmentDto) {

        // Create new entity
        Department department = (Department) DataTransformUtil.transform(departmentDto, Department.class);

        // Return create result
        return departmentRepository.insert(department);
    }

    @Override
    public Long update(DepartmentDto departmentDto) {

        // Get existed department
        Department department = departmentRepository.select(departmentDto.getId());

        // Check existing
        if (department == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Set update data
        department.setCode(departmentDto.getCode());
        department.setName(departmentDto.getName());

        // Return update result
        return departmentRepository.update(department);
    }

    @Override
    public Long remove(Long id) {


        // Get existed department
        Department department = departmentRepository.select(id);

        // Check existing
        if (department == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return remove result
        return departmentRepository.remove(department);
    }
}


