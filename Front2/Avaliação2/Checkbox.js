var todos = document.getElementById("todos")
todos.addEventListener("change", marcarTodos)
var salvar = document.getElementById("salvar")
salvar.addEventListener("click", marcados)

function marcarTodos(){
    var listaCheck = document.getElementsByClassName("marcar")
    if(todos.checked == true){
        for (var i = 0; i < listaCheck.length; i++){
        listaCheck[i].checked = true
        }
    }else{
        for (var i = 0; i < listaCheck.length; i++){
            listaCheck[i].checked = false
        }
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