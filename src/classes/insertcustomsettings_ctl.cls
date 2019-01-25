public class insertcustomsettings_ctl { 
public PageReference SetCustomesetting() { 
usersessionIdss__c sInfo = new usersessionIdss__c(); 
sInfo.name = 'Test'; 
insert sInfo; 
return null; 
} 
public PageReference SetCustomesettinglong() { 
usersessionIdss__c sInfo = new usersessionIdss__c(); 
sInfo.name = 'Test'; 
insert sInfo; 
for( Integer i = 0 ; i<1000000 ; i++ ){ 
System.debug('aaa'); 
} 
return null; 
} 
}