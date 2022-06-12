const express = require("express");
const router = express.Router();
const db = require("../../db/conn");
const inputCheck = require("../../utils/inputCheck.js");

// get roles with department name
router.get("/roles", (req, res) => {
  const sql = `SELECT roles.*, 
                departments.name AS dept_name
                FROM roles
                LEFT JOIN departments on roles.department_id = departments.id;`;
  db.query(sql, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: rows,
    });
  });
});

// get single role
router.get("/role/:id", (req, res) => {
  const sql = `SELECT roles.*, departments.name 
                AS dept_name
                FROM roles
                LEFT JOIN departments on roles.department_id = departments.id            
                WHERE roles.id = ?`;
  const params = [req.params.id];
  db.query(sql, params, (err, row) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: row,
    });
  });
});

// add a role
router.post("/role", ({ body }, res) => {
  const errors = inputCheck(body, "title", "salary");
  if (errors) {
    res.status(400).json({ error: errors });
    return;
  }

  const sql = `INSERT INTO roles (title, salary, department_id)
              VALUES (?, ?, ?)`;
  const params = [body.title, body.salary, body.department_id];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({ message: "success", data: body });
  });
});

// delete role
router.delete("/role/:id", (req, res) => {
  const sql = `DELETE FROM roles WHERE id = ?`;

  db.query(sql, req.params.id, (err, result) => {
    if (err) {
      res.status(400).json({ error: res.message });
    } else if (!result.affectedRows) {
      res.json({
        message: "role not found",
      });
    } else {
      res.json({
        message: "deleted",
        changes: result.affectedRows,
        id: req.params.id,
      });
    }
  });
});

module.exports = router;
