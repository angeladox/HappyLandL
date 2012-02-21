package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class PropertyIntegrationTests extends GrailsUnitTestCase{

   void testSave(){
        def property = new Property(
            address: '16 street', 
            city: 'portland', 
            state:'Maine',
            zipCode:'04102', 
            heating:'oil')
         
        assertNotNull property.save()
        assertNotNull property.state
        def foundProperty = Property.get(property.id)
        assertEquals ('Maine', foundProperty.state)
    }
}
