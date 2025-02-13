package mongodb;

public class Main {
    public static void main(String[] args) {
        ServicoAtendimento servico = new ServicoAtendimento();
// Alinea A
//        servico.atenderPedido("user1", "ProdutoA");
//        servico.atenderPedido("user1", "ProdutoB");
//        for (int i = 0; i < 31; i++) {
//            servico.atenderPedido("user2", "Produto" + i);
//        }

        servico.atenderPedido("user3", "ProdutoA", 10);
        servico.atenderPedido("user3", "ProdutoB", 15);
        servico.atenderPedido("user3", "ProdutoC", 10);

    }
}