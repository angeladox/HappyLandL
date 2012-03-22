<!doctype html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Welcome to Grails</title>
<style type="text/css" media="screen">
#register {
  background-color: #ffff00;
  border: .2em solid #00fff;
  margin: 2em 2em 1em;
  padding: 1em;
  width: 12em;
  float: right;
  -moz-box-shadow: 0px 0px 1.25em #ccc;
  -webkit-box-shadow: 0px 0px 1.25em #ccc;
  box-shadow: 0px 0px 1.25em #ccc;
  -moz-border-radius: 0.6em;
  -webkit-border-radius: 0.6em;
  border-radius: 0.6em;
}

.ie6 #register {
  display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#register ul {
  font-size: 0.9em;
  list-style-type: none;
  margin-bottom: 0.6em;
  padding: 0;
}

#register h1 {
  text-transform: uppercase;
  font-size: 1.1em;
  margin: 0 0 0.3em;
}
#login {
  background-color: #eee;
  border: .2em solid #fff;
  margin: 2em 2em 1em;
  padding: 1em;
  width: 12em;
  float: right;
  -moz-box-shadow: 0px 0px 1.25em #ccc;
  -webkit-box-shadow: 0px 0px 1.25em #ccc;
  box-shadow: 0px 0px 1.25em #ccc;
  -moz-border-radius: 0.6em;
  -webkit-border-radius: 0.6em;
  border-radius: 0.6em;
}

.ie6 #login {
  display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#login p {
  font-style:bold;
  font-size: 0.9em;
  list-style-type: none;
  margin-bottom: 0.6em;
  padding: 0;
}

#login ul {
  font-style: bold;
  font-size: 0.9em;
  list-style-type: none;
  margin-bottom: 0.6em;
  padding: 0;
}

#login h1 {
  text-transform: uppercase;
  text-decoration:underline;
  font-family: "Impact";
  color: #8A2BE2;
  float: center;
  font-style: bold;
  font-size: 1.1em;
  margin: 0 0 0.3em;
}

                  
                  
                  
#page-body {
  margin: 2em 1em 1.25em 18em;
}
#conLinks {
  margin-top: 1em;
  background-color: #eee;
  border: .2em solid #fff;

  padding: 1em;
  width: 20em;
  -moz-box-shadow: 0px 0px 1.25em #ccc;
  -webkit-box-shadow: 0px 0px 1.25em #ccc;
  box-shadow: 0px 0px 1.25em #ccc;
  -moz-border-radius: 0.6em;
  -webkit-border-radius: 0.6em;
  border-radius: 0.6em;


}
h2 {
  margin-top: 1em;
  margin-bottom: 0.3em;
  font-size: 1em;
}

p {
  margin: 0.25em 0;
}

#controller-list ul {
  list-style-position: inside;
}

#controller-list li {
  list-style-position: inside;
  margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
  #status {
    display: none;
    }

#page-body {
margin: 0 1em 1em;
}

#page-body h1 {
margin-top: 0;
}
}
</style>
</head>
<body>
  <a href="#page-body" class="skip">
    <g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
  </a>


  
  <div id="login" role="complementary" align="left">
    <g:if test="${session.landlord}">
      <p> Welcome ${session.landlord.firstName} </p>
       <h1><g:link controller ="landlord" action= "logout">Logout</g:link></h1>
                           
                                
    </g:if>
    <g:else> 
       <p><br>Have An Account? Login here!<br></p>
       

       
        
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:form controller="landlord" action="authenticate" method="post" >
          <table>
            <tbody>            
                               
              <tr>                  
                <td>
                  <label for="userId">User Name:</label> <br>             
                  <input type="text" id="userId" name="userId"/>
                </td>
                                
              </tr> 

              <tr>                  
                <td>
                    <label for="password">Password:</label><br>             
                  <input type="password" id="password" name="password"/>
                </td>
              </tr> 
            </tbody>
          </table>
         <div>
          <span>
            <input type="submit" value="Login" />
          </span>
        </div>               
      </g:form>                                
                               
                                
                                
                                
                                
       <p><br>New to HappyLandlord? Register here!<br></p>
    <h1><g:link controller ="landlord" action= "register">Register</g:link></h1>
    </g:else>
   
     
 
    
    
    
  </div>
  <div >
    
        <g:link controller="property" action="list">View a Property       
        </g:link>
       &nbsp &nbsp 

      
        <g:link controller="unit" action="list">View a Unit          
        </g:link>
           &nbsp &nbsp                          


      
        <g:link controller="tenant" action="list">View a Tenant</g:link>
                             
  </div>


  <div id="page-body" role="main">

    <h1>Welcome to HappyLandlord</h1>
    <p><img src="${resource(dir: 'images', file: 'happy_face.jpg')}" alt="Grails"/></p>
    
  </div>


</body>
</html>
