package com.happyl

import static org.junit.Assert.*
import org.junit.*
import grails.test.*

class UnitIntegrationTests extends GrailsUnitTestCase{
void testSave(){
        def unit = new Unit(
            unitNo:'g',
            sqFeet: '1200',
            //byte[] photo
            description: 'a pretty sweet unit, yo',
            bedrooms:'9'
        )
        
        assertNotNull unit.save()
        assertNotNull unit.unitNo
        def foundUnit = Unit.get(unit.id)
        assertEquals ('g', foundUnit.unitNo)
    }
   
    
}
