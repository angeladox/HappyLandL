package com.happyl


import grails.test.*
import grails.test.mixin.*
import org.junit.*

@TestFor(Landlord)
class LandlordUnitTests {
    
    void testConstraints() {
        def will = new Landlord(userId: "william")
        mockForConstraintsTests(Landlord, [ will ]) 
        def testLL = new Landlord() 
        assertFalse testLL.validate() 
        assertEquals "nullable",
            testLL.errors["userId"] 
        assertEquals "nullable",
            testLL.errors["password"]
      
        testLL = new Landlord(userId: "william", password: "william") 
        assertFalse testLL.validate()
        
        assertEquals "unique", testLL.errors["userId"] 
        assertEquals "validator", testLL.errors["password"]
               
        testLL = new Landlord(userId: 'angelaloo', firstName: 'angela', lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertTrue testLL.validate()
    }
} 
