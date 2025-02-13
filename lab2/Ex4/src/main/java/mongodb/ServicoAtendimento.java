package mongodb;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

import static com.mongodb.client.model.Filters.*;

public class ServicoAtendimento {
    private static final int DEFAULT_LIMIT = 30;
    private static final int DEFAULT_TIMESLOT = 3600;
    private static final MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
    private static final MongoDatabase database = mongoClient.getDatabase("cbd");
    private static final MongoCollection<Document> sistemaAtendimento = database.getCollection("sistemaAtendimento");
    public void atenderPedido(String username, String product, Integer quantity ) {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime timeLimit = now.minus(DEFAULT_TIMESLOT, ChronoUnit.SECONDS);

        List<Document> pedidosRecentes = sistemaAtendimento.find(and(
                eq("username", username),
                gte("timestamp", timeLimit.toString())
        )).into(new java.util.ArrayList<>());
        int recentQuantity = 0;
        for (Document pedido : pedidosRecentes) {
            recentQuantity += pedido.getInteger("quantity", 0);
        }

        if (recentQuantity + quantity > DEFAULT_LIMIT) {
            System.out.println("Erro: Limite de produtos excedido para o utilizador " + username);
        } else {
            Document pedido = new Document("username", username)
                    .append("product", product)
                    .append("quantity", quantity)
                    .append("timestamp", now.toString());

            sistemaAtendimento.insertOne(pedido);
            System.out.println("Pedido atendido com sucesso para o utilizador " + username);
        }
    }
}
