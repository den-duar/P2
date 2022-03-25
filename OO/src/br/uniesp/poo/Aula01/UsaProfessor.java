package br.uniesp.poo.Aula01;

public class UsaProfessor {

    public static void main(String[] args) {
        Professor messias = new Professor("Messias","BD1");
        Professor fujioka = new Professor("Fujioka","Linguagem de Programação I");
        messias.nomear();
        messias.ensinar();
        fujioka.nomear();
        fujioka.ensinar();
    }
}
