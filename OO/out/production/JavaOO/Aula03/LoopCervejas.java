package Aula03;
import java.util.Scanner;

import static java.lang.Integer.parseInt;

public class LoopCervejas {
    public static void main(String[] args) {
        Scanner escolhido = new Scanner(System.in);
        System.out.println("Quantas cervejas temos?");
        int quantidade = parseInt(escolhido.nextLine());

        while (quantidade > 0){
            System.out.println(quantidade + " cervejas na freezer. \nPego uma garrafa, passo pra frente.\nAgora são " + (quantidade-1) + " cervejas na freezer.");
            quantidade--;
            if(quantidade == 1) {
                System.out.println("Está acabando. Deseja incluir mais quantas?");
                quantidade += parseInt(escolhido.nextLine());
            }
        }
        System.out.println("Acabou a farra!");
    }
}
