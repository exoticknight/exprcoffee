#!/usr/bin/env coffee


express = require 'express'
conect = require 'connect'
stylus = require 'stylus'
flash = require 'connect-flash'
assets = require 'connect-assets'
slashes = require 'connect-slashes'
http = require 'http'
path = require 'path'

app = module.exports = express()

app.configure ()->
  app.set 'port', process.env.PORT || 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.compress()
  app.use express.favicon()
  app.use express.cookieParser('keyboard cats')
  app.use express.session
    cookie:
      secure: true
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.static(path.join(__dirname, 'public'))
  app.use express.csrf()
  app.use app.router
  app.use flash()
  app.use assets()
  app.use slashes()
  return

app.configure 'development', ()->
  app.use express.errorHandler()
  return


routes = require './routes'
routes.about = require './routes/about'

app.get '/', routes.index
app.get '/about/', routes.about.index


http.createServer(app).listen app.get('port'), ()->
  console.log "Express server listening on port "+app.get('port')
