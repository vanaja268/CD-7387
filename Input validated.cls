public class SafeRI_Test2 {
    
    public static void callout(String version) {
        Set<String> allowed = new Set<String>{ 'v1', 'v2', 'v3' };
        
        if (!allowed.contains(version)) {
            version = 'v1'; // enforce safe default
        }

        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://service.example.com/' + version);
        new Http().send(req);
    }
}
