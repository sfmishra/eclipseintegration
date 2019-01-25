global with sharing class RN_AutoComplete 
{
    public Id selectedId {get;set;}
    @RemoteAction
    public static Sobject[] fetchSObjects(String strSearch)
    {
        List<Sobject> lstSobject = new List<Sobject>();
        String strQuery = 'SELECT Id, Name FROM Account WHERE Name like ' + '\'%'+strSearch+'%\'';
        return database.query(strQuery);
    }
}