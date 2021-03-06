express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'

app = express()

app.configure ->
	app.set 'port', process.env.PORT || 3000
	app.set 'views', __dirname + '/views'
	app.set 'view engine', 'jade'
	app.engine 'html', require('ejs').renderFile	
	app.use express.favicon()
	app.use express.logger('dev')
	app.use express.bodyParser()
	app.use express.methodOverride()
	app.use app.router
	app.use express.static(path.join(__dirname, 'public'))
	return

app.configure 'development', ->
	app.use express.errorHandler()
	return
	
app.get '/', (req, res) ->
	res.render 'index.html'
	return

server = http.createServer(app).listen(app.get('port'), ->
	console.log 'express listening on port ' + app.get('port')
	return
	)

# app.listen(3000)
