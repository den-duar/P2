package br.uniesp.poo.Aula03;

import javax.swing.*;

public class UsaCalculadora {
    public static void main(String[] args) {
        Calculadora calculadora = new Calculadora();
        calculadora.somar(3,4);
        JOptionPane.showMessageDialog(null, calculadora.subtrair(4,3));
    }
}
