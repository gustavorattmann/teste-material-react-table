import { Router } from "express";
import people from "../controllers/people";

const routes = Router();

routes.post("/", people.all);
routes.post("/cadastro", people.register);

routes.all("*", (req, res) => {
  res.status(404).send("Página não encontrada!");
});

export { routes };
