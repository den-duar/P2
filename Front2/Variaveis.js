var nome = "dennis";
var idade = 29;
var altura = 1.79;
console.log(typeof nome);
console.log(typeof idade);
console.log(typeof altura);
var i = 0;
while (nome == "dennis") {
    console.log(i);
    i++
    if (i >= 10) {
        nome = "laura"
    }
}