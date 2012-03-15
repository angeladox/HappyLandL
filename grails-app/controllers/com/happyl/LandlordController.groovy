package com.happyl

class LandlordController {
    def scaffold = true
    
    def index= {
         }
   
    def register= {
        if (!params.register) return
        
        if (params) {
            ////////////////////    
            def landlord = new Landlord(params) 
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
                
                redirect(uri: '/') 
            }else{
                flash.message = "Error Registering User"
                [ landlord: landlord ] 
            }

            /////////////////////    
        }else{
            [landlord: landlord]
        }  
    }
    
    def login = {
       // def landlord = Landlord.findByUserIdAndPassword(params.userId, params.password)
       // if (landlord) {
        //    redirect(uri: '/property/list')
       // }
    }
}


