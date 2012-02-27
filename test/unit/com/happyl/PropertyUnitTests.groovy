package com.happyl

//import static org.junit.Assert.*
import grails.test.*
import org.junit.*

class PropertyUnitTests extends GrailsUnitTestCase{
    void testConstraints() {
        def place = new Property(address: "5 sydney way")
        mockForConstraintsTests(Property,[place]) 
        def testP = new Property() 
        assertFalse testP.validate() 
        assertEquals "nullable",
        testP.errors["address"] 
        assertEquals "nullable",
        testP.errors["state"]
      
        testP = new Property(
            address: "5 sydney way", 
            city: "portland", 
            state: "meine", 
            zipCode: "04102", 
            heating: "oil") 
        assertFalse testP.validate()      
        assertTrue(testP.hasErrors())
               
        testP = new Property(
            address: "5 sydney",
            city: "Port",
            state: "Maine",
            zipCode: "04102",
            heating: "oil")
        assertTrue testP.validate()
        assertFalse (testP.hasErrors())
    }
}
