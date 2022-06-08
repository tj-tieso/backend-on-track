const mysql = require("mysql2");

// connect to db
const db = mysql.createConnection(
  {
    host: "localhost",
    user: "root",
    password: "PoC31Lark)",
    database: "company_db",
  },
  console.log("Connected to company_db.")
);

module.exports = db;
