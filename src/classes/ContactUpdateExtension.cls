public with sharing class ContactUpdateExtension {
  public String statusToSet {get;set;}
  private Contact c;
  
  public ContactUpdateExtension(ApexPages.StandardController ctr) {
    c = [SELECT Status__c FROM Contact WHERE Id=: ctr.getRecord().Id]; 
  }
  public PageReference updateStatus() {
    // Check if the user has update access on the Contact.Status__c field
    if (!Schema.sObjectType.Contact.fields.Status__c.isUpdateable()){
      ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.FATAL,
                                                 'Insufficient access to update status'));
      return null;
    }
    c.Status__c = statusToSet;
    update c;
    return null;
  }
}