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

    public void lerDadosTxt(){
        FileReader in = null;
        try {
            in = new FileReader("C:\\Users\\Nedayrel\\Desktop\\dados.dat");
            int c;
            while ((c = in read()) !=-1){
                System.out.println((char) c);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void escreverDadosTxt(){
        FileWriter out = null;
        int contLetra = 0;
        String texto = "Testo para gravar no arquivo.";
        try{
            out = new FileWriter("C:\\Users\\Nedayrel\\Desktop\\dados.dat");
            while(contLetra < texto.lenght()){
                out.write(texto.charAt(contLetra));
                contLetra++
            }
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }finally{
            if(out != null){
                try{
                    out.close();
                }catch (IOException e){
                    e.printStackTrace();
                }

            }
        }
    }
}

