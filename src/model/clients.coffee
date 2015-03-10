mongoose = require "mongoose"
server = require "../server"
connectionDefault = server.connectionDefault
Schema = mongoose.Schema

ClientSchema = new Schema
  "clientID":      { type: String, required: true, unique: true }
  "clientDomain":        { type: String, required: true, unqiue: true }
  "name":        { type: String, required: true }
  "roles":       [ { type: String, required: true } ]
  "passwordAlgorithm":{ type: String, required: false }
  "passwordHash":   { type: String, required: false }
  "passwordSalt":   { type: String, required: false }
    
#compile the Client Schema into a Model
exports.Client = connectionDefault.model 'Client', ClientSchema
