package br.uniesp.poo.TED1;

public class Loja {
    public static void main(String[] args) {
        Produto produto = new Produto(1,"Biscoito", 2.00F, 1.20F, false);
        Vendedor vendedor = new Vendedor("Dennis", "Rua do Iesp", 1);
        Venda venda = new Venda();
        venda.setProduto(produto);
        venda.setVendedor(vendedor);
        venda.setQuantidadedeItens(2);
        venda.calcularValor();
        System.out.println(venda.calcularComissao());
        venda.imprimir();

        Produto produtoDe80 = new Produto(2, "Picanha", 100F, 80F, true);
        Vendedor vendedor2 = new Vendedor("Snow", "Rua do Iesp", 2);
        vendedor2.setComissao(0.1F);
        Venda vendaPicanha = new Venda();
        vendaPicanha.setVendedor(vendedor2);
        vendaPicanha.setProduto(produtoDe80);
        vendaPicanha.setQuantidadedeItens(3);
        vendaPicanha.efetuarDesconto(0.1F);
        vendaPicanha.calcularValor();
        vendaPicanha.imprimir();

        Venda vendaSemDesconto = new Venda();
        vendaSemDesconto.setVendedor(vendedor2);
        vendaSemDesconto.setProduto(produtoDe80);
        vendaSemDesconto.setQuantidadedeItens(2);
        vendaSemDesconto.efetuarDesconto(0.3f);
        vendaSemDesconto.calcularValor();
        vendaSemDesconto.imprimir();




    }
}
