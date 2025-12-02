public class RI_TestCase5 {

    public void multiVarExample(String userInput) {              // line 3 (SOURCE)
        String safe = '/fixed/path';                             // line 4
        String unsafe = userInput;                               // line 5
        String chosenPath;

        if (unsafe != null) {                                   // line 8
            chosenPath = unsafe;                                // line 9
        } else {
            chosenPath = safe;                                  // line 11
        }

        HttpRequest req = new HttpRequest();                    // line 14
        req.setMethod('GET');                                   // line 15
        req.setEndpoint(chosenPath);                            // line 16 (SINK)
        new Http().send(req);                                   // line 17
    }
}
