const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>🚀 Projeto 3 - Cloud Native App rodando no K3s!</h1><p>Deploy automatizado via GitHub Actions.</p>');
});

app.listen(port, () => {
  console.log(`App rodando na porta ${port}`);
});