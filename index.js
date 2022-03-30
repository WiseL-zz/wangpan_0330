const express = require('express')
const https = require('https')
const app = express()
const fs = require('fs')

app.use(express.json())
app.use(require('cors')())
app.all('*', function(req, res, next) {
  res.header('Access-Control-Allow-Origin', '*')
  res.header('Access-Control-Allow-Headers', '*')
  res.header('Access-Control-Allow-Methods', '*')
  next()
})
app.use(express.static('public')) //用来托管静态文件，实现前端通过url访问文件
require('./plugins/db')(app)
require('./routes/index')(app)

var privateKey = fs.readFileSync('./ssl-link/private.pem')
var certificate = fs.readFileSync('./ssl-link/fullchain.pem')

app.listen(3000, () => {console.log(123)})
