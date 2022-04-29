package br.uniesp.poo.Heranca;

public class Cachorro extends Animal {

    private String raca;

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    @Override
    public void andar() {
        System.out.println("Corre atras da moto!");
    }
}
