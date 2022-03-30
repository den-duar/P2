function calcula_salario(salario){
    var percentual;
    if (salario <= 280){
        var new_salario = salario * 1.2;
        percentual = "20%";
    } else if(salario > 280 && salario <= 700){
       new_salario = salario * 1.15;
        percentual = "15%";
    } else if (salario > 700 && salario <= 1500){
        new_salario = salario * 1.1;
        percentual = "10%";
    } else{
        new_salario = salario * 1.05;
        percentual = "5%";
    }
    console.log("Salario inicial era: ", salario);
    console.log("Aumento de ", percentual);
    console.log("O aumento teve o valor de: ", new_salario-salario)
    console.log("O novo salario é: ", new_salario)
}

calcula_salario(280);
calcula_salario(280.1);
calcula_salario(700);
calcula_salario(700.1);
calcula_salario(1500);
calcula_salario(1500.1);