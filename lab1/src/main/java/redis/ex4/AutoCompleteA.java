package redis.ex4;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

import redis.clients.jedis.Jedis;

public class AutoCompleteA {

    public static String USERS = "user_names"; // Key set for users' name
    private Jedis jedis;


    public AutoCompleteA() {
        this.jedis = new Jedis("localhost", 6379);
    }

    public void addUser(String username) {
        jedis.zadd(USERS, 0 ,username);
    }

    public void close(){
        jedis.close();
    }

    public void deleteKey() {
        jedis.del(USERS);
    }

    public void printSearch(String prefix) {
        prefix ="[" + prefix.toLowerCase();
        String end = prefix + "\uFFFF";

        //print line by line
        jedis.zrangeByLex(USERS, prefix, end).stream().forEach(System.out::println);
    }

    public void readIntoRedis(String path) {

        try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
            String line;
            while ((line = reader.readLine()) != null) {
                // add name to list
                addUser(line);
            }
        } catch (IOException e) {
            e.printStackTrace(); // Handle exception
        }
    }

    public static void main(String[] args) {
        AutoCompleteA autoComplete = new AutoCompleteA();
        autoComplete.deleteKey();


        autoComplete.readIntoRedis("src/main/java/redis/ex4/names.txt");

        Scanner scanner = new Scanner(System.in);

        System.out.print("Search for ('Enter' for quit): ");

        String search = scanner.nextLine().toLowerCase();

        while(search.length() > 0){
            autoComplete.printSearch(search);
            System.out.println("Search for ('Enter' for quit): ");
            search = scanner.nextLine().toLowerCase();
        }

        scanner.close();
        autoComplete.close();
    }
}

