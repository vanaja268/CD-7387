public class RI_TestCase3 {

    public static void callWithAccountPath(Id accountId) {         // line 3
        Account acc = [SELECT Id, Custom_URL__c FROM Account
                       WHERE Id = :accountId LIMIT 1];             // line 4
        String basePath = '/integration/accounts/';                // line 6
        String path = basePath + acc.Custom_URL__c;                // line 7 (SOURCE/INTERMEDIATE)
        doCallout(path);                                           // line 8
    }

    private static void doCallout(String endpointPath) {           // line 11
        HttpRequest req = new HttpRequest();                       // line 12
        req.setMethod('POST');                                     // line 13
        req.setEndpoint(endpointPath);                             // line 14 (SINK)
        new Http().send(req);                                      // line 15
    }
}
