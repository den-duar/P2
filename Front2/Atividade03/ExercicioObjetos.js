var pessoa = {
    Nome: "Dennis",
    Idade: 29,
    Filiacao: ["Fernando", "Claudia"],
    Endereco: {
        Rua: "Rua do Golfo",
        Cidade: "Cabedelo",
        Estado: "Paraiba"
    },
    dadosCompletos: function() {
        if (this.Nome == undefined || this.Idade == undefined || this.Filiacao == undefined || this.Endereco == undefined) {
            return false;
        }
        return true;
    }
}

var pessoa2 = {
    Nome: "Laura",
    Idade: 27,
    Filiacao: ["Francisco", "Elizabeth"],
    Endereco: {
        Rua: "Rua Rosemira",
        Cidade: "João Pessoa",
        Estado: "Paraiba"
    },
    dadosCompletos: function() {
        if (this.Nome == undefined || this.Idade == undefined || this.Filiacao == undefined || this.Endereco == undefined) {
            return false;
        }
        return true;
    }
}

function imprimeTudo() {
    for (i in arguments) {
        console.log("Nome: " + arguments[i].Nome);
        console.log("Idade: " + arguments[i].Idade);
        console.log("Filiação: " + arguments[i].Filiacao);
        let end = JSON.stringify(arguments[i].Endereco);
        console.log("Endereço: " + end);
        console.log("Está completo? " + arguments[i].dadosCompletos());
    }
}

imprimeTudo(pessoa, pessoa2);