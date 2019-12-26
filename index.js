const express = require('express')

const PORT = process.env.PORT || 3000

const app = express()

app.get('/', (request, response) => {
  return response.json('<h1>Testing Ya!</h1>')
})

app.listen(PORT, () => console.log(`App running on port ${PORT}`));
