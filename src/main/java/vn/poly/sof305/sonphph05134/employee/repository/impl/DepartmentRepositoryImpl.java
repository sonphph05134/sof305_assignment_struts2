package vn.poly.sof305.sonphph05134.employee.repository.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepository;
import vn.poly.sof305.sonphph05134.common.entities.Department;
import vn.poly.sof305.sonphph05134.employee.repository.DepartmentRepository;


/**
 * @author Hoai Son
 *
 */
@Repository("empDepartmentRepositoryImpl")
public class DepartmentRepositoryImpl extends BaseRepository implements DepartmentRepository {

    public DepartmentRepositoryImpl(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Department> search(String code) {

        StringBuilder queryStb = new StringBuilder("from Department where delFlg = :delFlg");

        // TODO

        // Add order conditional
        queryStb.append(" order by code");

        // Build query
        Query query = this.getCurrentSession().createQuery(queryStb.toString());

        // Set delFlg parameter
        query.setParameter("delFlg", Department.DelFlg.UNDELETED);

        // TODO

        return query.list();
    }
}
