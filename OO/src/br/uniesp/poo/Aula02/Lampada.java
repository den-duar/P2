package br.uniesp.poo.Aula02;

public class Lampada {

    boolean ligada;

    void ligar(){
        this.ligada = true;
        System.out.println("Ligando");
    }

    void apagar(){
        this.ligada = false;
        System.out.println("Desligando");
    }

}
