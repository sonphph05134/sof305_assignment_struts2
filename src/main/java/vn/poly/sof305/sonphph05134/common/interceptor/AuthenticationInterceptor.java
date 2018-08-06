package vn.poly.sof305.sonphph05134.common.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;

import java.util.Map;

public class AuthenticationInterceptor implements Interceptor {
    private static final long serialVersionUID =1L;
    //
    @Override
    public void destroy(){

    }
    //
    @Override
    public void init(){

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws  Exception{
        Map<String, Object> sessionAtt = actionInvocation.getInvocationContext().getSession();

        // Get 'Login' session attribute
        LoginDto loginDto = (LoginDto) sessionAtt.get("userLogin");

        //Check
        if(loginDto == null){
            return Action.LOGIN;
        }else{
            Action action = (Action) actionInvocation.getAction();
            if(action instanceof UserAware){
                ((UserAware) action).setUser(loginDto);
            }
            return actionInvocation.invoke();
        }
    }
}