package mongodb;
import com.mongodb.client.*;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;
import org.bson.Document;

import java.util.*;

public class d {
    public static int countLocalidades(MongoDatabase database, MongoCollection<Document> restaurants) {
        AggregateIterable<Document> result = restaurants.aggregate(Arrays.asList(
                Aggregates.group("$localidade"),
                Aggregates.count("numLocalidades")
        ));

        return (int) result.first().get("numLocalidades");
    }

    public static Map<String, Integer> countRestByLocalidade(MongoDatabase database, MongoCollection<Document> restaurants) {
        // Ajustar o agrupamento para contar corretamente por localidade
        AggregateIterable<Document> results = restaurants.aggregate(Arrays.asList(
                new Document("$group", new Document("_id", "$localidade").append("count", new Document("$sum", 1)))));
        Map<String, Integer> map = new java.util.HashMap<String, Integer>();

        for (Document doc : results) {
            map.put(doc.getString("_id"), doc.getInteger("count"));
        }

        return map;
    }
    public static List<String> getRestWithNameCloserTo(String name, MongoDatabase database, MongoCollection<Document> restaurants) {
        FindIterable<Document> results = restaurants.find(Filters.regex("nome", name));
        List<String> list = new ArrayList<String>();
        for (Document restaurant : results) {
            list.add(restaurant.getString("nome"));
        }
        return list;

    }

    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> restaurants = database.getCollection("rest");

        System.out.println();
        System.out.println("Número de localidades: " + countLocalidades(database, restaurants));

        System.out.println();
        System.out.println("Número de restaurantes por localidade:");
        Map<String, Integer> map = countRestByLocalidade(database, restaurants);
        map.forEach((localidade, count) -> System.out.println("-> " + localidade + " - " + count));

        System.out.println();
        System.out.println("Nome de restaurantes contendo \"Park\" no nome:");
        List<String> list = getRestWithNameCloserTo("Park", database, restaurants);
        for (String name : list) {
            System.out.println("-> " + name);
        }


    }
}
