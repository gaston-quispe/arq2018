const express = require("express");

const app = express();

const PORT = 3000;
const TIMEOUT = 10000;

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
    // Esto de abajo no deberia ir creo...
    // Creo q deberia ir dentro del timeout
    // No tendria sentido hacer el send aca antes de que el
    // setTimeOut finailce -> Investigar mas
    //res.send("Recibida peticion asincronica!\n");
});

// node app.js
// curl http://127.0.0.1:3000/

// npm install expresss --save