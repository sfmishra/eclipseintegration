public class ComboBoxController {
    
    @AuraEnabled public list<ComboBoxHelper> options{get;set;}
    @AuraEnabled public list<String> defaultOptions{get;set;}
    @AuraEnabled public list<String> requiredOptions{get;set;}
    
    @AuraEnabled
    public static ComboBoxController getoptions(String recId, String objName, String fieldName) {
        ComboBoxController control = new ComboBoxController();
        
        list<ComboBoxHelper> helperList = new list<ComboBoxHelper>();
        list<String> defaultOptions = new List<String>();
        
        ComboBoxHelper helper;
        for(String str : fetchPicklistValues(objName, fieldName)) {
        	helper = new ComboBoxHelper(str);
        	helperList.add(helper);	
        }
        control.options = helperList;
        
        String query = 'SELECT Id, ' + fieldName + ' FROM ' + objName + ' WHERE Id=: recId';
        List<SObject> recList = Database.query(query);
        system.debug(' === recList === ' + recList);
        String value;
        
        for(SObject obj : Database.query(query)) {
            //helper = new ComboBoxHelper(String.valueOf(obj.get(fieldName)) );
        	//helperDefaultList.add(helper);
            system.debug(' === > ' + obj.get(fieldName));
            value = String.valueOf(obj.get(fieldName));
        }
        system.debug(' === value === ' + value);
        if(value.contains(';')) {
            for(String str : value.split(';')) {
                defaultOptions.add(str);
            }
        } else {
            defaultOptions.add(value);
        }
        control.defaultOptions = defaultOptions;
        control.requiredOptions = new List<String>();
        return control;
    }
    
    @testVisible
    private static List<String> fetchPicklistValues(String objName, String fieldName) {
        Set<String> pickListValuesSet = new Set<String>();
        Schema.SObjectType convertToObj = Schema.getGlobalDescribe().get(objName);
        Schema.DescribeSObjectResult res = convertToObj.getDescribe();
        Schema.DescribeFieldResult fieldResult = res.fields.getMap().get(fieldName).getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for( Schema.PicklistEntry pickListVal : ple){
            if(pickListVal.isActive())
                pickListValuesSet.add(pickListVal.getValue());
        }
        return new List<String>(pickListValuesSet);
    }
    
}