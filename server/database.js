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

export async function getUserByID(id_musculo) {
  const [row] = await pool.query(
    `SELECT * FROM musculos WHERE id_musculo = ?`,
    [id_musculo]
  );
  console.log(row[0]);
}

getUserByID(1);
