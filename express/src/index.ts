import express, { Express } from 'express';
import dotenv from 'dotenv';

/* @ts-ignore */
import { handler } from './frontend/handler.js'

dotenv.config();

const app: Express = express();

app.use(handler)

app.get('/', (req, res) => {
    return res
           .status(400)
           .send('Hello world!');
})

app.listen(process.env.PORT, () => {
    console.log(`Server is now running @port[${process.env.PORT}]`);
})