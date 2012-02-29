package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class TenantIntegrationTests extends GrailsUnitTestCase{

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
        
        def unit = new Unit(
            unitNo:'g',
            sqFeet: '1200',
            //byte[] photo
            description: 'a pretty sweet unit, yo',
            bedrooms:'9',
            status: 'Available'
        )
        
        //join property to a unit
        property.addToUnits(unit)
        
        assertNotNull unit.save()
        assertNotNull unit.unitNo
        def foundUnit = Unit.get(unit.id)
        assertEquals ('g', foundUnit.unitNo)
        
        //create a tenant
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
        //join unit to tenant
        unit.addToTenants(tenant)
        
        assertNotNull tenant.save()
        assertNotNull tenant.lastName
        def foundTenant = Tenant.get(tenant.id)
        assertEquals ('kurlychek', foundTenant.lastName)
    }
}
