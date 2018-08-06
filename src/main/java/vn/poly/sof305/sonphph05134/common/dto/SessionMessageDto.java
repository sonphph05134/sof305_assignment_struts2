package vn.poly.sof305.sonphph05134.common.dto;

/**
 * @author Hoai Son
 *
 */
public class SessionMessageDto {
	private String messageCode;

    private Object [] messageArgs;

    /**
     * @return the messageCode
     */
    public String getMessageCode() {
        return messageCode;
    }

	/**
	 * @return the messageArgs
	 */
	public Object[] getMessageArgs() {
		return messageArgs;
	}

	/**
	 * @param messageArgs the messageArgs to set
	 */
	public void setMessageArgs(Object... args) {
		this.messageArgs = args;
	}

	/**
	 * @param messageCode the messageCode to set
	 */
	public void setMessageCode(String messageCode) {
		this.messageCode = messageCode;
	}
}
