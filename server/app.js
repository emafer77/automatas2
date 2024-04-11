import express from "express";
import { getUserByID } from "./database.js";

const app = express();
app.use(express.json());

app.get("/musculos/:id_musculo", async (req, res) => {
  const musculo = await getUserByID(req.params.id);
  res.status(200).send(musculo);
});

app.listen(8080, () => {
  console.log("server running on port 8080");
});
