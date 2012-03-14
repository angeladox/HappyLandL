<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
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

			#login ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#login h1 {
				text-transform: uppercase;
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
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div id="login" role="complementary"> <h1>login div</h1>  <g:link controller="landlord" action="register">Register</g:link></div>
                  
                <div id="page-body" role="main">
                      
                      
			<h1>Welcome to HappyLandlord</h1>
			<p>This is the home of HappyLandlord - YAY!</p>
                        <div id="conLinks" align="left">
                          
                           

                              
                                <g:link controller="property" action="list">View a Property        </g:link>
                              &nbsp &nbsp 
                              
                                <g:link controller="unit" action="list">View a Unit             </g:link>
                              &nbsp &nbsp 
                              
                                <g:link controller="tenant" action="list">View a Tenant</g:link>
                              
                         
                          
                           
                          
                        </div>
		</div>
                      
                      
	</body>
</html>
