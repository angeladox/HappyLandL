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
        userId(size:3..10, unique:true,nullable:false, blank: false)
        firstName(nullable: false, blank: false, size: 1..20)
        lastName(nullable: false, blank:false,)
        email(email:true, blank: false, nullable: false)
        password(size:6..12, nullable:false, blank:false, validator: { passwd, landlord ->
            passwd != landlord.userId
		})
        phone(nullable:false,blank:false,matches:/^\([1-9]\d{2}\)\s?\d{3}\-\d{4}$/)
        dateCreated()
    }
    
}
