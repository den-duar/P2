function zebrando() {
    var tabela = document.getElementsByTagName("tr")
    for (var i = 0; i < tabela.length; i++) {
        if (i % 2 == 0) {
            tabela[i].setAttribute("class", "corAzul")
        } else {
            tabela[i].setAttribute("class", "corVerde")
        }
    }
}

function alertCarregou() {
    window.alert("Carregou")
}
/*
trecho acima sobre eventos. o evento é chamado durante o carregamento. existem outros eventos
*/