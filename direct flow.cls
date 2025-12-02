public class RI_TestCase1 {
    public void makeCallout(String pathFromUser) {              // line 3 (SOURCE)
        HttpRequest req = new HttpRequest();                    // line 4
        req.setMethod('GET');                                   // line 5
        req.setEndpoint('https://api.example.com/' + pathFromUser); // line 6 (SINK)
        Http http = new Http();                                 // line 7
        HTTPResponse res = http.send(req);                      // line 8
    }
}
