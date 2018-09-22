const express = require("express");

const app = express();

const PORT = 3000;
const TIMEOUT = 2000;

app.get("/", (req, res) => {
    res.send("Hola mundo desde Node!");
});

app.listen(PORT, ()=> {
    console.log("Escuchando", PORT);
});

app.get("/timeout/", (req, res) => {
    setTimeout(() => {
        let msg = "Hola mundo desde node timeout! > ";
        msg += new Date().toISOString();
        console.log(msg);
    }, TIMEOUT);
    res.send("Recibida peticion asincronica");
});

// node app.js
// curl http://127.0.0.1:3000/

// npm install expresss --save