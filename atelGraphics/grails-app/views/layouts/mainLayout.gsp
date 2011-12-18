<!DOCTYPE html>
	<html>
    <head>
        <title>AtelGraphics Home</title>
        <link rel="shortcut icon" href="${resource(dir:'images',file:'atelGraphicsIcono.gif')}" type="image/x-icon" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
       
        <g:layoutHead/>
    </head>
    <body>
  		<header>
  			<figure>
	  			<img  class="logo" src="${resource(dir:'images',file:'atelGraphicsLogo.png')}" alt="AtelGraphics" border="0" />
	  		</figure>
			<nav class="userMenu">
	        	<ul>
					<li><g:link controller="login"><g:message code="atelGraphics.login"/></g:link></li>
					<li><g:link controller="login"><g:message code="atelGraphics.register"/></g:link></li>
					<li><g:link uri="/admin"><g:message code="atelGraphics.admin"/></g:link></li>
				</ul>
        	</nav>        	
  		</header>  		
  		<g:layoutBody/>        
  		<footer> 
  			 <g:message code="atelGraphics.allRightsReserved"/>				
  		</footer>
    </body>
</html>
