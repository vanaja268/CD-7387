public class RI_TestCase6_Controller {

    public void doWork(String apiPath) {                              // line 3 (SOURCE)
        String normalized = apiPath.trim();                           // line 4 (INTERNAL)
        RI_TestCase6_Service.sendCallout(normalized);                 // line 5 (CALL)
    }
}

public class RI_TestCase6_Service {

    public static void sendCallout(String resourcePath) {             // line 10
        HttpRequest req = new HttpRequest();                          // line 11
        req.setMethod('GET');                                         // line 12
        req.setEndpoint('https://external.example' + resourcePath);   // line 13 (SINK)
        new Http().send(req);                                         // line 14
    }
}
