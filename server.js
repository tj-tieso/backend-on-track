// require statements
const express = require("express");
const db = require("./db/conn");
const apiRoutes = require("./routes/apiRoutes");

const PORT = process.env.PORT || 3001;
const app = express();

const inputCheck = require("./utils/inputCheck.js");

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use("/api", apiRoutes);

// hey listen!
db.connect((err) => {
  if (err) throw err;
  console.log("Database connected");
  app.listen(PORT, () => {
    console.log(`Hey Listen! on http://localhost:${PORT}`);
  });
});
