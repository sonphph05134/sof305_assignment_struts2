package vn.poly.sof305.sonphph05134.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;
import vn.poly.sof305.sonphph05134.auth.form.LoginForm;
import vn.poly.sof305.sonphph05134.auth.repository.AuthRepository;
import vn.poly.sof305.sonphph05134.auth.service.AuthService;
import vn.poly.sof305.sonphph05134.common.bases.BaseService;
import vn.poly.sof305.sonphph05134.common.entities.Account;
import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;


/**
 * @author Hoai Son
 *
 */
@Service
public class AuthServiceImpl extends BaseService implements AuthService {

	private final AuthRepository authRepository;

	@Autowired
	public AuthServiceImpl(AuthRepository authRepository) {
		this.authRepository = authRepository;
	}

	/**
	 * Validate account from input
	 *
	 * @param loginDto contains input's username and password
	 * @return a loginDto
	 */
	
	@Override
	public LoginDto isValidateLogin(LoginDto loginDto) {

			if (authRepository.getLogin(loginDto) == null) {
				return null;
			} else {
				return (LoginDto) DataTransformUtil.transform(authRepository.getLogin(loginDto), LoginDto.class);
			}

		}
	}
	

	
	
	
	




