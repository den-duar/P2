var btnAdd = document.getElementById("btnAdd")
var listaAdd = document.getElementById("listaAdd")
var edtItem = document.getElementById("edtItem")

btnAdd.addEventListener("click", addItem)


function addItem() {

    var compromissoInformado = edtItem.value
    var item = document.createElement("li")
    item.innerText = compromissoInformado
    listaAdd.appendChild(item)
}