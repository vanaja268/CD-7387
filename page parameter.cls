public class RI_TestCase2 {

    public void controllerAction() {                               // line 3
        String apiVersion = ApexPages.currentPage()                // line 4 (SOURCE)
                             .getParameters()
                             .get('version');
        String fullPath = buildPath(apiVersion);                   // line 7 (INTERMEDIATE)
        sendRequest(fullPath);                                     // line 8 (CALL)
    }

    private String buildPath(String version) {                      // line 11
        return '/services/api/' + version;                          // line 12 (TRANSFORM)
    }

    private void sendRequest(String endpointPath) {                 // line 15
        HttpRequest req = new HttpRequest();                        // line 16
        req.setMethod('GET');                                       // line 17
        req.setEndpoint(endpointPath);                              // line 18 (SINK)
        new Http().send(req);                                       // line 19
    }
}
