package vn.poly.sof305.sonphph05134.auth.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;
import vn.poly.sof305.sonphph05134.auth.form.LoginForm;
import vn.poly.sof305.sonphph05134.auth.service.AuthService;
import vn.poly.sof305.sonphph05134.common.utils.DataTransformUtil;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/*
 * Login Action
 *
 * @Sonphph05134
 * version 1.0.0
 */

@Component
@Results(
        {
                @Result(name = "success", location = "/home", type = "redirect"),
                @Result(name = "input", location = "/WEB-INF/views/auth/login.jsp")

        }
)
@InterceptorRef(value = "defaultStack")
public class LoginAction extends ActionSupport implements ModelDriven<LoginForm>, SessionAware {

    private LoginForm loginForm = new LoginForm();

    private Map<String, Object> sessionMap;

    private final AuthService authService;

    @Autowired
    public LoginAction(AuthService authService) {
        this.authService = authService;
    }

    @Action("loginProcess")
    public String execute() throws Exception {
        // Business logic here
        HttpSession session = ServletActionContext.getRequest().getSession(true);
        LoginDto getSessionAttr = (LoginDto) session.getAttribute("userLogin");

        if (getSessionAttr != null) {
            return SUCCESS;
        }

        if (loginForm != null) {

            // Data validation
            if (!validateForm()) {
                return INPUT;
            }

            //DTO
            LoginDto loginDto = (LoginDto) DataTransformUtil.transform(loginForm, LoginDto.class);

            LoginDto inputLogin = authService.isValidateLogin(loginDto);
            if (inputLogin == null) {
                addActionError(getText("login.error"));
                return INPUT;
            } else {
                sessionMap.put("userLogin", inputLogin);

                return SUCCESS;
            }
        } else return INPUT;
    }

    @Action("login")
    public String getLogin() {
        return INPUT;
    }


    private boolean validateForm() {
        boolean checkForm = true;

        //Check username empty
        if (StringUtils.isBlank(loginForm.getUsername())) {
            addActionError(getText("login.username.error.empty"));
            checkForm = false;
        }
        //Check username length
        if (StringUtils.length(loginForm.getUsername()) < 1 || StringUtils.length(loginForm.getUsername()) > 127) {
            addActionError( getText("login.username.error.length"));
            checkForm = false;
        }

        //Check pattern: only allowed Alphanumberic
        if (loginForm.getUsername() != null) {

            Pattern p = Pattern.compile("^[a-zA-Z0-9]*$");
            Matcher m = p.matcher(loginForm.getUsername());
            boolean b = m.matches();
            if (!b) {
                addActionError(getText("login.username.error.specialCharacters"));
                checkForm = false;
            }
        }

        //Check pw empty
        if (StringUtils.isBlank(loginForm.getPassword())) {
            addActionError( getText("login.password.error.empty"));
            checkForm = false;
        }

        //Check pw length
        if (StringUtils.length(loginForm.getPassword()) < 1 || StringUtils.length(loginForm.getPassword()) > 255) {
            addActionError(getText("login.password.error.length"));
            checkForm = false;
        }

        return checkForm;
    }

    /**
     * Gets the model to be pushed onto the ValueStack instead of the Action itself.
     *
     * @return the model
     */
    @Override
    public LoginForm getModel() {
        return loginForm;
    }


    /**
     * Sets the Map of session attributes in the implementing class.
     *
     * @param session a Map of HTTP session attribute name/value pairs.
     */
    @Override
    public void setSession(Map<String, Object> session) {
        this.sessionMap = session;
    }
}
