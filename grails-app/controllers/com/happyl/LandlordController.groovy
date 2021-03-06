package com.happyl

class LandlordController {
    def scaffold = true
    def springSecurityService

    def index= {
      
        
    }
   
    def register= {
        if (!params.register) return
        
        if (params) {
            
            def landlord = new Landlord(userId: params.userId,
                                        firstName: params.firstName, 
                                        lastName: params.lastName,
                                        email: params.email, 
                                        phone: params.phone
                                       )
                                     
            if (landlord.validate()) {
                
                landlord.save()
                flash.message = "Successfully Created User"
                
                sendMail {
                    to params.email /// to where it should go. we should get the email from param
                    from "Qyaqub@happLandLord.com" ///  not really cool
                    subject "Welcome to happy landlord!" 
                    html '<table> <tr> <td > Dear' + " ${params.firstName}:" + 
                    ' </td></tr><tr><td> <br><p>Thank you for registering with Happy Landlord! :)<br><br><br> The Happy Landlord Team - ABQ - </p> </td></tr></table> '
                    
                }
                ////////////////////
                def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)

                def newUser = new SecUser(
                    username: params.userId,
                    password: params.password,
                    enabled: true).save()
                
                
                if (!newUser.authorities.contains(userRole)) {
                    SecUserSecRole.create newUser, userRole
                }
                                
                /////////////////////
                
                redirect (action: authenticate, params: params) 
            }else{
                flash.message = "Error Registering User"
                [ landlord: landlord ] 
            }

        }else{
            [landlord: landlord]
        }  
    }
    
    def aboutus = {}
    
    def login = {}
  
    def authenticate = {
        def landlord = Landlord.findByUserId(params.userId)
        if(landlord){
            def  props = Property.getAll()
           
            ///def listS = {lid, listp -> listp.findAll{!lid.contains(it)}}
            
            //def propList = listS(landlord.id, props)
            
            //def facilities = Facility.findAllByNameIlike("%${params.facilitySearch}%")                   
            session.landlord = landlord           
            flash.message = "Hello ${landlord.firstName}!"
            redirect(controller:"property",action:"listprop", params: [id:session.landlord.userId])
            //redirect(uri:"http://localhost:9090/HappyL/property/listprop/${session.landlord.userId}")
            //redirect(uri: '/', params: params )      
        }else{
            flash.message = "Sorry, ${params.userId}. Please try again."
            redirect(uri:"/")
        }
    }
  
    def logout = {
        flash.message = "Goodbye ${session.landlord.firstName}"
        session.landlord = null
        redirect(uri: "/")      
    }  
}



