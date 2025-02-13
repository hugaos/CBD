package redis.ex4;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Scanner;

import redis.clients.jedis.Jedis;

public class AutocompleteB {

    public static void main(String[] args) {
        try (Jedis jedis = new Jedis()) {
            jedis.flushDB();
            carregarNomes(jedis, "src/main/java/redis/ex4/nomes-pt-2021.csv");
            iniciarBusca(jedis);
        }
    }

    // Método para carregar nomes do arquivo CSV para o Redis
    private static void carregarNomes(Jedis jedis, String caminhoArquivo) {
        File file = new File(caminhoArquivo);

        try (Scanner sc = new Scanner(file)) {
            while (sc.hasNextLine()) {
                String[] line = sc.nextLine().split(";");
                String nome = line[0];
                int quantidade = Integer.parseInt(line[1]);

                // Adicionar nome ao sorted set com a quantidade como score
                jedis.zadd("names", quantidade, nome);
            }
        } catch (FileNotFoundException e) {
            System.out.println("Erro: Arquivo não encontrado - " + caminhoArquivo);
            e.printStackTrace();
        }
    }

    // Método para iniciar o processo de busca de nomes
    private static void iniciarBusca(Jedis jedis) {
        try (Scanner sc = new Scanner(System.in)) {
            String busca = " ";

            while (!busca.isEmpty()) {
                System.out.print("\nBuscar por ('Enter' para sair): ");
                busca = sc.nextLine().toLowerCase();

                if (!busca.isEmpty()) {
                    listarNomesPorPopularidade(jedis, busca);
                }
            }
        }
    }

    // Método para listar nomes que começam com a string de busca
    private static void listarNomesPorPopularidade(Jedis jedis, String busca) {
        // Recuperar todos os nomes ordenados por popularidade (score decrescente)
        List<String> nomes = jedis.zrevrangeByScore("names", "+inf", "-inf");

        for (String nome : nomes) {
            // Exibir nomes que começam com a string de busca
            if (nome.toLowerCase().startsWith(busca)) {
                System.out.println(nome);
            }
        }
    }
}
