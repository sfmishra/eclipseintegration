public class refreshPollerCont {
    
    public pageReference refreshStdPage() {
        string url = 'https://sfbijali-dev-ed.my.salesforce.com/0012800000s0C72';
        
        PageReference acctPage = new PageReference(url);
        acctPage.setRedirect(true);
        return acctPage;
    }
    
}