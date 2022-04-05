package br.uniesp.poo.Exercicio02;

public class Emprestimo {
    private String nomeUsuario;
    private int idade;
    private float valorEmprestimo;
    private float percentualJurosMes;
    private int mesesParaPagar;

    public void imprimir(){
        System.out.println("Nome do usuario: " + nomeUsuario);
        System.out.println("Idade do usuario: " + idade);
        System.out.println("Valor do emprestimo: " + valorEmprestimo);
        System.out.println("Percentual de juros ao mes: " + percentualJurosMes);
        System.out.println("Meses para pagar: " + mesesParaPagar);
    }

    public float calcularEmprestimo(){
        float valorCalculado = 0;
        if(idade >= 18 && idade < 23){
            valorCalculado = (valorEmprestimo/mesesParaPagar) * percentualJurosMes;
        }
        else if(idade > 23 && idade <= 33){
            valorCalculado = (valorEmprestimo*10)/100;
        }
        return valorCalculado;
    }
}
