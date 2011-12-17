<div class="dialog">

    <div class="property">
        <label for="username"><g:message code="user.username" default="Username" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'username', 'errors')}">
            <input type="text" required="required" name="username" value="${fieldValue(bean: entityInstance, field: 'username')}" />
        </div>
    </div>

    <div class="property">
        <label for="password"><g:message code="user.password" default="Password" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'password', 'errors')}">
            <input type="password" required="required" name="password" value="${fieldValue(bean: entityInstance, field: 'password')}" />
        </div>
    </div>

    <div class="property">
        <label for="accountExpired"><g:message code="user.accountExpired" default="Account Expired" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'accountExpired', 'errors')}">
            <g:checkBox name="accountExpired" value="${entityInstance?.accountExpired}" />
        </div>
    </div>

    <div class="property">
        <label for="accountLocked"><g:message code="user.accountLocked" default="Account Locked" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'accountLocked', 'errors')}">
            <g:checkBox name="accountLocked" value="${entityInstance?.accountLocked}" />
        </div>
    </div>

    <div class="property">
        <label for="enabled"><g:message code="user.enabled" default="Enabled" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'enabled', 'errors')}">
            <g:checkBox name="enabled" value="${entityInstance?.enabled}" />
        </div>
    </div>

    <div class="property">
        <label for="passwordExpired"><g:message code="user.passwordExpired" default="Password Expired" />:</label>
        <div class="value ${hasErrors(bean: entityInstance, field: 'passwordExpired', 'errors')}">
            <g:checkBox name="passwordExpired" value="${entityInstance?.passwordExpired}" />
        </div>
    </div>     
</div>


