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
                    subject "grails app mail Y!" 
                    body " Thank you for registering with Happy Landlord! :)"
                    render "email sent" /// not needed 
                }
                
                
                
                
                redirect(uri: '/property/list', params: params)
            }
        } else {
            flash.message = "Error Registering Landlord"
            return [landlord: landlord]
        }
    }
}
