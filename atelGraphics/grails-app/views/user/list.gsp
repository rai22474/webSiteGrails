
<%@ page import="com.atelgraphics.domain.security.User" %>
<g:applyLayout name="adminLayout"> 
	 <article>
	     <h1><g:message code="user.list" default="User List" /></h1>
	     <g:if test="${flash.message}">
	     <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
	     </g:if>
	     <g:form>
			<div class="tableActions">   
			    <nav class="singleElementActions">
		            <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
		       		<span class="button"><g:actionSubmit class="show" action="show" value="${message(code: 'default.show.label', default:'Show')}" /></span>
		       		<span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code:'default.button.delete.label', default:'Delete')}" /> </span>
		        </nav>
		        <nav class="noElementActions">
		        	<span class="button"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>	        	
		        </nav>
	        </div>
		     <div class="list">
		         <table>
		             <thead>
		                 <tr>
		                 	<th>Selection</th>
		            	    <g:sortableColumn property="username" title="Username" titleKey="user.username" />
		                 
		            	    <g:sortableColumn property="password" title="Password" titleKey="user.password" />
		                 
		            	    <g:sortableColumn property="accountExpired" title="Account Expired" titleKey="user.accountExpired" />
		                 
		            	    <g:sortableColumn property="accountLocked" title="Account Locked" titleKey="user.accountLocked" />
		                 
		            	    <g:sortableColumn property="enabled" title="Enabled" titleKey="user.enabled" />
		                 
		            	    <g:sortableColumn property="passwordExpired" title="Password Expired" titleKey="user.passwordExpired" />
		                 
		                 </tr>
		             </thead>
		             <tbody>
		             <g:each in="${entityInstanceList}" status="i" var="userInstance">
		                 <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
		                 	 
		                 	 <td><g:hiddenField name="identifier" value="${userInstance.id}"/><input type="checkbox" id="${userInstance.id}" name="${userInstance.id}"/></td>
		                 		
		                 	 <td>${fieldValue(bean: userInstance, field: "username")}</td>
		                     <td>${fieldValue(bean: userInstance, field: "password")}</td>
		                 
		                     <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
		                 
		                     <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
		                 
		                     <td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
		                 
		                     <td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
		                 
		                 </tr>
		             </g:each>
		             </tbody>
		         </table>
		     </div>
		     <div class="paginateButtons">
		         <g:paginate total="${entityInstanceTotal}" />
		     </div>
	     </g:form>
	 </article>
</g:applyLayout>	
