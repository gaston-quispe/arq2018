const express = require("express");

const app = express();

const PORT = 3000;
const TIMEOUT = 10000;
const LOOP = 1139024000;

app.get("/", (req, res) => {
    res.send("Hola mundo desde Node!\n");
});

app.listen(PORT, ()=> {
    console.log("Escuchando\n", PORT);
});

app.get("/timeout/", (req, res) => {
    setTimeout(() => {
        let msg = "Hola mundo desde node timeout! > ";
        msg += new Date().toISOString();
        console.log(msg + "\n");
        
        // Mando el resultado cuando el setTimeOut finalice y
        // los calculos dentro de este bloque terminen.
        res.send("Finalizada peticion asincronica!\n");
    }, TIMEOUT);
});

app.get("/intensivo/", (req, res) => {
    var i = 0;
    while (i < LOOP) {
        i++;
    }
    let msg = "Procesamiento intensivo finalizado > ";
    msg += new Date().toISOString();
    res.send(msg + "\n");
});


// node app.js
// curl http://127.0.0.1:3000/

// npm install expresss --save