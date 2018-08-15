package vn.poly.sof305.sonphph05134.record.repository.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import vn.poly.sof305.sonphph05134.common.bases.BaseRepository;
import vn.poly.sof305.sonphph05134.common.entities.Employee;
import vn.poly.sof305.sonphph05134.common.entities.Record;
import vn.poly.sof305.sonphph05134.record.repository.RecordRepository;



/**
 * @author Hoai Son
 *
 */
@Repository
public class RecordRepositoryImpl extends BaseRepository implements RecordRepository{

    public RecordRepositoryImpl(SessionFactory sessionFactory) {
        super(sessionFactory);
    }

    @Override
    public  List<Record> searchByCode(String code) {
        Query<Record> query = this.getCurrentSession().createQuery("FROM Record WHERE code = :code", Record.class);
        query.setParameter("code", code);
        return query.list();
    }

    @Override
	public Long count(Long employeeId, String code, String reason) {
		// Build query string with default delFlg conditional
        StringBuilder queryStb = new StringBuilder("select count(1) from Record where delFlg = :delFlg");

        // Add employee condition
        if (employeeId != null) {
            queryStb.append(" and employeeId = :employeeId ");
        }

        // Add code condition
        if (StringUtils.isNotBlank(code)) {
            queryStb.append(" and code like :code ");
        }

        // Add reason conditional
        if (StringUtils.isNotBlank(reason)) {
            queryStb.append(" and reason like :reason ");
        }

        // Build query
        Query query = this.getCurrentSession().createQuery(queryStb.toString());

        // Set delFlg parameter
        query.setParameter("delFlg", Employee.DelFlg.UNDELETED);

        // Set employee parameter
        if (employeeId != null) {
            query.setParameter("employeeId", employeeId);
        }

        // Set code parameter
        if (StringUtils.isNotBlank(code)) {
            query.setParameter("code", "%" + code + "%");
        }

        // Set reason parameter
        if (StringUtils.isNotBlank(reason)) {
            query.setParameter("reason", "%" + reason + "%");
        }

        return (Long) query.uniqueResult();
	}

	@Override
	public List<Record> select(Long employeeId, String code, String reason, int offset, int limit) {
		// Build query string with default delFlg conditional
        StringBuilder queryStb = new StringBuilder("from Record where delFlg = :delFlg");

        // Add employee conditional
        if (employeeId != null) {
            queryStb.append(" and employeeId = :employeeId ");
        }

        // Add code conditional
        if (StringUtils.isNotBlank(code)) {
            queryStb.append(" and code like :code ");
        }

        // Add reason conditional
        if (StringUtils.isNotBlank(reason)) {
            queryStb.append(" and reason like :reason ");
        }

        // Build query
        Query query = this.getCurrentSession().createQuery(queryStb.toString());

        // Set delFlg parameter
        query.setParameter("delFlg", Employee.DelFlg.UNDELETED);

        // Set employee parameter
        if (employeeId != null) {
            query.setParameter("employeeId", employeeId);
        }

        // Set code parameter
        if (StringUtils.isNotBlank(code)) {
            query.setParameter("code", "%" + code + "%");
        }

        // Set reason parameter
        if (StringUtils.isNotBlank(reason)) {
            query.setParameter("reason", "%" + reason + "%");
        }

        return query.setFirstResult(offset).setMaxResults(limit).list();
    }

	@Override
	public Record select(Long id) {
		
		Record entity =  this.getCurrentSession().get(Record.class, id);

        if (entity.getDelFlg() == Record.DelFlg.UNDELETED) {
            return entity;
        }
		return null;
	}

	@Override
	public Long insert(Record record) {
		record.setDelFlg(Record.DelFlg.UNDELETED);
		record.setInsDate(new Date());
		record.setUpdDate(new Date());

        return (Long) super.insert(record);
	}

	@Override
	public Long update(Record record) {
		record.setUpdDate(new Date());

	    return (Long) super.update(record);
	}

	@Override
	public Long remove(Record record) {
		
		record.setDelFlg(Record.DelFlg.DELETED);
		record.setUpdDate(new Date());

	    return (Long) super.update(record);
	}

}
