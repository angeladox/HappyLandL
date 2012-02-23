package com.happyl

class Unit {
    
    static belongsTo = [Property, Landlord]
    
    String unitNo
    int sqFeet
    //byte[] photo
    String description
    int bedrooms
    
    
    static constraints = {
        unitNo(nullable: false, blank: false, matches: '^[0-9a-zA-Z]{1,5}\$')
        sqFeet(nullable: true, blank: true, matches: '^[0-9]{1,5}\$')
        //photo(maxSize: 4096, nullable: true)
        description(maxSize:1000, blank:true)
        bedrooms(inList: [1, 2, 3, 4, 5, 6, 7, 8, 9], nullable: false, blank: false) 
    }
}

