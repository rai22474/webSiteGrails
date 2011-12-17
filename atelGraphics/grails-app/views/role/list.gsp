
<%@ page import="com.atelgraphics.domain.security.Role" %>
<g:applyLayout name="adminLayout"> 
	 <article>
	     <h1><g:message code="role.list" default="Role List" /></h1>
	     <g:if test="${flash.message}">
	     <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
	     </g:if>
	     <g:form action="save" method="post" >
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
		                
		           	    <g:sortableColumn property="authority" title="Authority" titleKey="role.authority" />
		                
		                </tr>
		            </thead>
		            <tbody>
		            <g:each in="${entityInstanceList}" status="i" var="roleInstance">
		                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
	              		<td><input type="hidden" name="identifier" value="${roleInstance.id}"/><input type="checkbox" id="${roleInstance.id}" name="${roleInstance.id}"/></td>
					   
		                
			                    <td>${fieldValue(bean: roleInstance, field: "authority")}</td>
			                
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
