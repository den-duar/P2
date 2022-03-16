console.log(nome);//Print before the var declaration. Works because of hoisting on declaration, but value is "undefined"
var nome = "ola turma";

console.log(somarC(1,2));//Works because whole function declaration is hoisted up
function somarC(a,b){
    return a+b;
}

/*Error because when hoisted "somar" value is "undefined", not a function

console.log(somar(1,2));
var somar = function(a,b){
    return a+b;

}*/