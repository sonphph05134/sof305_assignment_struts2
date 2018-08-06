package vn.poly.sof305.sonphph05134.common.interceptor;

import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;

public interface UserAware {
    public void setUser(LoginDto loginDto);
}
