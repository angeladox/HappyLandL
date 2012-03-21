package com.happyl

import static org.junit.Assert.*
import grails.test.*
import org.junit.*

class UnitUnitTests extends GrailsUnitTestCase{
    void testConstraints() {
        def unit = new Unit(unitNo: "5")
        mockForConstraintsTests(Unit,[unit]) 
        def testU = new Unit() 
        assertFalse testU.validate() 
        assertEquals "nullable",
        testU.errors["unitNo"] 
        assertEquals "nullable",
        testU.errors["description"]
      
        testU = new Unit(unitNo: "3", sqFeet: "700", description: "a pretty neato place", 
            bedrooms: "4", status: "free")
        assertFalse testU.validate()      
        assertTrue(testU.hasErrors())
               
        testU = new Property(unitNo: "3", sqFeet: "700", description: "a pretty neato place", 
            bedrooms: "4", status: "Available")
        assertFalse(testU.hasErrors())
    }
}