public class opportunityListController {
	
    public List<Opportunity> oppList{get;set;}
    public String accId{get;set;}
    public opportunityListController() {
        oppList = new List<Opportunity>();
        accId = ApexPages.currentPage().getParameters().get('recId');
        oppList = [SELECT Id, Name, StageName, CloseDate, accountId FROM Opportunity WHERE accountId =: accId];
        system.debug(' @@@> ' + oppList);
    }
    /*@AuraEnabled
    public static List<Opportunity> fetchOpportunity(string accId) {
        return [SELECT Id, Name, StageName, CloseDate, accountId FROM Opportunity WHERE accountId =: accId];
    }*/
}