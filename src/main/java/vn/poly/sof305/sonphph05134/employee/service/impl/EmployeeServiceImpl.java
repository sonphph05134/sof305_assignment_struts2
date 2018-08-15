package vn.poly.sof305.sonphph05134.employee.service.impl;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.poly.sof305.sonphph05134.common.bases.BaseService;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.common.entities.Department;
import vn.poly.sof305.sonphph05134.common.entities.Employee;
import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;
import vn.poly.sof305.sonphph05134.employee.dto.DepartmentDto;
import vn.poly.sof305.sonphph05134.employee.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.employee.repository.DepartmentRepository;
import vn.poly.sof305.sonphph05134.employee.repository.EmployeeRepository;
import vn.poly.sof305.sonphph05134.employee.service.EmployeeService;



/**
 * @author Hoai Son
 *
 */
@Service
public class EmployeeServiceImpl extends BaseService implements EmployeeService {


    /*=====================================================================================================
     *===== AUTOWIRED PROPERTIES                                                                      =====
     *=====================================================================================================*/

    @Autowired
    @Qualifier("empDepartmentRepositoryImpl")
    DepartmentRepository departmentRepository;

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    ServletContext context;

    /*=====================================================================================================
     *===== MAPPING METHOD                                                                            =====
     *=====================================================================================================*/

    @Override
    public List<DepartmentDto> departments(String code) {

        List<Department> departmentList = departmentRepository.search(code);

        List<DepartmentDto> departmentDtoList = new ArrayList<>();
        
        for (Department department : departmentList) {
            departmentDtoList.add(
                    (DepartmentDto) DataTransformUtil.transform(department, DepartmentDto.class));
        }

        return departmentDtoList;
    }

    @Override
    public ListDataDto<EmployeeDto> list(Long departmentId, String code, String name, Long pn) {

        // Declare result data
        ListDataDto<EmployeeDto> listDataDto = new ListDataDto<EmployeeDto>();

        // Calculating paging
        ListPagingDto pagingDto = listDataDto.getPaging();

        pagingDto.setCurrentPage(pn);

        // Count record
        Long totalRecords = employeeRepository.count(departmentId, code, name);
        pagingDto.setTotalRecords(totalRecords);

        // Check no result data
        if (totalRecords.intValue() == 0) {
            return listDataDto;
        }

        // Get list employee
        List<Employee> employeeList = employeeRepository.select(departmentId, code, name, pagingDto.getOffset(), pagingDto.getLimit());

        // Cast to employee dto
        List<EmployeeDto> employeeDtoList = new ArrayList<>();
        for (Employee employee : employeeList) {

            EmployeeDto employeeDto = (EmployeeDto) DataTransformUtil.transform(employee, EmployeeDto.class);

            Department department = employee.getDepartment();
            employeeDto.setDepartmentId(department.getId());
            employeeDto.setDepartmentCode(department.getCode());
            employeeDto.setDepartmentName(department.getName());;
            
            employeeDtoList.add(employeeDto);

            
        }

        // Set list into data dto
        listDataDto.setList(employeeDtoList);

        // Return data list
        return listDataDto;
    }

    @Override
    public EmployeeDto detail(Long id) {

        // Get data
        Employee employee = employeeRepository.select(id);

        // Check existing
        if (employee == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return detail DTO
        return (EmployeeDto) DataTransformUtil.transform(employee, EmployeeDto.class);
    }

    @Override
    public Long create(EmployeeDto employeeDto) {

        // Create new entity
        Employee employee = (Employee) DataTransformUtil.transform(employeeDto, Employee.class);

        // Return create result
        return employeeRepository.insert(employee);
    }

    @Override
    public Long update(EmployeeDto employeeDto) {

    	// Get existed employee
    	Employee employee= employeeRepository.select(employeeDto.getId());
    	
    	// Check existing
        if (employee == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }
        
        // Set update data
        employee.setDepartmentId(employeeDto.getDepartmentId());
        employee.setCode(employeeDto.getCode());
        employee.setName(employeeDto.getName());
        employee.setGender(employeeDto.getGender());
//        SimpleDateFormat df = new SimpleDateFormat("mm/dd/yy");
//        
//        String st= df.format(employeeDto.getBirthday());
//        try {
//        Date dateConvert= df.parse(st); 
//        employee.setBirthday(dateConvert);
//        }
//        catch(Exception e) {
//        	e.printStackTrace();
//        }
        employee.setBirthday(employeeDto.getBirthday());
        employee.setPhoto(employeeDto.getPhoto());
        employee.setEmail(employeeDto.getEmail());
        employee.setPhone(employeeDto.getPhone());
        employee.setSalary(employeeDto.getSalary());
        employee.setNotes(employeeDto.getNotes());


        
        // Return update result
        return employeeRepository.update(employee);
    }

    @Override
    public Long remove(Long id) {
        // TODO Auto-generated method stub
    	

        // Get existed employee
        Employee employee = employeeRepository.select(id);

        // Check existing
        if (employee == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return remove result
        return employeeRepository.remove(employee);

    }

    @Override
    public String saveImage(String code, MultipartFile file) {

        String uploadFileSavePath = context.getRealPath("/WEB-INF/upload/");
        String originalFileName = file.getOriginalFilename();

        StringBuilder stbFilePath = new StringBuilder(uploadFileSavePath);
        stbFilePath.append(code);
        stbFilePath.append(originalFileName.substring(originalFileName.lastIndexOf('.')));

        File saveFile = new File(stbFilePath.toString());
        try {
            logger.info("Save image into: " + stbFilePath.toString());
            file.transferTo(saveFile);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }

        return stbFilePath.toString().replace(uploadFileSavePath, StringUtils.EMPTY);
    }
}
