<%@ page import="com.atelgraphics.domain.security.User" %>

<g:applyLayout name="adminLayout"> 
	<article>
	    <h1><g:message code="user.create" default="Create User" /></h1>
	   	<g:applyLayout name="errorsLayout"/>
	    
	    <g:form action="save" method="post" >	      	
	        <g:applyLayout name="../user/form"/>    	
	      	<g:applyLayout name="formButtonsLayout"/>	       
	    </g:form>
	
	</article>
</g:applyLayout>	

