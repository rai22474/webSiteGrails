<%@ page import="com.atelgraphics.domain.security.User" %>
<g:applyLayout name="adminLayout"> 	     
	<article>
	     <h1><g:message code="user.edit" default="Edit User" /></h1>	  
	     <g:applyLayout name=errorsLayout"/>
	     
	     <g:form method="post" action="update">
	         <g:hiddenField name="id" value="${entityInstance?.id}" />
	         <g:hiddenField name="version" value="${entityInstance?.version}" />
			
			 <g:applyLayout name="../user/form"/> 	      		         
	       	 <g:applyLayout name="formButtonsLayout"/>
	     </g:form>
	
	</article>
</g:applyLayout>	