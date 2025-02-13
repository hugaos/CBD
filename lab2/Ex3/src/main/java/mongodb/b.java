package mongodb;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

public class b {
    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> restaurants = database.getCollection("rest");

        restaurants.createIndex(new Document("localidade", 1));

        restaurants.createIndex(new Document("gastronomia", 1));

        restaurants.createIndex(new Document("nome", "text"));

        FindIterable<Document> location= restaurants.find(Filters.eq("localidade", "Queens"));
        for (Document doc : location) {
            System.out.println(doc.toJson());
        }
        System.out.println();
        System.out.println("By Gastronomia");
        FindIterable<Document> gastronomia= restaurants.find(Filters.eq("gastronomia", "Portuguese"));

        for (Document doc : gastronomia) {
            System.out.println(doc.toJson());
        }

        System.out.println();
        System.out.println("By Name");
        FindIterable<Document> name= restaurants.find(Filters.eq("nome", "Restaurante Ainda melhor"));
        for (Document doc : name) {
            System.out.println(doc.toJson());
        }
    }
}
