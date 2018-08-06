package vn.poly.sof305.sonphph05134.auth.service;

import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;
import vn.poly.sof305.sonphph05134.auth.form.LoginForm;
import vn.poly.sof305.sonphph05134.common.bases.BaseServiceInterface;


/**
 * @author Hoai Son
 *
 */

public interface AuthService extends BaseServiceInterface {
    /*
     * 
     * 
     * @param username
     * @param password
     * 
     * @return 
     */
	
	
   public LoginDto isValidateLogin(LoginDto loginDto);

}
