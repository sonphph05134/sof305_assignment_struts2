package vn.poly.sof305.sonphph05134.auth.repository.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;
import vn.poly.sof305.sonphph05134.auth.repository.AuthRepository;
import vn.poly.sof305.sonphph05134.common.bases.BaseRepository;
import vn.poly.sof305.sonphph05134.common.entities.Account;

import java.util.List;


/**
 * @author Hoai Son
 *
 */
@Repository
public class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
	/**
	 * Inject the Session Factory from .xml config file
	 *
	 * @param sessionFactory spring bean, hibernate session factory
	 */

	public AuthRepositoryImpl(SessionFactory sessionFactory) {
		super(sessionFactory);
	}


	/**
	 * Get validated account
	 *
	 * @param loginDto contains username and password
	 * @return an account
	 */
	@Override
	public Account getLogin(LoginDto loginDto) {
		// TODO Auto-generated method stub
		Session currentSession = this.getCurrentSession();

		Query<Account> sql = currentSession.createQuery("from Account where username = :input_username and password =  :input_password", Account.class);
		sql.setParameter("input_username", loginDto.getUsername());
		sql.setParameter("input_password", loginDto.getPassword());

		List<Account> accounts = sql.getResultList();

		return accounts.size() > 0 ? accounts.get(0) : null;
	}
}
