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
        if (this.Nome == undefined || this.Nome == "" || this.Idade == undefined || this.Idade == "" || this.Filiacao[0] == undefined || this.Filiacao[0] == "" || this.Filiacao[1] == undefined || this.Filiacao[1] == "" || this.Endereco.Rua == undefined || this.Endereco.Cidade == undefined || this.Endereco.Estado == undefined || this.Endereco.Rua == "" || this.Endereco.Cidade == "" || this.Endereco.Estado == "") {
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
        Cidade: "",
        Estado: "Paraiba"
    },
    dadosCompletos: function() {
        if (this.Nome == undefined || this.Nome == "" || this.Idade == undefined || this.Idade == "" || this.Filiacao[0] == undefined || this.Filiacao[0] == "" || this.Filiacao[1] == undefined || this.Filiacao[1] == "" || this.Endereco.Rua == undefined || this.Endereco.Cidade == undefined || this.Endereco.Estado == undefined || this.Endereco.Rua == "" || this.Endereco.Cidade == "" || this.Endereco.Estado == "") {
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