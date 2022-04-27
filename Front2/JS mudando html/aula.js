function mudarImagem() {

    var imagem = document.getElementById("imagem1");
    imagem.src = "imagem2.jfif";
}

function validaForm() {
    if (document.getElementById("txtNome").value === "") {
        return false;
    }
    return true;
}