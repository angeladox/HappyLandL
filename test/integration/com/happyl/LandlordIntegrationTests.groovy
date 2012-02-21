package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class LandlordIntegrationTests extends GrailsUnitTestCase{
    void testSave(){
        def landlord = new Landlord(userId: 'angelaloo', firstName: 'angela', lastName:'doxsey',email:'angela.doxsey@yahoo.com', password:'heyman',phone:'(207) 730-4455')
        assertNotNull landlord.save()
        assertNotNull landlord.userId
        def foundLandlord = Landlord.get(landlord.id)
        assertEquals ('angelaloo', foundLandlord.userId)
    }
}



