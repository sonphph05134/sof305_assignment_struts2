package vn.poly.sof305.sonphph05134.employee.repository;

import java.util.List;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepositoryInterface;
import vn.poly.sof305.sonphph05134.common.entities.Department;

/**
 * @author Hoai Son
 *
 */
public interface DepartmentRepository extends BaseRepositoryInterface{
	
	List<Department> search(String code);
}
