package com.happyl

class Landlord {
   
    String userId
    String firstName
    String lastName
    String email
    String password
    Date dateCreated
    String phone
    
      
    static constraints = {
        userId(size:3..10, unique:true, blank: false)
        firstName( blank: false, size: 1..20)
        lastName( blank:false,)
        email(email:true, blank: false)
        password(size:6..12, blank:false, validator: { passwd, landlord ->
            passwd != landlord.userId
		})
        phone(blank:false,matches:/^\([1-9]\d{2}\)\s?\d{3}\-\d{4}$/)
        dateCreated()
        
    }
    
    static hasMany =[asset:Property]
    
    String toString(){
        "Landlord: ${firstName} ${lastName} (${id})"
    }
    
}
