var aluno = {
    nome: "Dennis",
    idade: 29,
    nacionalidade: "huehue br",
    menoridade: false
}
console.log(aluno)

aluno.addData = "adicionado depois"

console.log(aluno)
console.log(aluno.nExiste)

delete aluno.addData
console.log(aluno)

for (var prop in aluno) {
    console.log(prop)
    console.log(aluno[prop])
}