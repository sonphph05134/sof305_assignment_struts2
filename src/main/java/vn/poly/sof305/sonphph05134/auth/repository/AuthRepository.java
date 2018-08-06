package vn.poly.sof305.sonphph05134.auth.repository;

import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;
import vn.poly.sof305.sonphph05134.common.bases.BaseRepositoryInterface;
import vn.poly.sof305.sonphph05134.common.entities.Account;


/**
 * @author Hoai Son
 *
 */
public interface AuthRepository extends BaseRepositoryInterface {
	/*
	* 
	* 
	*/
	Account getLogin(LoginDto loginDto);

}
