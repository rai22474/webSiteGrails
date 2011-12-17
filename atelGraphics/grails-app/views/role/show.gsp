
<%@ page import="com.atelgraphics.domain.security.Role" %>
<g:applyLayout name="adminLayout"> 
	<article>
        <div class="dialog">
         
             <div class="property">
                 <span class="name"><g:message code="role.authority" default="Authority" />:</span>
                 
                 <span class="value">${fieldValue(bean: entityInstance, field: "authority")}</span>
                 
             </div>
             
        </div>
    	 <span class="button"><g:link><g:message code="return"/></g:link></span>
 	</article>
</g:applyLayout>