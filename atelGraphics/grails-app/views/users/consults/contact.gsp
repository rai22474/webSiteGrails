<g:applyLayout name="userLayout"> 
	<article>
		<header>
			<h1><g:message code="atelGraphics.contactUs"/></h1>
		</header>	
			
		<h2><g:message code="atelGraphics.contact"/></h2>
		<h3><g:message code="atelGraphics.address"/></h3>
		<span class="address">Avda. Camilo Jose Cela 13, 18, 1-2	Parque Empresarial, Las Rozas, Madrid 28232 Spain</span>
		<h3><g:message code="atelGraphics.phone"/></h3> 
		<span class="phone">(+34) 911197699</span>
		<h3><g:message code="atelGraphics.mobilePhone"/></h3> 
		<span class="phone">(+34) 644255830</span>
		<h3><g:message code="atelGraphics.url"/></h3>
		<a href="${createLink(uri:'http://www.atelgraphics.com')}">http://www.atelgraphics.com</a>	
	</article>
	<article>
		<header>
			<h1><g:message code="atelGraphics.contactForm"/></h1>
		</header>
		<p class="contactText">
			<g:message code="atelGraphics.contactText"/>
		</p>
		 <g:hasErrors bean="${consult}">
            <div class="errors">
                <g:renderErrors bean="${consult}" as="list" />
            </div>
         </g:hasErrors>	
		<g:form action="sendConsult">
			<div class="property">
            	<label for="name"><g:message code="contact.name.label" default="Name" /></label>
                <div class='value ${hasErrors(bean:consult,field:'name','errors')}'>
   					<input required="required" type="text" name="name"  value="${fieldValue(bean:consult,field:'name')}" />
				</div>
            </div>     
            <div class="property">
            	<label for="subject"><g:message code="contact.subject.label" default="Subject" /></label>
               	 <div class='value ${hasErrors(bean:consult,field:'subject','errors')}'>
   					<input required="required" type="text" name="subject" value="${fieldValue(bean:consult,field:'subject')}"/>
				</div>
            </div>
            <div class="property">
            	<label for="email"><g:message code="contact.email.label" default="Email" /></label>
                <div class='value ${hasErrors(bean:consult,field:'email','errors')}'>
   					<input required="required" type="email" name="email" value="${fieldValue(bean:consult,field:'email')}"/>
				</div>
            </div>
            <div class="property">
            	<label for="message"><g:message code="contact.message.label" default="Message" /></label>
                <div class='value ${hasErrors(bean:consult,field:'message','errors')}'>
   					  <g:textArea class="value ${hasErrors(bean: consult, field: 'message', 'errors')}" name="message" maxlength="30" value="${consult?.message}" />
				</div>
            </div>
              <div class="property">
            	<label for="sendCopy"><g:message code="contact.sendCopy.label" default="Send copy" /></label>
               <div class='value ${hasErrors(bean:consult,field:'sendCopy','errors')}'>
   					<input type="checkbox" name="sendCopy" value="${fieldValue(bean:consult,field:'sendCopy')}"/>
				</div>
           </div>
            <div class="buttons">
             	<span class="button"><g:submitButton name="sendConsult" class="consult" value="${message(code: 'contact.sendConsult.label', default: 'Send consult')}" /></span>
             </div>            
		</g:form>		
	</article>
</g:applyLayout>	