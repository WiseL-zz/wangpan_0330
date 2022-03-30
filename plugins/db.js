module.exports = async app => {
  const MongoClient = require('mongodb').MongoClient

  const Client = await MongoClient.connect('mongodb://127.0.0.1:27017/netdisk', {
    useUnifiedTopology: true,
  })
  app.mongo = Client
}
