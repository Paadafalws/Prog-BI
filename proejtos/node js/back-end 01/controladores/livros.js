// controladores > livro.js

const { getTodosLivros, getLivrosPorId, insereLivro, modificaLivro, deletaLivroPorId } = require("../servs/livros");

function getLivros(req, res) {
  try {
    const livros = getTodosLivros();
    res.send(livros);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

function getLivroById(req, res) {
  try {
    const id = req.params.id;
    const livro = getLivrosPorId(id);
    res.send(livro);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

function postLivros(req, res) {
  try {
    const novoLivro = req.body;
    insereLivro(novoLivro);
    res.send("Livro inserido com sucesso!");
  } catch (error) {
    res.status(500).send(error.message);
  }
}

function deleteLivro(req, res) {
  try {
    const id = req.params.id;
    deletaLivroPorId(id);
    res.send("Livro deletado com sucesso!");
  } catch (error) {
    res.status(500).send(error.message);
  }
}

function patchLivros(req, res) {
  try {
    const id = req.params.id;
    const body = req.body;
    modificaLivro(body, id);

    res.send("Livro modificado com sucesso!");
  } catch (error) {
    res.status(500).send(error.message);
  }
}

module.exports = {
  getLivros,
  postLivros,
  deleteLivro,
  patchLivros,
  getLivroById,
};
