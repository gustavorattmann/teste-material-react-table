import { Request, Response } from "express";
import { PrismaClient, People } from "@prisma/client";

const register = async (req: Request, res: Response) => {
  return res.status(200).send("Cadastro");
};

const all = async (req: Request, res: Response) => {
  return res.status(200).send("Todos");
};

export default {
  register,
  all,
};
