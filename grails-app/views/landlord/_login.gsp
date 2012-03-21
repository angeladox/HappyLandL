<div id="sidebar">
  <h2>Have an Account?</h2>
  <h2>Landlords Login Here!</h2>
   <div id="loginForm">
    <g:form controller ="landlord" action="authenticate"/>
      <ul>      
        <h1>User Id:      <g:textField name="userId" size="12"/></h1>
        <h1>Password:
        <g:passwordField name="password" size="12"/>
        </h1>
        <h><g:actionSubmit name="authenticate" value="loginhere"/></h1>
         <div class="message">${flash.message}</div>     
      </ul>
   </div>
</div>


