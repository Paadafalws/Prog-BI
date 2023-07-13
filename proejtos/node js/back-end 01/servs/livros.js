const fs = require("fs");

function getTodosLivros() {
  return JSON.parse(fs.readFileSync("livros.json"));
}

function getLivrosPorId(id) {
  const livros = JSON.parse(fs.readFileSync("livros.json"));
  const livroFiltrado = livros.filter((livro) => livro.id === id);
  return livroFiltrado;
}

function insereLivro(livroNovo) {
  const livros = JSON.parse(fs.readFileSync("livros.json"));
  const novaListaDeLivros = [...livros, livroNovo];
  fs.writeFileSync("livros.json", JSON.stringify(novaListaDeLivros));
}

function modificaLivro(id, novoConteudo) {
  let livrosAtuais = JSON.parse(fs.readFileSync("livros.json"));
  const indiceModificado = livrosAtuais.findIndex((livro) => livro.id === id);
  livrosAtuais[indiceModificado] = { ...livrosAtuais[indiceModificado], ...novoConteudo };
  fs.writeFileSync("livros.json", JSON.stringify(livrosAtuais));
}

function deletaLivroPorId(id) {
  const livros = JSON.parse(fs.readFileSync("livros.json"));
  const livrosFiltrados = livros.filter((livro) => livro.id !== id);
  fs.writeFileSync("livros.json", JSON.stringify(livrosFiltrados));
}

module.exports = {
  getTodosLivros,
  getLivrosPorId,
  insereLivro,
  modificaLivro,
  deletaLivroPorId,
};
