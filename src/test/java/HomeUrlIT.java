package us.co.itforeveryone.demo;

import junit.framework.TestCase;
import com.thoughtworks.selenium.DefaultSelenium;

public class HomeUrlIT  extends TestCase {

    protected DefaultSelenium createSeleniumClient(String url) throws Exception {
        return new DefaultSelenium("localhost", 4444, "*firefox", url);
    }
    
    public void testBaseForm() throws Exception {
        DefaultSelenium selenium = createSeleniumClient("http://localhost:8080/");
        selenium.start();
        
        selenium.open("/");
        
        assertTrue(selenium.isTextPresent("Hello"));
        assertTrue(selenium.isTextPresent("World"));

        selenium.stop();
    }
}
