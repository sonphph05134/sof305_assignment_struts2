package vn.poly.sof305.sonphph05134.record.repository;

import java.util.List;

import vn.poly.sof305.sonphph05134.common.entities.Employee;



/**
 * @author Hoai Son
 *
 */
public interface EmployeeRepository {
	
	List<Employee> search(String code);

}
