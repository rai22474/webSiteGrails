
<%@ page import="com.atelgraphics.domain.security.Role" %>
<g:applyLayout name="adminLayout"> 	     
	<article>
	     <h1><g:message code="role.edit" default="Edit User" /></h1>	  
	     <g:applyLayout name=errorsLayout"/>
	     
	     <g:form method="post" action="update">
	         <g:hiddenField name="id" value="${entityInstance?.id}" />
	         <g:hiddenField name="version" value="${entityInstance?.version}" />
			
			 <g:applyLayout name="../role/form"/> 	      		         
	       	 <g:applyLayout name="formButtonsLayout"/>
	     </g:form>	
	</article>
</g:applyLayout>