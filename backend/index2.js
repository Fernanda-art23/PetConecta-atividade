const express = require('express')
const cors = require('cors')
const mysql = require('mysql2/promise')
const crypto = require('crypto')

const app = express()
const porta = 3000

const pool = require('./db.js')

app.use(cors())
app.use(express.json())

app.listen(porta, () => {
  console.log("Servidor rodando na porta " + porta)
})


//ROTA FALE CONOSCO!!
app.post("/faleconosco", async (req, res) => {
  try {
    const { nome_completo, email, telefone, assunto, mensagem } = req.body

    if (!nome_completo || !email || !telefone || !mensagem || !assunto) {
      return res.status(400).json({ resposta: "Preencha todos os campos obrigatórios" })
    }

    // Verificar se o email já está cadastrado
    const sql = `INSERT INTO petconecta (nome_completo, email, telefone, assunto, mensagem) VALUES (?,?,?,?,?)`
    const [resultado2] = await pool.query(sql, [nome_completo, email, telefone, assunto, mensagem])

    if (!mensagem || mensagem.length < 6) {
      return res.json({ "resposta": "A mensagem deve conter no mínimo 6 caracteres" })
  
  } else if (!email || email.length < 6) {
      return res.json({ "resposta": "Preencha um e-mail válido" })
  
  } else if (!nome_completo || nome.length < 6) {
      return res.json({ "resposta": "Preencha o seu nome inteiro" })
  
  } else if (!telefone || telefone.length < 8) {
      return res.json({ "resposta": "Preencha o seu telefone" })
  
  } else if (!assunto || assunto.length < 5) {
      return res.json({ "resposta": "Preencha com o assunto da conversa" })
  }



  } catch (error) {
    console.error(error)

    //  Erros internos do servidor (ex: falha na conexão com o DB)
    return res.status(500).json({ resposta: "Erro interno no servidor" })
  }
})