package com.happyl

class Tenant {

    // current tenant info	
    String firstName
    String lastName
    String email
    String phone
    int creditScore
    // tenant last address info
    String prevAddress
    String prevLandlord
    String prevLandlordPhone
    
    String comments
    Date dateCreated
    
    
    
    //static belongsTo = [Unit, Property] ***fix later***
        
    static constraints = {
        
    //constraints for tenant
    firstName(blank:false,nullable: false)
    lastName(blank:false,nullable:false)
    email(email:true,unique:true)
    //regex for telephone number - must be unique. 
    phone(blank:false, unique:true, matches:/^\([1-9]\d{2}\)\s?\d{3}\-\d{4}$/)
    creditScore(inList:[800,700,600,500,400,300,200])
    prevLandlord(blank:true)
    prevAddress(blank:true, maxSize:100)
    prevLandlordPhone(blank:true, unique:true, matches:/^\([1-9]\d{2}\)\s?\d{3}\-\d{4}$/)
    comments(blank:true,maxSize:500)
    dateCreated()
    
    }
}
