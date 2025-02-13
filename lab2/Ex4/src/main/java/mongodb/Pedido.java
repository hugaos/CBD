package mongodb;

import org.bson.Document;
import java.time.LocalDateTime;

public class Pedido {
    private String username;
    private String product;
    private LocalDateTime timestamp;

    public Pedido(String username, String product) {
        this.username = username;
        this.product = product;
        this.timestamp = LocalDateTime.now();
    }

    public Document toDocument() {
        return new Document("username", username)
                .append("product", product)
                .append("timestamp", timestamp.toString());
    }
}
