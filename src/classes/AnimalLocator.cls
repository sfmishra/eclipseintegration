/**
 *  trailhead : https://trailhead.salesforce.com/apex_integration_services/apex_integration_rest_callouts
 */
public class AnimalLocator {
	
    public static String getAnimalNameById(Integer nameById) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/:id');
        req.setMethod('GET');
        
        HttpResponse response = http.send(req);
        Map<Integer, String> finalRes = new Map<Integer, String>();
        if(response.getStatusCode() == 200 ) {
            system.debug(' === response body === ' + response.getBody());
            Map<String, Object> results = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            system.debug(' === results === ' + results + ' = ' + (Object)results.get('animal'));
            Map<String, Object> res = (Map<String, Object>)results.get('animal');
            
            for(String str : res.keySet()) {
                system.debug(' === str === ' + str);
                if(str == 'id') {
                    finalRes.put(Integer.ValueOf(res.get('id')), String.valueOf(res.get('name')));
                }
            }
            system.debug(' === finalRes === ' + finalRes);
        }
        
        return finalRes.get(nameById);
    }
}