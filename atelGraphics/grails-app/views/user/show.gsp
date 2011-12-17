<%@ page import="com.atelgraphics.domain.security.User" %>
<g:applyLayout name="adminLayout"> 
	<article>
	     <h1><g:message code="user.show" default="Show User" /></h1>
         <div class="dialog">
	           <div class="property">
	                <span class="name"><g:message code="user.username" default="Username" />:</span>                            
	                <span class="value">${fieldValue(bean: entityInstance, field: "username")}</span>                            
	           </div>     
	              <div class="property">
	                <span class="name"><g:message code="user.password" default="Password" />:</span>                            
	                <span class="value">${fieldValue(bean: entityInstance, field: "password")}</span>                            
	           </div>           
	              <div class="property">
	                <span class="name"><g:message code="user.accountExpired" default="Account Expired" />:</span>                            
	                <span class="value"><g:formatBoolean boolean="${entityInstance?.accountExpired}" /></span>                            
	           </div>                                  
	              <div class="property">
	                <span class="name"><g:message code="user.accountLocked" default="Account Locked" />:</span>                            
	                <span class="value"><g:formatBoolean boolean="${entityInstance?.accountLocked}" /></span>                            
	           </div>         
	              <div class="property">
	                <span class="name"><g:message code="user.enabled" default="Enabled" />:</span>                            
	                <span class="value"><g:formatBoolean boolean="${entityInstance?.enabled}" /></span>                            
	           </div>         
	               <div class="property">
	                <span class="name"><g:message code="user.passwordExpired" default="Password Expired" />:</span>                            
	                <span class="value"><g:formatBoolean boolean="${entityInstance?.passwordExpired}" /></span>                            
	           </div>       
	              <div class="property">
	                <span class="name"><g:message code="user.authorities" default="Authorities" />::</span>                            
	                <span class="value">${fieldValue(bean: entityInstance, field: "authorities")}</span>                            
	           </div>              
          </div>
          <span class="button"><g:link controller="user"><g:message code="return"/></g:link></span>
	</article>
</g:applyLayout>	
