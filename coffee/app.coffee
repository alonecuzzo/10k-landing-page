express = require('express')
app = express()

app.get('/', (req, res) ->
	return
	)

app.listen(3000)
console.log 'listening on port 3000'