const express = require('express');
const app = express();
const port = 3000;

// Define the static file path
app.use(express.static(__dirname+'/public'));

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/index.html');
})

app.listen(port, () => console.log('The server running on Port '+port));