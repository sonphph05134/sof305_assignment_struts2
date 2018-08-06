package vn.poly.sof305.sonphph05134.common.dto;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Hoai Son
 *
 */
public class ListDataDto<E> {
    
    /*================================================================================================================
     *===== PRIVATE PROPERTIES                                                                                   =====
     *================================================================================================================*/

    /** Rest API: List data */
    private List<E> list;
    private ListPagingDto paging;

    /*================================================================================================================
     *===== CONSTRUCTOR METHOD                                                                                   =====
     *================================================================================================================*/

    /**
     * Default constructor without argument
     */
    
    public ListDataDto() {
        this.list = new ArrayList<>();
        this.paging=new ListPagingDto();
    }
    /*================================================================================================================
     *===== GETTER & SETTER                                                                                      =====
     *================================================================================================================*/

    /**
     * Get value list
     */
    public List<E> getList() {
        return list;
    }
    /**
     * Set value for list
     * 
     * @param list the list to set
     */
    public void setList(List<E> list) {
        this.list = list;
    }
    /**
     * Get value paging
     * 
     * @return the paging
     */
    public ListPagingDto getPaging() {
        return paging;
    }
    /**
     * Set value for paging
     * 
     * @param paging the paging to set
     */
    public void setPaging(ListPagingDto paging) {
        this.paging = paging;
    }
    
}
