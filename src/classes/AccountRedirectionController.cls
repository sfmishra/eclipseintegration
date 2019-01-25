public class AccountRedirectionController {
    public string accId;
    public string recName;
    public AccountRedirectionController(ApexPages.StandardController stdcontroller) {
        if(ApexPages.currentPage().getparameters().get('id')!=null) {
            accId = ApexPages.currentPage().getparameters().get('id');
            recName = [SELECT Id, RecordtypeId, RecordType.name FROM Account where Id =: accId ].RecordType.Name;
        } 
    }
    
    public pageReference redirectToStandardpage() {
        Schema.DescribeSObjectResult accResult = Account.SObjectType.getDescribe();
        Map<String,Schema.RecordTypeInfo> recTypeMap = accResult.getRecordTypeInfosByName();
        
        if(recTypeMap.containsKey(recName) && recName != 'Partner') {
        	system.debug(' ABC');
            pageReference pg = new pageReference('/'+ accId);
            pg.getParameters().put('nooverride', '0');
            pg.setRedirect(true);
            return pg;
        }     
        return null;        
    } 
}