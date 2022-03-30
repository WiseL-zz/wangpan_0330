const { Console } = require('console')
const fs = require('fs')
const path = require('path')
module.exports = app => {
  const express = require('express')
  const jwt = require('jsonwebtoken')
  const multer = require('multer')
  const fs = require('fs')
  const router = express.Router()
  const SECRET = 'wuuconix yyds!'
  const md5 = require('md5')
  auth = async(req, res, next) => {
    try {
      const token = String(req.headers.authorization).split(' ')[1]
      const data = jwt.verify(token, SECRET)
      const User = await app.mongo.db('netdisk').collection('User')
      const user = await User.findOne({ username: data.username })
      if (user) {
        const { username } = user
        req.username = username
        req.isValid = true
        next()
      }
    } catch (e) {
      console.log(e)
    }
  }
  router.post('/register', async(req, res) => {
    var message = 'ok'
    const User = await app.mongo.db('netdisk').collection('User')
    const user = await User.findOne({ username: req.body.username })
    if (user) {
      return res.send({ message: 'duplicated' })
    }
    await User.insert(req.body, (err) => {
      if (err) {message = 'wrong'}
    })
    await fs.mkdir(`./files/${req.body.username}`, (err) => {
      if (err) {message = 'something happened during mkdir in register'}
    })
    await fs.mkdir(`./public/preview/${req.body.username}`, (err) => {
      if (err) {message = 'something happened during mkdir in register'}
    })
    await fs.mkdir(`./public/share/${req.body.username}`, (err) => {
      if (err) {message = 'something happened during mkdir in register'}
    })
    res.send({ message })
  })

  router.post('/login', async(req, res) => {
    const User = await app.mongo.db('netdisk').collection('User')
    const user = await User.findOne({
      username: req.body.username,
    })
    if (!user) {
      return res.send({ message: '用户名不存在' })
    }
    if (req.body.password != user.password) {
      return res.send({ message: '密码错误' })
    }
    const token = jwt.sign({ id: String(user._id), username: req.body.username }, SECRET)
    res.send({ user, token, message: 'right' })
  })
  router.post(
    '/upload',
    multer({ dest: path.join(__dirname, '../files/temp') }).single('file'),
    auth,
    async(req, res) => {
      if (!fs.existsSync(path.join(__dirname, `../files/${req.username}`))) {
        fs.mkdirSync(path.join(__dirname, `../files/${req.username}`))
      }
      const file = req.file
      await fs.renameSync(file.path, `./files/${req.username}/${file.originalname}`)
      res.send({ file: file, message: 'ok' })
    },
  )
  router.get('/download', auth, (req, res) => {
    req.query.filename
      ? res.download(path.join(__dirname, `../files/${req.username}/${req.query.filename}`))
      : res.send({ message: 'failed to download file' })
  })
  router.get('/file', auth, (req, res) => {
    try {
      var fileRawList = []
      var fileList = []

      fileRawList = fs.readdirSync(`./files/${req.username}`, { withFileTypes: true })
      for (var i = 0; i < fileRawList.length; i++) {
        var file = {}
        const { name } = fileRawList[i]
        const fileStats = fs.statSync(`./files/${req.username}/${name}`)
        file.filename = name
        var uploadtimeRaw = new Date(Number(String(fileStats.birthtimeMs).split('.')[0])).toLocaleString(
          'zh',
          { hour12: false, timeZone: 'Asia/Shanghai' },
        )
        var target = uploadtimeRaw.split(' ').pop().split(':')
        if (target[0] == '24') target[0] = '00'
        file.uploadtime = uploadtimeRaw.split(' ')[0] + ' ' + target.join(':')
        file.size = fileStats.size
        fileList.push(file)
      }
      res.send(fileList)
    } catch (e) {
      console.log(e)
    }
  })
  router.post('/delete', auth, (req, res) => {
    const filename = req.body.filename
    fs.unlinkSync(path.join(__dirname, '../files/' + req.username + '/' + filename))
    res.send({ message: 'delete ok!' })
  })
  router.get('/preview', auth, async(req, res) => {
    const src = path.join(__dirname, '../files/' + req.username + '/' + req.query.filename)
    const md5_filename = String(md5(req.query.filename))
    const type = req.query.filename.split('.').pop()
    if (!fs.existsSync(__dirname, path.join(__dirname, `../public/preview/${req.username}`))) {
      fs.mkdirSync(__dirname, path.join(__dirname, `../public/preview/${req.username}`))
    }
    const dest = path.join(__dirname, `../public/preview/${req.username}/${md5_filename}.${type}`)
    fs.copyFileSync(src, dest, 0)
    const url = '/preview/' + req.username + '/' + md5_filename + '.' + type
    res.send({ url })
  })
  router.get('/share', auth, async(req, res) => {
    const src = path.join(__dirname, '../files/' + req.username + '/' + req.query.filename)
    const md5_filename = String(md5(req.query.filename))
    const type = req.query.filename.split('.').pop()  //filename包含后缀，如果直接把filename加密，将失去后缀，我们需要手动加后缀
    if (!fs.existsSync(__dirname, path.join(__dirname, `../public/share/${req.username}`))) {
      fs.mkdirSync(__dirname, path.join(__dirname, `../public/share/${req.username}`))
    }
    const dest = path.join(__dirname, `../public/share/${req.username}/${md5_filename}.${type}`)
    fs.copyFileSync(src, dest, 0)
    const url = '/share/' + req.username + '/' + md5_filename + '.' + type
    res.send({ url })
  })
  app.use('/api', router)
}
