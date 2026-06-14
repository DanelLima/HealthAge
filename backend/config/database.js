import mysql from 'mysql2/promise';

let db;

const initDb = async () => {
  db = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'healthage',
  });
  console.log("Banco de dados conectado.");
};

export { db, initDb };
