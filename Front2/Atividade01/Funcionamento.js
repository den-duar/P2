function alturas() {
    var maior = 0;
    var menor = 100;
    var total_homens = 0;
    var n_homens = 0;
    var n_mulheres = 0;
    var altura;

    for (let i = 0; i < 15; i++) {
        let sexo = prompt("H ou M?");
        if (sexo === "H") {
            n_homens += Number(1);
            altura = prompt("Informe altura: ");
            total_homens += Number(altura);
        } else if (sexo === "M") {
            n_mulheres += 1;
            altura = prompt("Informe altura: ");
        }
        if (altura > maior) {
            maior = altura;
        } else if (altura < menor) {
            menor = altura;
        }
    }

    document.getElementById("maior").innerHTML = "A maior altura é: " + maior;
    document.getElementById("menor").innerHTML = "A menor altura é: " + menor;
    document.getElementById("media_homens").innerHTML = "A média da altura dos homens é: " + (total_homens / n_homens);
    document.getElementById("n_mulheres").innerHTML = "A quantidade de mulheres é: " + n_mulheres;
}