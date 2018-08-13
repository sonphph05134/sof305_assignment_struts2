
package vn.poly.sof305.sonphph05134.department.repository;

import vn.poly.sof305.sonphph05134.common.entities.Department;

import java.util.List;

;

/**
 * @author Hoai Son
 *
 */
public interface DepartmentRepository {

    /**
     * Search department by code
     * @param code depatment code
     * @return
     */
    List<Department> searchByCode(String code);
	/**
     * Count list department
     *
     * @param code
     * @param name
     *
     * @return
     */
    Long count(String code, String name);

    /**
     * Get list department
     *
     * @param code
     * @param name
     * @param offset
     * @param limit
     *
     * @return
     */
    List<Department> select(String code, String name, int offset, int limit);

    /**
     * Get detail department
     *
     * @param id
     *
     * @return
     */
    Department select(Long id);

    /**
     * Create new object
     *
     * @param department
     *
     * @return Inserted entity id
     */
    Long insert(Department department);

    /**
     * Update existed object
     *
     * @param department
     *
     * @return Updated entity id
     */
    Long update(Department department);

    /**
     * Remove existed object
     *
     * @param department
     *
     * @return Remove entity id
     */
    Long remove(Department department);
}
