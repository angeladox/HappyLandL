<div id="sidebar">
  <h2>Have an Account?</h2>
  <h2>Landlords Login Here!</h2>
   <div id="loginForm">
    <g:form controller ="landlord" action="login">
      <ul>
        <h1>User Id:      <g:textField name="userId" size="12"/></h1>
        <h1>Password:
        <g:passwordField name="password" size="12"/>
        </h1>
        <h><g:submitButton name="login" value="Login"/></h1>
      </ul>
    </g:form>
   </div>
</div>
