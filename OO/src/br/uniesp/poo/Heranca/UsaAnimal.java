package br.uniesp.poo.Heranca;

public class UsaAnimal {

    public static void main(String[] args) {

    Animal animal = new Animal();
    Cachorro cachorro = new Cachorro();
    Golfinho golfinho = new Golfinho();
    Sapo sapo = new Sapo();
    Passaro passaro = new Passaro();
    Animal umBicho = new Golfinho();

    cachorro.andar();
    golfinho.andar();
    sapo.andar();
    passaro.andar();
    umBicho.andar();
    umBicho = new Sapo();
    umBicho.andar();

    preparaComida(animal);
    preparaComida(cachorro);
    preparaComida(sapo);
    preparaComida(passaro);
    preparaComida(golfinho);


    }

    public static void preparaComida(Animal a){
        System.out.println("Preparando comida");
        a.comer();
    }
}
