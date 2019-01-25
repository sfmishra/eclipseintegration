trigger accountNameValidation on Account (before insert, before update) {
    

    for(Account acc : trigger.new) {
        if( acc.Name.contains('puneet')) {
            acc.addError(' Puneet cannot be a Account Name ', false);
        }
    }
    
}