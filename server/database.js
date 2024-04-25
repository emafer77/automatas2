import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();

const pool = mysql
  .createPool({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
  })
  .promise();

export async function getMusculoByID(id_musculo) {
  try {
    console.log("Buscando el músculo número: " + id_musculo);

    // Consulta SQL para obtener el músculo con el ID proporcionado
    const query = `SELECT * FROM musculos WHERE id_musculo = ?`;

    // Ejecutar la consulta con el ID proporcionado como parámetro
    const [rows] = await pool.query(query, [id_musculo]);

    // Devolver el primer resultado (suponiendo que solo esperas un resultado)
    return rows[0];
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el músculo:", error);
    throw error; // Lanzar el error para que pueda ser manejado externamente
  }
}

export async function getEjercicioByID(id_ejercicio) {
  try {
    console.log("Buscando el ejercicio número: " + id_ejercicio);

    // Consulta SQL para obtener el ejercicio con el ID proporcionado
    const query = `SELECT * FROM ejercicios WHERE ejercicio_id = ?`;

    // Ejecutar la consulta con el ID proporcionado como parámetro
    const [rows] = await pool.query(query, [id_ejercicio]);

    // Devolver el primer resultado (suponiendo que solo esperas un resultado)
    return rows[0];
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio:", error);
    throw error; // Lanzar el error para que pueda ser manejado externamente
  }
}

export async function getEjercicioEnCasaByID(id_ejercicio_casa) {
  try {
    console.log("Buscando el ejercicio en casa número: " + id_ejercicio_casa);

    // Consulta SQL para obtener el ejercicio en casa con el ID proporcionado
    const query = `SELECT * FROM ejercicios_en_casa WHERE ejercicio_en_casa_id = ?`;

    // Ejecutar la consulta con el ID proporcionado como parámetro
    const [rows] = await pool.query(query, [id_ejercicio_casa]);

    // Devolver el primer resultado (suponiendo que solo esperas un resultado)
    return rows[0];
  } catch (error) {
    // Manejo de errores
    console.error("Error al obtener el ejercicio en casa:", error);
    throw error; // Lanzar el error para que pueda ser manejado externamente
  }
}
