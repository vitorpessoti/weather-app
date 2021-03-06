require('dotenv').config();

const consign = require('consign');
const express = require('express');
const port = 3300;

const app = express();
app.use(express.json());

consign()
    .include('./controllers')
    .then('./config/routes.js')
    .into(app);

const server = app.listen(process.env.APP_PORT, process.env.APP_HOST, () => {
    console.log(`Server up and listening at ${process.env.APP_HOST}:${process.env.APP_PORT}`);
});