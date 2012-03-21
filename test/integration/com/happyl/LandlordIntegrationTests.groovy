package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class LandlordIntegrationTests extends GrailsUnitTestCase{
    void testSave(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertNotNull landlord.save()
        assertNotNull landlord.userId
        def foundLandlord = Landlord.get(landlord.id)
        assertEquals ('angelaloo', foundLandlord.userId)
    }
    
    void testSaveAndUpdate(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertNotNull landlord.save()
        
        def foundLandlord = Landlord.get(landlord.id)
        foundLandlord.password = 'password'
        foundLandlord.save()
        
        def editedLandlord = Landlord.get(landlord.id)
        assertEquals 'password', editedLandlord.password
    }
    
    void testSaveThenDelete(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertNotNull landlord.save()
        
        def foundLandlord = Landlord.get(landlord.id)
        foundLandlord.delete()
        
        assertFalse Landlord.exists(foundLandlord.id)
    }
    
    void testIncorrectSave(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxseyyahoo.com', password:'abc',phone:'(207) 730-4455')
        
        assertFalse landlord.validate()
        assertTrue landlord.hasErrors()
        
        def errors = landlord.errors
        
        assertEquals "email.invalid",
            errors.getFieldError("email").code
        assertEquals "angela.doxseyyahoo.com",
            errors.getFieldError("email").rejectedValue
            
        assertEquals "size.toosmall",
            errors.getFieldError("password").code
        assertEquals "abc",
            errors.getFieldError("password").rejectedValue
            
        assertNull errors.getFieldError("userId")
    }
    void testIncorrectSaveCorrected(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxseyyahoo.com', password:'abc',phone:'(207) 730-4455')
        assertFalse (landlord.validate())
        assertTrue (landlord.hasErrors())
        assertNull landlord.save()
        
        landlord.password = "betternow"
        landlord.email = "angela.doxsey@yahoo.com"
        assertTrue(landlord.validate())
        assertFalse(landlord.hasErrors())
        assertNotNull landlord.save()
    }
}



