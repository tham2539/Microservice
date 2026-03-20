import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class Main {
    public static void main(String[] args) throws IOException {
        HttpServer server = HttpServer.create(new InetSocketAddress(3000), 0);
        
        server.createContext("/api", exchange -> {
            long start = System.currentTimeMillis();
            String resp = "hello world";
            exchange.sendResponseHeaders(200, resp.getBytes().length);
            OutputStream os = exchange.getResponseBody();
            os.write(resp.getBytes());
            os.close();
            long duration = System.currentTimeMillis() - start;
            System.out.println("[" + java.time.Instant.now() + "] " + exchange.getRequestMethod() + " " + exchange.getRequestURI() + " 200 - " + duration + "ms");
        });
        
        server.start();
        System.out.println("Listening on http://127.0.0.1:3000");
    }
}
