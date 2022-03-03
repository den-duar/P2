import java.util.Scanner;

public class ScanTest {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Digite um número:");
        String recebido = input.nextLine();
        System.out.println("Você digitou:" + recebido);
    }
}
