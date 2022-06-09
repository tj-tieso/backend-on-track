// require statements
const express = require("express");
const router = express.Router();

// TO DO set up router.use(require("path name"))
router.use(require("./departmentRoutes"));

module.exports = router;
