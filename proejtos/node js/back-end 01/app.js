const express = require("express")
const rotaLivro = require("./rotas/livros")
const router = require("./rotas/livros")

const app = express()

app.use('/livros', rotaLivro)

const port = 5000
app.use(express.json())

app.listen(port, () => {
  console.log(`Escutando a porta ${port}`)
})




