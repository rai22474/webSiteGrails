<g:applyLayout name="userLayout"> 
	<article>
		<header>
			<h1><g:message code="atelGraphics.login"/></h1>
		</header>	
		 <g:hasErrors bean="${consult}">
            <div class="errors">
                <g:renderErrors bean="${consult}" as="list" />
            </div>
         </g:hasErrors>	
		<g:form action="login">
			<div class="property">
				<label for='username'>Login ID</label>
				<div class='value ${hasErrors(bean:consult,field:'name','errors')}'>					
				  <input type='text' required="required" name='username' id='username' />
				</div>		
			</div> 
			<div class="property">
				<label for='password'>Password</label>
				<div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
					<input type='password' required="required" name='password' id='password' />
				</div>	
			</div> 
			<div class="property">
				<label for='rememberMe'>Remember me</label>
				<div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
					<input type='checkbox' name='${rememberMeParameter}' id='rememberMe'
					<g:if test='${hasCookie}'>checked='checked'</g:if> />
				</div>
			</div> 
	        <div class="buttons">
             	<span class="button"><g:submitButton name="login" class="login" value="${message(code: 'login.label', default: 'Login')}" /></span>
             </div>            
		</g:form>			
		<g:link>forgot your password</g:link>
		<g:link>forgot your username</g:link>
	</article>
	<article>
		<header>
			<h1><g:message code="atelGraphics.register"/></h1>
		</header>
	
		 <g:hasErrors bean="${consult}">
            <div class="errors">
                <g:renderErrors bean="${consult}" as="list" />
            </div>
         </g:hasErrors>	
		<g:form action="register">
			<div class="property">
            	<label for="name"><g:message code="contact.name.label" default="Name" /></label>
                <div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
   					<input required="required" type="text" name="name" placeholder="my name" value="${fieldValue(bean:consult,field:'name')}"/>
				</div>
            </div>
            <div class="property">
            	<label for="name"><g:message code="contact.name.label" default="Name" /></label>
                <div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
   					<input required="required" type="text" name="name"  value="${fieldValue(bean:consult,field:'name')}"/>
				</div>
            </div>     
            <div class="property">
				<label for='password'>Password</label>
				<div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
					<input type='password' required="required" name='password' id='password' />
				</div>	
			</div> 
			<div class="property">
				<label for='password'>Verify Password</label>
				<div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
					<input type='password' required="required" name='password' id='password' />
				</div>	
			</div>           
            <div class="property">
            	<label for="email"><g:message code="contact.email.label" default="Email" /></label>
                <div class='value ${hasErrors(bean:consult,field:'email','errors')}'>
   					<input required="required" type="email" name="email" placeholder="myMail@email.com" value="${fieldValue(bean:consult,field:'email')}"/>
				</div>
            </div>
            <div class="property">
            	<label for="email"><g:message code="contact.email.label" default="Email" /></label>
                <div class='value ${hasErrors(bean:consult,field:'email','errors')}'>
   					<input required="required" type="email" name="email" value="${fieldValue(bean:consult,field:'email')}"/>
				</div>
            </div>
            <div class="buttons">
             	<span class="button"><g:submitButton name="register" class="consult" value="${message(code: 'register', default: 'Register')}" /></span>
            </div>            
		</g:form>		
	</article>
</g:applyLayout>