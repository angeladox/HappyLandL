package com.happyl
import grails.plugins.springsecurity.Secured

class PropertyController {

    def scaffold = true
    def index={ 
       redirect(action: 'list') }
   @Secured(['ROLE_USER'])
    def listprop = {
        def landlord = Landlord.findByUserId(params.id)
        [ landlord:landlord, assetAmt: landlord.asset.size() ]
    }
}