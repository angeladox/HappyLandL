package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class TenantIntegrationTests extends GrailsUnitTestCase{

    void testSave(){
        def tenant = new Tenant(
            firstName:'brian', 
            lastName:'kurlychek',
            email:'brian.doxsey@yahoo.com',
            phone:'(207) 730-4455',
            creditScore:'800',
            prevAddress:'123 any lane',
            prevLandlord:'chuck norris',
            prevLandlordPhone:'(207) 730-4455',
            comments:'this guy is super cool!'
        )
        
        assertNotNull tenant.save()
        assertNotNull tenant.lastName
        def foundTenant = Tenant.get(tenant.id)
        assertEquals ('kurlychek', foundTenant.lastName)
    }
}
