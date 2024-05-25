import express from "express";
import {
  getMusculoByID,
  getEjercicioByID,
  getEjercicioEnCasaByID,
  getEjerciciosByID,
  getEjerciciosEnCasaByID,
} from "./database.js";

import cors from "cors";

/*const corsOption = {
  origin: "http://140.10.6.51:8081", // Agrega "http://" antes de "localhost:8081"
  methods: ["POST", "GET"],
  credentials: true,
};*/

const app = express();
app.use(express.json());
app.use(cors());

app.get("/musculos/:id_musculo", async (req, res) => {
  try {
    // Obtener el músculo utilizando la función getUserByID
    const musculo = await getMusculoByID(req.params.id_musculo);
    // Devolver el músculo como respuesta en formato JSON
    res.json(musculo);
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el músculo:", error);
    res.status(500).json({ error: "Hubo un error al procesar la solicitud" });
  }
});

app.get("/ejercicio/:id_ejercicio", async (req, res) => {
  try {
    // Obtener el ejercicio utilizando la función getEjercicioByID
    const ejercicio = await getEjercicioByID(req.params.id_ejercicio);
    // Devolver el ejercicio como respuesta en formato JSON
    res.json(ejercicio);
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio:", error);
    res.status(500).json({ error: "Hubo un error al procesar la solicitud" });
  }
});
app.get("/ejercicios/:id_musculo", async (req, res) => {
  try {
    // Obtener el ejercicio utilizando la función getEjercicioByID
    const ejercicios = await getEjerciciosByID(req.params.id_musculo);
    // Devolver el ejercicio como respuesta en formato JSON
    res.json(ejercicios);
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio:", error);
    res.status(500).json({ error: "Hubo un error al procesar la solicitud" });
  }
});
app.get("/ejercicios_en_casa/:id_musculo", async (req, res) => {
  try {
    // Obtener el ejercicio utilizando la función getEjercicioByID
    const ejercicios = await getEjerciciosEnCasaByID(req.params.id_musculo);
    // Devolver el ejercicio como respuesta en formato JSON
    res.json(ejercicios);
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio:", error);
    res.status(500).json({ error: "Hubo un error al procesar la solicitud" });
  }
});

app.get("/ejercicio_en_casa/:id_ejercicio_casa", async (req, res) => {
  try {
    // Obtener el ejercicio en casa utilizando la función getEjercicioEnCasaByID
    const ejercicioEnCasa = await getEjercicioEnCasaByID(
      req.params.id_ejercicio_casa
    );
    // Devolver el ejercicio en casa como respuesta en formato JSON
    res.json(ejercicioEnCasa);
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio en casa:", error);
    res.status(500).json({ error: "Hubo un error al procesar la solicitud" });
  }
});

app.listen(8080, "0.0.0.0");
