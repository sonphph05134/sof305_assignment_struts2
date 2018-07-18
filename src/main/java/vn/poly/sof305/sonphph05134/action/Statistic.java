package vn.poly.sof305.sonphph05134.action;

import com.opensymphony.xwork2.ActionSupport;
import vn.poly.sof305.sonphph05134.model.MessageStore;

public class Statistic extends ActionSupport {
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
    public String statistic() throws Exception{

        return SUCCESS;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }
}
