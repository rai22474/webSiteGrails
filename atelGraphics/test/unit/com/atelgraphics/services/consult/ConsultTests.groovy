package com.atelgraphics.services.consult

import grails.test.*

/**
 * 
 * Test the class consult.
 */
class ConsultTests extends GrailsUnitTestCase {
   
    /**
     * Test toString method.
     */
    void testToString() {
		def consult = new Consult(name:"Name",subject:"subject",email:"email",message:"message")
		
		def resultMessage = consult.toString()
		
		def expectedMessage = "Name subject email message"
		assertEquals("Must be the same message",expectedMessage, resultMessage)
    }
}
