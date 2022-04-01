package br.uniesp.poo.Aula04;

import java.util.AbstractQueue;

public class Escritorio {

    public static void main(String[] args) {
        Arquiteto oscar = new Arquiteto("Oscar Niemeyer", 104);
        Arquiteto kengo = new Arquiteto("Kengo Kuma", 64);

        desenhar(oscar, 2.0, 5.2, 3.7);
        desenhar(kengo, 7.5, 4.0, 9.6);

    }

    private static void desenhar(Arquiteto arq, double a, double b, double c){
        arq.exibeDadosPessoais();
        arq.trabalhe(a,b,c);
    }
}
