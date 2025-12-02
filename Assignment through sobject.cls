public class RI_AssignmentTest2 {

    public void doCalloutWithRecord() {
        String pathFromPage = ApexPages.currentPage()
                                       .getParameters()
                                       .get('resource');     // SOURCE

        // Assign user input into an SObject field
        Integration_Config__c cfg = new Integration_Config__c();
        cfg.EndpointPath__c = pathFromPage;                  // ASSIGNMENT to field

        // Later in the same method we read it back
        String finalPath = cfg.EndpointPath__c;              // ASSIGNMENT from field

        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('/service/' + finalPath);            // SINK
        new Http().send(req);
    }
}
