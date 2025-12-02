public class RI_DisplayTest1 {

    public void directFlow() {
        String path = ApexPages.currentPage()
                               .getParameters()
                               .get('pathParam');         // SOURCE

        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('/api/v1/' + path);              // SINK
        new Http().send(req);
    }
}
