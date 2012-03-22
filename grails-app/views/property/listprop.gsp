<html>
   <head>
      <title>
              Properties for ${landlord.firstName}
      </title>
      <meta name="layout" content="main"/> 
   </head>
<body>
  
  
  
<h1>Properties for ${landlord.firstName}</h1>
<br>
<div class="allProps"> 
  <g:each in="${landlord.asset}" var="asset"> 
    <div class="propEntry">
      <div class="propText"> 
        ${asset.address}
                        
      </div>
      <div class="propDetails">
        <br>
                 ${asset.city} , ${asset.state}  ${asset.zipCode}
              </div>
           </div>
        </g:each>
    </div>
   </body>
</html>

