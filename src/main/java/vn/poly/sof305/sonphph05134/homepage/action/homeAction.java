package vn.poly.sof305.sonphph05134.homepage.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Component;
import vn.poly.sof305.sonphph05134.auth.dto.LoginDto;



@Component
@Action("home")
@Result(name = "success", location = "/WEB-INF/views/homepage/homepage.jsp")
@InterceptorRef(value = "authStack")
public class homeAction  extends ActionSupport implements ModelDriven<LoginDto> {
    private LoginDto user;

    public LoginDto getUser()
    {
        return user;
    }

    public String execute() throws Exception {
        return SUCCESS;
    }


       /**
     * Gets the model to be pushed onto the ValueStack instead of the Action itself.
     *
     * @return the model
     */
    @Override
    public LoginDto getModel()
    {
        return this.user;
    }
}
