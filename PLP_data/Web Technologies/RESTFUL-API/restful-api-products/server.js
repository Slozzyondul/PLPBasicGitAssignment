const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.json());


mongoose.connect("mongodb://localhost:27017/products", {
    //useNewUrlParser: true,
    //useUnifiedTopology: true,
    
});

const   db = mongoose.connection;
db.on("error", console.error.bind(console, "Mangodb connection error"));


app.use("/products", require("./routes/products"));


app.listen(port, () => {
    console.log(`listening on port ${port}`);
});