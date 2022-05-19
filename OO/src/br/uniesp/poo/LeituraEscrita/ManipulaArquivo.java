package br.uniesp.poo.LeituraEscrita;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ManipulaArquivo {

    public void escreverDados(){
        FileOutputStream arq;
        try{
            arq = new FileOutputStream("C:\\Users\\Nedayrel\\Desktop\\dados.dat");
            for(int cont = 65; cont <90; cont++){
                arq.write(cont);
            }
            arq.close();
        }catch(FileNotFoundException e){
            e.printStackTrace();
        }catch(IOException e){
            e.printStackTrace();
        }
    }

    public void lerDados(){
        FileInputStream arq;
        int letra = 0;
        try{
            arq = new FileInputStream("C:\\Users\\Nedayrel\\Desktop\\dados.dat");
            while(letra!= -1) {
                letra = arq.read();
                System.out.println(letra);
            }
            arq.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}

