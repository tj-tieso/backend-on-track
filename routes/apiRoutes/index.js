// require statements
const express = require("express");
const router = express.Router();

// TO DO set up router.use(require("path name"))
router.use(require("./departmentRoutes"));
router.use(require("./roleRoutes"));

module.exports = router;
