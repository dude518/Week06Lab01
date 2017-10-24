/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package debug;


import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author 578291
 */
public class debugHandler extends TagSupport {

    public int doTag() throws JspException {
        HttpServletRequest servRequest = (HttpServletRequest) pageContext.getRequest();
        boolean debugExhist = false;
        boolean domainIsTrue = false;
        
        String queryString = servRequest.getQueryString();
        
        if(queryString != null)
        {
            debugExhist = queryString.toLowerCase().contains("debug");
        }
        
        String domainString = servRequest.getServerName();
        if(domainString != null)
        {
            if(domainString.toLowerCase().startsWith("test") || domainString.toLowerCase().contains("localhost"))
            {
                domainIsTrue = true;
            }
        }
        
        if(debugExhist && domainIsTrue)
        {
            return EVAL_BODY_INCLUDE;
        }
        else
        {
            return SKIP_BODY;
        }
        
        
        
    }
    
}
