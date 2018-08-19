package vn.poly.sof305.sonphph05134.record.repository.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepository;
import vn.poly.sof305.sonphph05134.common.entities.Employee;
import vn.poly.sof305.sonphph05134.record.repository.EmployeeRepository;

/**
 * @author Hoai Son
 *
 */
@Repository("recEmployeeRepositoryImpl")
public class EmployeeRepositoryImpl extends BaseRepository implements EmployeeRepository{

    public EmployeeRepositoryImpl(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Employee> search(String code) {

        StringBuilder queryStb = new StringBuilder("from Employee where delFlg = :delFlg");

        // Add order conditional
        queryStb.append(" order by code");

        // Build query
        Query query = this.getCurrentSession().createQuery(queryStb.toString());

        // Set delFlg parameter
        query.setParameter("delFlg", Employee.DelFlg.UNDELETED);

        return query.list();
    }
}
