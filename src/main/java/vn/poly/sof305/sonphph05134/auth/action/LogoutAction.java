package vn.poly.sof305.sonphph05134.auth.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
@Action("/logout")
@Result(name = "success", type = "redirect", location = "/login")
public class LogoutAction extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionAttr;

    public String execute() throws Exception{
        sessionAttr.clear();

        return SUCCESS;
    }

    /**
     * Sets the Map of session attributes in the implementing class.
     *
     * @param session a Map of HTTP session attribute name/value pairs.
     */
    @Override
    public void setSession(Map<String, Object> session) {
        this.sessionAttr = session;
    }
}
