package mongodb;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

import java.util.Arrays;

import org.bson.Document;

public class a {
    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> restaurants = database.getCollection("rest");


        Document restaurant = new Document("address",
                new Document("building", "4000").append("coord", Arrays.asList(-70, 50)).append("rua", "Random Avenue").append("zipcode", "11245")).append("localidade", "Brooklyn").append("gastronomia", "Portuguese").append("grades", Arrays.asList(
                        new Document("date", new Document("$date", "2017-08-22T00:00:00.000Z")).append("grade", "A").append("score", 9),
                        new Document("date", "2019-01-22T00:00:00.000Z").append("grade", "A").append("score", 9),
                        new Document("date", "2018-06-22T00:00:00.000Z").append("grade", "C").append("score", 29))).append("nome", "Restaurante Bom").append("restaurant_id", "40356483");

        restaurants.insertOne(restaurant);


        restaurants.updateOne(new Document("nome", "Restaurante Bom"),
                new Document("$set", new Document("nome", "Restaurante Ainda melhor")));

        FindIterable<Document> results = restaurants
                .find(new Document("gastronomia", "Portuguese").append("nome",
                        "Restaurante Ainda melhor"));

        for (Document rest : results)
            System.out.println(rest.toJson());

        mongoClient.close();
    }
}