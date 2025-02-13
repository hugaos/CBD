package cbd;
import org.neo4j.driver.*;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class Neo4JLab44 {
    private static final String URI = "bolt://localhost:7687";
    private static final String USER = "neo4j";
    private static final String PASSWORD = "12345678";

    public static void main(String[] args) {
        try (Driver driver = GraphDatabase.driver(URI, AuthTokens.basic(USER, PASSWORD))) {
            try (Session session = driver.session()) {
                // 1. Criar a base de dados
                createDatabase(session);

                // 2. Inserir dados no Neo4j
                insertData(session);

                // 3. Executar consultas e salvar os resultados
                executeQueries(session);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Método para criar a base de dados
    private static void createDatabase(Session session) {
        session.run("CREATE DATABASE lab44 IF NOT EXISTS");
        System.out.println("Base de dados 'lab44' criada.");
    }

    // Método para inserir dados diretamente
    private static void insertData(Session session) {
        // Criar nós de cidades
        List<String> cities = Arrays.asList(
                "CREATE (:City {id: 1, name: 'Lisboa', population: 500000})",
                "CREATE (:City {id: 2, name: 'Porto', population: 300000})",
                "CREATE (:City {id: 3, name: 'Madrid', population: 3200000})",
                "CREATE (:City {id: 4, name: 'Barcelona', population: 1600000})",
                "CREATE (:City {id: 5, name: 'Paris', population: 2100000})"
        );

        // Criar empresas de transporte
        List<String> companies = Arrays.asList(
                "CREATE (:Company {id: 1, name: 'Alpha Transports', industry: 'Bus'})",
                "CREATE (:Company {id: 2, name: 'FastRail', industry: 'Train'})",
                "CREATE (:Company {id: 3, name: 'AirLink', industry: 'Flight'})"
        );

        // Criar relações entre cidades (rotas) e empresas
        List<String> routes = Arrays.asList(
                "MATCH (c1:City {id: 1}), (c2:City {id: 2}), (e:Company {id: 1}) " +
                        "CREATE (c1)-[:CONNECTED_TO {distance_km: 313}]->(c2)-[:OPERATED_BY]->(e)",
                "MATCH (c1:City {id: 2}), (c2:City {id: 3}), (e:Company {id: 2}) " +
                        "CREATE (c1)-[:CONNECTED_TO {distance_km: 564}]->(c2)-[:OPERATED_BY]->(e)",
                "MATCH (c1:City {id: 3}), (c2:City {id: 4}), (e:Company {id: 3}) " +
                        "CREATE (c1)-[:CONNECTED_TO {distance_km: 504}]->(c2)-[:OPERATED_BY]->(e)",
                "MATCH (c1:City {id: 4}), (c2:City {id: 5}), (e:Company {id: 1}) " +
                        "CREATE (c1)-[:CONNECTED_TO {distance_km: 831}]->(c2)-[:OPERATED_BY]->(e)"
        );

        // Executar comandos
        cities.forEach(session::run);
        companies.forEach(session::run);
        routes.forEach(session::run);

        System.out.println("Dados inseridos com sucesso.");
    }

    // Método para executar as consultas e salvar no ficheiro
    private static void executeQueries(Session session) {
        String outputFile = "CBD_L44c_output.txt";
        List<String> queries = Arrays.asList(
                "MATCH (c:City) RETURN c.name AS City, c.population AS Population",
                "MATCH (c1:City)-[r:CONNECTED_TO]->(c2:City) RETURN c1.name, c2.name, r.distance_km",
                "MATCH (c:City)-[:OPERATED_BY]->(e:Company) RETURN e.name, COUNT(c) AS Routes",
                "MATCH (c1:City)-[:CONNECTED_TO]->(c2:City) RETURN c1.name AS From, c2.name AS To",
                "MATCH (e:Company)<-[:OPERATED_BY]-(c:City) RETURN e.name AS Company, COUNT(c) AS TotalCities",
                "MATCH (c:City) RETURN COUNT(c) AS TotalCities",
                "MATCH (c1:City)-[r:CONNECTED_TO]->(c2:City) WHERE r.distance_km > 500 RETURN c1.name, c2.name",
                "MATCH (c:City)-[:CONNECTED_TO]->(:City) RETURN c.name AS City, COUNT(*) AS Connections",
                "MATCH (c1:City)-[r:CONNECTED_TO]->(c2:City) RETURN MIN(r.distance_km) AS ShortestRoute",
                "MATCH (c:City)-[:CONNECTED_TO]->(c2:City) RETURN c.name AS Start, c2.name AS End"
        );

        try (FileWriter writer = new FileWriter(outputFile)) {
            int queryNumber = 1;
            for (String query : queries) {
                writer.write("#" + queryNumber + "\n");
                Result result = session.run(query);
                while (result.hasNext()) {
                    writer.write(result.next().toString() + "\n");
                }
                writer.write("\n");
                queryNumber++;
            }
            System.out.println("Consultas executadas e resultados salvos em 'CBD_L44c_output.txt'.");
        } catch (IOException e) {
            System.err.println("Erro ao escrever no ficheiro: " + e.getMessage());
        }
    }
}
