import express, { Express } from 'express';
import dotenv from 'dotenv';

/* @ts-ignore */
import { handler } from './frontend/handler.js'

dotenv.config();

const app: Express = express();

app.use((req, _, next) => {
    console.log(`[${new Date().toUTCString()}] "${req.method} HTTP/${req.httpVersion}" @ ${req.hostname} ← ${req.ip} || ${req.path}`);
    next();
})

app.use(handler)

app.listen(process.env.PORT, () => {
    console.log(`Server is now running @port[${process.env.PORT}]`);
})