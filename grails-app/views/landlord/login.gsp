<html>
  <head>
    <title>Landlord Login</title>
    <meta name="layout" content="main"/>
    <style>
      dd {
        text-align: left;
        margin-left: 80px;
        margin-top: 5px;
      }
    </style>
  </head>
  <body>

    <h1>Landlord Login</h1>
   <g:form action="login">
    <dl>
      <dt>User Id</dt>
      <dd><g:textField name="userId" value="${landlord?.userId}"/>
      <g:hasErrors bean="${landlord}" field="userId">
        <g:eachError bean="${landlord}" field="userId">
          <p style="color: red;"><g:message error="${it}"/></p>
        </g:eachError>
      </g:hasErrors>
      </dd>

      <dt>Password</dt>
      <dd>
      <g:passwordField name="password" value="${landlord?.password}"/> 
      <g:hasErrors bean="${landlord}" field="password">
        <g:eachError bean="${landlord}" field="password">
          <p style="color: red;"><g:message error="${it}"/></p>
        </g:eachError>
      </g:hasErrors>
      </dd>

      <dt><g:submitButton name="login" value="Login"/></dt>
    </dl>

  </g:form>

</body>
</html>

