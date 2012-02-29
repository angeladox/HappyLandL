package com.happyl

//import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class PropertyIntegrationTests extends GrailsUnitTestCase{

   void testSave(){
       //create a landlord
       def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', 
            lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertNotNull landlord.save()
        
        //create a property
        def property = new Property(
            address: '16 street', 
            city: 'portland', 
            state:'Maine',
            zipCode:'04102', 
            heating:'oil')
        
        // join landlord to property
        landlord.addToAsset(property)
        
        assertNotNull property.save()
        assertNotNull property.state
        def foundProperty = Property.get(property.id)
        assertEquals ('Maine', foundProperty.state)
    }
}
