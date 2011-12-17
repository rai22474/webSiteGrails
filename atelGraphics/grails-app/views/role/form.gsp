
<%@ page import="com.atelgraphics.domain.security.Role" %>
<div class="dialog">
    
           <div class="property">
               <label for="authority"><g:message code="entityInstance.authority" default="Authority" />:</label>
               <div  class="value ${hasErrors(bean: entityInstance, field: 'authority', 'errors')}">
                   <g:textField name="authority" value="${fieldValue(bean: entityInstance, field: 'authority')}" />

               </div>
           </div>
      
      
</div>            
