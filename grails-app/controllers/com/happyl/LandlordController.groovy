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
                redirect(uri: '/property/list', params: params)
            }
            } else {
                flash.message = "Error Registering Landlord"
                return [landlord: landlord]
            }
        }
    }
