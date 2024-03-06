import { PrismaClient } from "@prisma/client";
import { routes } from "./routers";
import * as dotenv from "dotenv";
import express from "express";
import cors from "cors";
import path from "path";

dotenv.config({ path: path.resolve(__dirname, "../../.env") });

export const prisma = new PrismaClient();
const app = express();

const url = process.env.API_URL;
const protocol = process.env.API_PROTOCOL;
const port = process.env.API_PORT;

const allowedOrigins = [`${protocol}://localhost:${port}`];

const options: cors.CorsOptions = {
  origin: allowedOrigins,
};

app.use(cors(options));
app.use(express.json());
app.use("/", routes);

app.listen(port, () => {
  console.log("🚀 Servidor está em execução!");
  console.log(`${protocol}://${url}:${port}`);
});
