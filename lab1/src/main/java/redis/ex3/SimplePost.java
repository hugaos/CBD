package redis.ex3;

import redis.clients.jedis.Jedis;

public class SimplePost {
    public static String USERS_KEY = "users";

    public static void main(String[] args) {
        Jedis jedis = new Jedis();
        // Alguns utilizadores
        String[] users = { "Ana", "Pedro", "Maria", "Luis", "Ana" };

        // Set
        System.out.println("Set:");
        // Apagar a chave para não haver duplicados e erros de diferentes tipos de dados
        jedis.del(USERS_KEY);
        for (String user : users)
            jedis.sadd(USERS_KEY, user);
        jedis.smembers(USERS_KEY).forEach(System.out::println);

        // List
        System.out.println("\nList:");
        jedis.del(USERS_KEY);
        for (String user : users)
            jedis.rpush(USERS_KEY, user);

        long usersLen = jedis.llen(USERS_KEY);
        jedis.lrange(USERS_KEY, 0, usersLen).forEach(System.out::println);

        // HashMap
        System.out.println("\nHashMap:");
        jedis.del(USERS_KEY);
        for (int i = 0; i < users.length; i++)
            jedis.hset(USERS_KEY, String.valueOf(i), users[i]);

        for (int i = 0; i < jedis.hgetAll(USERS_KEY).size(); i++)
            System.out.println("key: " + i + " value: " + jedis.hget(USERS_KEY, String.valueOf(i)));
        jedis.close();
    }
}
