function maior_e_menor(){
    var maior;
    var menor;
    for(i in arguments){
        if(i == 0){
            maior = arguments[i];
            menor = arguments[i];
        }
        else if (arguments[i] > maior){
            maior = arguments[i];
        }
        else if (arguments[i] < menor){
            menor = arguments[i];
        }
    }
    console.log("Maior número é: ", maior);
    console.log("Menor número é: ", menor);
}

maior_e_menor(4,6,-2,20);

