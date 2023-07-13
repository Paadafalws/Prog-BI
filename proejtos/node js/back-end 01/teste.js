// leitura de dados abaixo de json

const fs = require("fs")


fs.writeFileSync

console.log(JSON.parse(fs.readFileSync("livros.json"))) // leitura no consolo do json

// Adicionar dados dentro de um json abixo
const fs = require("fs")

const dadosAtuais = JSON.parse(fs.readFileSync("livros.json"))
const novoDado = { id:'34', nome: 'Livro mais que demai sadasdasdasdasdasdasdasdasdass' }

fs.writeFileSync("livros.json", JSON.stringify([...dadosAtuais, novoDado ]))

console.log(JSON.parse(fs.readFileSync("livros.json")))