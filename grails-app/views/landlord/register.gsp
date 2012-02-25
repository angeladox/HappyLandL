<html>
    <head>
        <title>Register New Landlord</title>
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

        <h1>Register New Landlord</h1>

        <g:form action="register">
            <dl>
                <dt>User Id</dt>
                <dd><g:textField name="userId" value="${landlord?.userId}"/>
                <g:hasErrors bean="${landlord}" field="userId">
                        <g:eachError bean="${landlord}" field="userId">
                            <p style="color: red;"><g:message error="${it}"/></p>
                        </g:eachError>
                    </g:hasErrors>
                </dd>
                
                <dt>First Name</dt>
                <dd><g:textField name="firstName" value="${landlord?.firstName}"/>
                <g:hasErrors bean="${landlord}" field="firstName">
                        <g:eachError bean="${landlord}" field="firstName">
                            <p style="color: red;"><g:message error="${it}"/></p>
                        </g:eachError>
                    </g:hasErrors> 
                </dd>
                
                <dt>Last Name</dt>
                <dd><g:textField name="lastName" value="${landlord?.lastName}"/>
                <g:hasErrors bean="${landlord}" field="lastName">
                        <g:eachError bean="${landlord}" field="lastName">
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
                
                <dt>Email</dt>
                <dd>
                    <g:textField name="email" value="${landlord?.email}"/>
                    <g:hasErrors bean="${landlord}" field="email">
                        <g:eachError bean="${landlord}" field="email">
                            <p style="color: red;"><g:message error="${it}"/></p>
                        </g:eachError>
                    </g:hasErrors>
                </dd>
                
                <dt>Phone Number: </dt>
                <dd>
                  <g:textField name="phone" value="${landlord?.phone}"/>
                  <g:hasErrors bean="${landlord}" field="phone">
                        <g:eachError bean="${landlord}" field="phone">
                            <p style="color: red;"><g:message error="${it}"/></p>
                        </g:eachError>
                    </g:hasErrors>  
                </dd>
                
                <dt><g:submitButton name="register" value="Register"/></dt>
            </dl>

        </g:form>

    </body>
</html>