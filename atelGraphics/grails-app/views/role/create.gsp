
<%@ page import="com.atelgraphics.domain.security.Role" %>
<g:applyLayout name="adminLayout"> 
	<article>
	    <h1><g:message code="role.create" default="Create Role" /></h1>

	   	<g:applyLayout name="errorsLayout"/>

	    <g:form action="save" method="post" >	      	
	        <g:applyLayout name="../role/form"/>    	
	      	<g:applyLayout name="formButtonsLayout"/>	       
	    </g:form>

	</article>
</g:applyLayout>	

