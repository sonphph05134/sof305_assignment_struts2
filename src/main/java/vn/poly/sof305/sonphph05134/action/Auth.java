package vn.poly.sof305.sonphph05134.action;

import com.opensymphony.xwork2.ActionSupport;
import sun.plugin2.message.Message;
import vn.poly.sof305.sonphph05134.model.MessageStore;

/*
 * Login Action
 *
 * @Sonphph05134
 * version 1.0.0
 */
public class Auth extends ActionSupport {
    /*
     *Serial Version UID
     */
    private static final long serialVersionUID = 1L;

    private MessageStore messageStore;
    /*
     * Excute method
     *
     * Return result
     */
    public String execute() throws Exception{

        return SUCCESS;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }
}