function somar() {
    var n1 = document.getElementById("campoA");
    var n2 = document.getElementById("campoB");
    var resultado = document.getElementById("resultado")

    resultado.value = Number(n1.value) + Number(n2.value)

}