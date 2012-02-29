package com.happyl

class LandlordController {
    def scaffold = true
    
    def index= {
        redirect(action: 'register', params: params) }
 

    def register= {
        if (params){
            def landlord = new Landlord(params)
            if (landlord.validate()) {
                landlord.save()
                flash.message = "Successfully Created Landlord" 
               
                sendMail {
                    to params.email /// to where it should go. we should get the email from param
                    from "Qyaqub@happLandLord.com" ///  not really cool
                    subject "Welcome to happy landlord!" 
                    html '<table> <tr> <td > Dear' + " ${params.firstName}:" + 
                    ' </td></tr><tr><td> <br><p>Thank you for registering with Happy Landlord! :)<br><br><br> The Happy Landlord Team - QBA </p> </td></tr></table> '
                   
                }
                
                
                
                
                redirect(uri: '/property/list', params: params)
            }
        } else {
            flash.message = "Error Registering Landlord"
            return [landlord: landlord]
        }
    }
}
