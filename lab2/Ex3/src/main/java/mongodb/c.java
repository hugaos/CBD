package mongodb;

import com.mongodb.client.*;
import com.mongodb.client.model.Aggregates;
import com.mongodb.client.model.Filters;

import org.bson.Document;
import java.util.Arrays;

public class c {
    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase database = mongoClient.getDatabase("cbd");
        MongoCollection<Document> restaurants = database.getCollection("rest");

        //Selecione 5 perguntas/comandos do exercício 2.2 e reimplemente-os em Java.

        // 6. Liste todos os restaurantes que tenham pelo menos um score superior a 85.
        FindIterable<Document> results = restaurants.find(
                new Document("grades.score", new Document("$gt", 85))
        );
        System.out.println();
        System.out.println("Restaurantes com pelo menos 1 score >85");
        for (Document restaurant : results) {
            System.out.println(restaurant.toJson());
        }

        //24. Apresente o número de gastronomias diferentes na rua "Fifth Avenue"

        AggregateIterable<Document> result = restaurants.aggregate(Arrays.asList(
                Aggregates.match(new Document("address.rua", "Fifth Avenue")),
                Aggregates.group("$gastronomia"),
                Aggregates.count("numGastronomies")
        ));
        System.out.println();

        System.out.println("Número de gastronomias diferentes na rua \"Fifth Avenue\"");
        System.out.println(result.first());

        //28: Quais restaurantes têm uma pontuação mínima de 4 em qualquer avaliação?
        results = restaurants.find(
                new Document("grades.score", new Document("$gte", 4))
        ).projection(new Document("nome", 1).append("grades.score", 1))
                .limit(5);
        System.out.println();

        System.out.println("Restaurantes com pontuaçao minima de 4 em qualquer avaliação");
        for (Document restaurant : results) {
            System.out.println(restaurant.toJson());
        }

        //29: Quantos restaurantes têm mais de 5 avaliações?
        result=restaurants.aggregate(Arrays.asList(Aggregates.project(new Document("nome", 1).append("numGrades", new Document("$size", "$grades"))),
                Aggregates.match(new Document("numGrades", new Document("$gt", 5))),
                Aggregates.count("totalRestaurantes")));

        System.out.println();
        System.out.println("Numero de restaurantes com mais de 5 avaliações");
        System.out.println(result.first());
    }
}
