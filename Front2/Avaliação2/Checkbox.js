var todos = document.getElementById("todos")
todos.addEventListener("change", mudaMarcar)
var salvar = document.getElementById("salvar")
salvar.addEventListener("click", marcados)

function mudaMarcar(){
    var listaCheck = document.getElementsByClassName("marcar")
    for (var i = 0; i < listaCheck.length; i++){
    listaCheck[i].checked = todos.checked
    }
}

function marcados(){
    var listaCheck = document.getElementsByClassName("marcar")
    var conta = 0
    for (i in listaCheck){
        if (listaCheck[i].checked == true){
            conta ++
        }
    }
    alert("Temos " + conta +" compromissos marcados")
}