@isTest
private class CaseManagerTest {
    
    //Helper Method
    static Id createTestRecord() {
        Case newCase = new Case(Subject = 'Test Record', Priority = 'Low',
                               	Status = 'New', Origin = 'Phone');
    	insert newCase;
        return newCase.Id;
    }
    
    @isTest static void testGetCaseById () {
        Id recordId = createTestRecord();
    	RestRequest request = new RestRequest();
        request.requestURI = 'https://sfbijali-dev-ed.my.salesforce.com/services/apexrest/Cases' + recordId;
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Calling method to test
        Case thisCase = CaseManager.getCaseById();
        // verifying result
        system.assert(thisCase != null);
        system.assertEquals('Test Record' , thisCase.Subject);
    }
    
	@isTest static void testCreateCase() {
        // Call the method to test
        ID thisCaseId = CaseManager.createCase(
            'Ferocious chipmunk', 'New', 'Phone', 'Low');
        // Verify results
        System.assert(thisCaseId != null);
        Case thisCase = [SELECT Id,Subject FROM Case WHERE Id=:thisCaseId];
        System.assert(thisCase != null);
        System.assertEquals(thisCase.Subject, 'Ferocious chipmunk');
    }
    
    @isTest static void deleteCase() {
        Id recordId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://sfbijali-dev-ed.my.salesforce.com/services/apexrest/Cases' + recordId;
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Calling Method
        CaseManager.deleteCase();
        // verify if record is deleted
        List<case> cases = [SELECT Id, Status FROM Case WHERE Id =: recordId];
        system.assertEquals(cases.size(), 0);
    }
    
    @isTest static void testUpsertCase() {
        Id caserecId = CaseManager.upsertCase('Test Record', 'High', 'Phone', 'High', null);
        system.assertNotEquals(caserecId, null);
        Case caseRec = [SELECT Id, Status, Origin, Priority FROM Case WHERE Id =: caserecId];
        system.assert(caseRec != null);
        system.assertEquals(caseRec.Subject, 'Test Record');
        // Not Updating Case 
        Id case2Id = CaseManager.upsertCase('Test Record 2', 'Low', 'Phone', 'High', caseRecId);
        system.assert(Case2Id == caserecId);
        Case case2 = [SELECT Id, Status, Origin, Priority FROM Case WHERE Id =: case2Id];
        system.assert(case2.Subject == 'Test Record 2');
    }
    
    @isTest static void testUpdateCaseFields() {
        Id recordId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://sfbijali-dev-ed.my.salesforce.com/services/apexrest/Cases' + recordId;
        request.addHeader('Content-Type', 'application/json');
        request.httpMethod = 'PATCH';
        request.requestBody = Blob.valueOf('{"Status":"Working"}');
        RestContext.request = request;
        Id caserecId = CaseManager.updateCaseFields();
        system.assert(caseRecId != null);
        Case thisCase = [SELECT Id, Status FROM Case WHERE Id =: caserecId];
        system.assertEquals(thisCase.Status, 'Working');
        system.assertNotEquals(thisCase , null);
    }
}