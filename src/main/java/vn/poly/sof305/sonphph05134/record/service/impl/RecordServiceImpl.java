package vn.poly.sof305.sonphph05134.record.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import vn.poly.sof305.sonphph05134.common.bases.BaseService;
import vn.poly.sof305.sonphph05134.common.dto.ListDataDto;
import vn.poly.sof305.sonphph05134.common.dto.ListPagingDto;
import vn.poly.sof305.sonphph05134.common.entities.Record;
import vn.poly.sof305.sonphph05134.common.entities.Employee;

import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;
import vn.poly.sof305.sonphph05134.record.dto.EmployeeDto;
import vn.poly.sof305.sonphph05134.record.dto.RecordDto;
import vn.poly.sof305.sonphph05134.record.repository.EmployeeRepository;
import vn.poly.sof305.sonphph05134.record.repository.RecordRepository;
import vn.poly.sof305.sonphph05134.record.service.RecordService;

/**
 * @author Hoai Son
 *
 */
@Service
public class RecordServiceImpl extends BaseService implements RecordService {


    /*=====================================================================================================
     *===== AUTOWIRED PROPERTIES                                                                      =====
     *=====================================================================================================*/

    @Autowired
    @Qualifier("recEmployeeRepositoryImpl")
    EmployeeRepository employeeRepository;

    @Autowired
    RecordRepository recordRepository;

    @Autowired
    ServletContext context;

    @Override
    public boolean checkCode(String code) {
        List<Record> listCode = recordRepository.searchByCode(code);
        if(listCode.isEmpty()){
            return false;
        }
        return true;
    }


	@Override
	public List<EmployeeDto> employees(String code) {
		
		List<Employee> emlpoyeeList = employeeRepository.search(code);

        List<EmployeeDto> emlpoyeeDtoList = new ArrayList<>();
        
        for (Employee emlpoyee : emlpoyeeList) {
        	emlpoyeeDtoList.add(
                    (EmployeeDto) DataTransformUtil.transform(emlpoyee, EmployeeDto.class));
        }
        return emlpoyeeDtoList;
	}

	@Override
	public ListDataDto<RecordDto> list(Long employeeId, String code, String reason, Long pn) {
		
        // Declare result data
        ListDataDto<RecordDto> listDataDto = new ListDataDto<RecordDto>();

        // Calculating paging
        ListPagingDto pagingDto = listDataDto.getPaging();
        pagingDto.setCurrentPage(pn);

        // Count record
        Long totalRecords = recordRepository.count(employeeId, code, reason);
        pagingDto.setTotalRecords(totalRecords);

        // Check no result data
        if (totalRecords.intValue() == 0) {
            return listDataDto;
        }

        // Get list record
        List<Record> recordList = recordRepository.select(employeeId, code, reason, pagingDto.getOffset(), pagingDto.getLimit());

        // Cast to record dto
        List<RecordDto> recordDtoList = new ArrayList<>();
        for (Record record : recordList) {

            RecordDto recordDto = (RecordDto) DataTransformUtil.transform(record, RecordDto.class);

            Employee employee = record.getEmployee();
            
            recordDto.setEmployeeId(employee.getId());
            recordDto.setEmployeeCode(employee.getCode());
            recordDto.setEmployeeName(employee.getName());

            recordDtoList.add(recordDto);
        }

        // Set list into data dto
        listDataDto.setList(recordDtoList);

        // Return data list
        return listDataDto;
	}

	@Override
	public RecordDto detail(Long id) {
		 // Get data
		Record record = recordRepository.select(id);

        // Check existing
        if (record == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return detail DTO
        return (RecordDto) DataTransformUtil.transform(record, RecordDto.class);

	}

	@Override
	public Long create(RecordDto recordDto) {
		// Create new entity
		Record record = (Record) DataTransformUtil.transform(recordDto, Record.class);

        // Return create result
        return recordRepository.insert(record);
	}

	@Override
	public Long update(RecordDto recordDto) {
    	// Get existed employee
		Record record=recordRepository.select(recordDto.getId());
    	
    	// Check existing
        if (record == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }
        
        // Set update data
        record.setEmployeeId(recordDto.getEmployeeId());
        record.setCode(recordDto.getCode());
        record.setType(recordDto.getType());
        record.setReason(recordDto.getReason());
        // Return update result
        return recordRepository.update(record);
	}

	@Override
	public Long remove(Long id) {
		 // Get existed employee
        Record record = recordRepository.select(id);

        // Check existing
        if (record == null) {
            throw new RuntimeException("Cannot find entity with id or It was deleted");
        }

        // Return remove result
        return recordRepository.remove(record);
	}

}
