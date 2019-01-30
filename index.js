const express = require("express");
const app = express();
const router = express.Router();
const PORT = process.env.PORT || 5001;
app.use(
  "/",
  router.get("/", (req, res) => {
    res.send({ message: "Hello World " + process.env.MESSAGE });
  })
);

app.listen(PORT, () => {
  console.log("Server started on port " + PORT);
});
