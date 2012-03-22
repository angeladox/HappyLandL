<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
  <g:layoutHead/>
  <r:layoutResources />
</head>
<body>
  <div id="grailsLogo" role="banner"><a href="http://localhost:9090/HappyL"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>



<div id="login" role="complementary" align="left">
    <g:if test="${session.landlord}">
      <p> Welcome ${session.landlord.firstName} </p>
      
      <div>
          <a href="http://localhost:9090/HappyL/property/listprop/${session.landlord.userId}">View Your Property List</a>
      </p>
      </div>
      <div >
        <p>
        <g:link controller="property" action="list">Add a Property       
        </g:link>
       
      </p>
      <p>
        <g:link controller="unit" action="list">View a Unit          
        </g:link>
      </p>                            


      <p>
        <g:link controller="tenant" action="list">View a Tenant</g:link>
      </p>                 
  </div>
      
      
      
      
      <g:form controller="landlord" action="logout" method="post" >
        <span>
            <input type="submit" value="Logout" />
          </span>
        
      </g:form>
         </g:if>
    <g:else> 
       <p><br>Have An Account? Login here!<br></p>
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:form controller="landlord" action="authenticate" method="post" >
          
                  <label for="userId">User Name:</label> <br>             
                  <input type="text" id="userId" name="userId"/>
                <br><br>
                    <label for="password">Password:</label><br>             
                  <input type="password" id="password" name="password"/>
                  <br><br>
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









<g:layoutBody/>
<div class="footer" role="contentinfo" style =" background-color: #007ca2; color: white">
  <p style="text-align: center;">
     <g:link controller ="siteinfo" action= "contact"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          "> 

    Contact Us      


  </g:link> 
    &nbsp | &nbsp
  <g:link controller ="siteinfo" action= "aboutus"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          "> 

    About Happy Landlord      


  </g:link>
    &nbsp | &nbsp
  <g:link controller ="siteinfo" action= "privacy"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          "> 

Privacy Policy

  </g:link>    
  </p>

</div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
<div id="copyrights">

  <p>Copyright © 2012 Happy Landlord LLC </p>

</div>

</body>
</html>