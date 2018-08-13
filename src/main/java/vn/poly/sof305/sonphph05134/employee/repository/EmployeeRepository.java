package vn.poly.sof305.sonphph05134.employee.repository;

import java.util.List;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepositoryInterface;
import vn.poly.sof305.sonphph05134.common.entities.Employee;

/**
 * @author Hoai Son
 *
 */
public interface EmployeeRepository extends BaseRepositoryInterface {
	

    Long count(Long deparmentId, String code, String name);

    List<Employee> select(Long departmentId, String code, String name, int offset, int limit);

    Employee select(Long id);

    Long insert(Employee employee);

    Long update(Employee employee);

    Long remove(Employee employee);
}
