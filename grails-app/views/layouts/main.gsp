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
  <div id="grailsLogo" role="banner"><a href="/HappyL"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>



<div id="login" role="complementary" align="left">
    <g:if test="${session.landlord}">
      <p> Welcome ${session.landlord.firstName} </p>
      
      <div>
          <a href="/HappyL/property/listprop/${session.landlord.userId}" style ="font-size: .8em; font-style: bold; font-family: tahoma">View Your Property List</a>
      </p>
      </div>
      <div >
        <p>
        <g:link controller="property" action="list" style = "font-size: .9em; font-style: bold; font-family: tahoma" >Add a Property       
        </g:link>
       
      </p>
      <p>
        <g:link controller="unit" action="list" style ="font-size: .9em; font-style: bold; font-family: tahoma">View My Units          
        </g:link>
      </p>                            


      <p>
        <g:link controller="tenant" action="list" style = "font-size: .9em; font-style: bold; font-family: tahoma">View My Tenants</g:link>
      </p>                 
  </div>
      
      
      
      
      <g:form controller="landlord" action="logout" method="post" style ="font-family: tahoma">
        <span>
            <input type="submit" value="Logout" />
          </span>
        
      </g:form>
         </g:if>
    <g:else> 
       <p style ="font-family: tahoma;"><br>Have An Account? Login here!<br></p>
      <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
      </g:if>
      <g:form controller="landlord" action="authenticate" method="post" style ="font-family: tahoma; font-size: .9em;">
        <br>
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
       <p style ="font-family: tahoma; font-style: bold;"><br>New to HappyLandlord? Register here!<br></p>
    <h1><g:link controller ="landlord" action= "register">Register</g:link></h1>
    </g:else>    
  </div>









<g:layoutBody/>
<div class="footer" role="contentinfo" style =" background-color: #007ca2; color: #99FFCC">
  <p style="text-align: center;">
    <g:link controller ="siteinfo" action= "contactus"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          font-family: tahoma
          "> Contact Us
    </g:link>
     
 
    &nbsp | &nbsp
  <g:link controller ="siteinfo" action= "aboutus"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          font-family: tahoma
          "> 

    About Happy Landlord      


  </g:link>
    &nbsp | &nbsp
  <g:link controller ="siteinfo" action= "privacy"  style="

          text-decoration:underline;
          font-style: bold;
          font-size: 1.1em;
          font-family: tahoma
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