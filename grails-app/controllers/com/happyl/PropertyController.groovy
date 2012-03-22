package com.happyl

class PropertyController {

    def scaffold = true
    def index={ 
       redirect(action: 'list') }
   
    def listprop = {
        def landlord = Landlord.findByUserId(params.id)
        [ landlord:landlord ]
    }
}