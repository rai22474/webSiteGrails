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
				</ul>
        	</nav>        	
  		</header>  		
  		<g:layoutBody/> 
  		<footer> 
  			<nav>
	        	<ul>
					<li><g:link controller="consults"><g:message code="atelGraphics.contact"/></g:link></li>
					<li><g:link uri="/aboutUs">Sobre nosotros</g:link></li>				
				</ul>
        	</nav>
        	<nav>
	        	<ul>
					<li><g:link controller="consults">Siguemos en twitter</g:link></li>
					<li><g:link controller="consults">Facebook</g:link></li>				
				</ul>
        	</nav>
        	<nav>
	        	<ul>
					<li><g:link uri="/admin"><g:message code="atelGraphics.admin"/></g:link></li>
				</ul>
        	</nav>     	      	
  		</footer>       
  		<footer class="copyright"> 
  			 <g:message code="atelGraphics.allRightsReserved"/>				
  		</footer>
    </body>
</html>
