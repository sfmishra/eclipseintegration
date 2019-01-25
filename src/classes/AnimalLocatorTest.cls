@isTest
public class AnimalLocatorTest {
	
    @isTest static void setMockTestMethod() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        String response = AnimalLocator.getAnimalNameById(1);
    	System.assertEquals(response, 'Tiger');
    }
}