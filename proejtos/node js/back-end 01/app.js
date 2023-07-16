const express = require("express");
const cors = require("cors");
const rotaLivro = require("./rotas/livros");
const rotafavoritos = require("./rotas/favoritos")

const app = express();

// Configurar o middleware cors
app.use(cors());

// Definir as rotas
app.use("/livros", rotaLivro);
app.use("/favoritos", rotafavoritos);

const port = 5000;
app.use(express.json());

app.listen(port, () => {
  console.log(`Escutando a porta ${port}`);
});
