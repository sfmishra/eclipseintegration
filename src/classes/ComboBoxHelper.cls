public class ComboBoxHelper {
	
    @AuraEnabled public string value {get;set;}
    @AuraEnabled public string label {get;set;}
	
    public ComboBoxHelper(String pickVal) {
        this.value = pickVal;
        this.label = pickVal;
    }
}