package vn.poly.sof305.sonphph05134.employee.repository.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import vn.poly.sof305.sonphph05134.common.bases.BaseRepository;

import vn.poly.sof305.sonphph05134.common.entities.Employee;
import vn.poly.sof305.sonphph05134.employee.repository.EmployeeRepository;

/**
 * @author Hoai Son
 *
 */
@Repository
public class EmployeeRepositoryImpl extends BaseRepository implements EmployeeRepository {
	public EmployeeRepositoryImpl(SessionFactory sessionFactory) {

		super(sessionFactory);
	}

	@Override
	    public Long count(Long departmentId, String code, String name) {

	        // Build query string with default delFlg conditional
	        StringBuilder queryStb = new StringBuilder("select count(1) from Employee where delFlg = :delFlg");

	        // Add department condition
	        if (departmentId != null) {
	            queryStb.append(" and departmentId = :departmentId ");
	        }

	        // Add code condition
	        if (StringUtils.isNotBlank(code)) {
	            queryStb.append(" and code like :code ");
	        }

	        // Add name conditional
	        if (StringUtils.isNotBlank(name)) {
	            queryStb.append(" and name like :name ");
	        }

	        // Build query
	        Query query = this.getCurrentSession().createQuery(queryStb.toString());

	        // Set delFlg parameter
	        query.setParameter("delFlg", Employee.DelFlg.UNDELETED);

	        // Set department parameter
	        if (departmentId != null) {
	            query.setParameter("departmentId", departmentId);
	        }

	        // Set code parameter
	        if (StringUtils.isNotBlank(code)) {
	            query.setParameter("code", "%" + code + "%");
	        }

	        // Set name parameter
	        if (StringUtils.isNotBlank(name)) {
	            query.setParameter("name", "%" + name + "%");
	        }

	        return (Long) query.uniqueResult();
	    }

	    @Override
	    @SuppressWarnings("unchecked")
	    public List<Employee> select(Long departmentId, String code, String name, int offset, int limit) {

	        // Build query string with default delFlg conditional
	        StringBuilder queryStb = new StringBuilder("from Employee where delFlg = :delFlg");

	        // Add department condition
	        if (departmentId != null) {
	            queryStb.append(" and departmentId = :departmentId ");
	        }

	        // Add code condition
	        if (StringUtils.isNotBlank(code)) {
	            queryStb.append(" and code like :code ");
	        }

	        // Add name conditional
	        if (StringUtils.isNotBlank(name)) {
	            queryStb.append(" and name like :name ");
	        }

	        // Build query
	        Query query = this.getCurrentSession().createQuery(queryStb.toString());

	        // Set delFlg parameter
	        query.setParameter("delFlg", Employee.DelFlg.UNDELETED);

	        // Set department parameter
	        if (departmentId != null) {
	            query.setParameter("departmentId", departmentId);
	        }

	        // Set code parameter
	        if (StringUtils.isNotBlank(code)) {
	            query.setParameter("code", "%" + code + "%");
	        }

	        // Set name parameter
	        if (StringUtils.isNotBlank(name)) {
	            query.setParameter("name", "%" + name + "%");
	        }

	        return query.setFirstResult(offset).setMaxResults(limit).list();
	    }

	    @Override
	    public Employee select(Long id) {

	        Employee entity =  this.getCurrentSession().get(Employee.class, id);

	        if (entity.getDelFlg() == Employee.DelFlg.UNDELETED) {
	            return entity;
	        }

	        return null;
	    }

	    @Override
	    public Long insert(Employee employee) {

	        employee.setDelFlg(Employee.DelFlg.UNDELETED);
	        employee.setInsDate(new Date());
	        employee.setUpdDate(new Date());

	        return (Long) super.insert(employee);
	    }

	    @Override
	    public Long update(Employee employee) {

	        employee.setUpdDate(new Date());

	        return (Long) super.update(employee);
	    }

	    @Override
	    public Long remove(Employee employee) {

	        employee.setDelFlg(Employee.DelFlg.DELETED);
	        employee.setUpdDate(new Date());

	        return (Long) super.update(employee);
	    }

}
