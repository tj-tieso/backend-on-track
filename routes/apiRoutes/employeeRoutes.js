const express = require("express");
const router = express.Router();
const db = require("../../db/conn");
const inputCheck = require("../../utils/inputCheck.js");

// get all employees with role/salary/dept
router.get("/employees", (req, res) => {
  const sql = `SELECT employees.*, 
                departments.name AS dept_name,
                roles.title AS title,
                roles.salary AS salary
                FROM employees
                LEFT JOIN departments on employees.department_id = departments.id
                LEFT JOIN roles on employees.title_id = roles.id`;
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

// get employee by id
router.get("/employee/:id", (req, res) => {
  const sql = `SELECT employees.*, 
                departments.name AS dept_name,
                roles.title AS title,
                roles.salary AS salary
                FROM employees
                LEFT JOIN departments on employees.department_id = departments.id
                LEFT JOIN roles on employees.title_id = roles.id
                WHERE employees.id = ?`;
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

// add an employee to
router.post("/employee", ({ body }, res) => {
  const errors = inputCheck(
    body,
    "first_name",
    "last_name",
    "department_id",
    "title_id",
    "manager_id"
  );
  if (errors) {
    res.status(400).json({ error: errors });
    return;
  }

  const sql = `INSERT INTO employees (first_name, last_name, department_id, title_id, manager_id)
              VALUES (?, ?, ?, ?, ?)`;
  const params = [
    body.first_name,
    body.last_name,
    body.department_id,
    body.title_id,
    body.manager_id,
  ];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.status(400).json({ error: err.message });
      return;
    }
    res.json({ message: "success", data: body });
  });
});

//delete employee
router.delete("/employee/:id", (req, res) => {
  const sql = `DELETE FROM employees WHERE id = ?`;

  db.query(sql, req.params.id, (err, result) => {
    if (err) {
      res.status(400).json({ error: res.message });
    } else if (!result.affectedRows) {
      res.json({
        message: "employee not found",
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
