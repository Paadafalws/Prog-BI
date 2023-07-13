// rotas > livro.js

const { Router } = require("express");
const { getLivros, getLivroById, postLivros, patchLivros, deleteLivro } = require("../controladores/livros");

const router = Router();

router.get('/', getLivros);

router.get('/:id', getLivroById);

router.post('/', postLivros);

router.patch('/:id', patchLivros);

router.delete('/:id', deleteLivro);

module.exports = router;
