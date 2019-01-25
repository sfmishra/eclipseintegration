public class IpAddressIdentifier {
    
    public static String ipAddress {get;set;}
    
    public IpAddressIdentifier() {
        system.debug('===== ' + ApexPages.currentPage().getHeaders().get('True-Client-IP'));
        system.debug('===== ' + ApexPages.currentPage().getHeaders().get('X-Salesforce-SIP'));
        system.debug('===== ' + ApexPages.currentPage().getHeaders().get('X-Forwarded-For'));
    }
}