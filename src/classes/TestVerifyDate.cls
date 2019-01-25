@isTest
private class TestVerifyDate {
	
    @isTest static void testBetweenDate() {
    	Date date1 = system.today();
        Date date2 = system.today().adddays(10);
        Date returnedDate = VerifyDate.CheckDates(date1, date2);
        system.assertEquals(date2, returnedDate, 'Date is between next 30 days of date1');
    }
    
    @isTest static void testNotBetweenDate() {
    	Date date1 = system.today();
        Date date2 = system.today().adddays(40);
        Date returnedDate = VerifyDate.CheckDates(date1, date2);
        
        Date startDate = System.Date.today().toStartOfMonth(); 
		Date endDate = startDate.addMonths(1).addDays(-1);
        
    	system.assertEquals(endDate, returnedDate, 'Date is not between next 30 days of date1');
    }
}