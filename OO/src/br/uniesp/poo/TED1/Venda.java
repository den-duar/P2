package br.uniesp.poo.TED1;

public class Venda {

    private Produto produto;
    private Vendedor vendedor;
    private float desconto;
    private int quantidadedeItens;
    private float valor;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Vendedor getVendedor() {
        return vendedor;
    }

    public void setVendedor(Vendedor vendedor) {
        this.vendedor = vendedor;
    }

    public float getDesconto() {
        return desconto;
    }

    public void setDesconto(float desconto) {
        this.desconto = desconto;
    }

    public int getQuantidadedeItens() {
        return quantidadedeItens;
    }

    public void setQuantidadedeItens(int quantidadedeItens) {
        this.quantidadedeItens = quantidadedeItens;
    }

    public void calcularValor(){
        this.valor = (produto.getValorVenda() * quantidadedeItens) - desconto;
    }

    public float calcularComissao(){
        float valorComissao = vendedor.getComissao() * this.valor;
        if(produto.isPromocao()){
            return valorComissao/2;
        }
        else{
            return valorComissao;
        }
    }

    public void efetuarDesconto(float desconto){
        float valorDoDesconto = (produto.getValorVenda() * desconto);
        if(produto.getValorVenda() - valorDoDesconto >= produto.getValorCusto()){
            this.desconto = valorDoDesconto * this.quantidadedeItens;
        }
    }

    public void imprimir(){
        System.out.println("Código do vendedor: " + vendedor.getCodigo());
        System.out.println("Nome do vendedor: " + vendedor.getNome());
        System.out.println("Comissão pela venda: " + calcularComissao());
        System.out.println("Quantidade de itens vendido: " + quantidadedeItens);
        System.out.println("Valor de venda do produto: " + produto.getValorVenda());
        if(produto.isPromocao()){
            System.out.println("O produto está em promoção.");
        }
        else{
            System.out.println("O produto não está em promoção.");
        }
        System.out.println("O valor do desconto é: " + this.desconto);
        System.out.println("O valor total da venda é: " + valor);
    }

}
