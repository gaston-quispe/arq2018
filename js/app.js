const express = require("express");

const app = express();

const PORT = 3000;

app.get("/", (req, res) => {
    res.send("Hola mundo desde Node!");
});

app.listen(PORT, ()=> {
    console.log("Escuchando", PORT);
});

app.get("/timeout/", (req, res) => {
    setTimeout(function(){console.log("Hola mundo"); }, 1000);
    res.send("Recibida peticion asincronica");
});

// node app.js
// curl http://127.0.0.1:3000/