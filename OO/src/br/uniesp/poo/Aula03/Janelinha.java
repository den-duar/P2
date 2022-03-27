package br.uniesp.poo.Aula03;

import javax.swing.*;

public class Janelinha {
    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog("Insira o nome:");
        JOptionPane.showMessageDialog(null, "Olá " + nome);

    }
}
