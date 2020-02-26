require("env2")("./config.env");
const { Pool } = require("pg");
const url = '';

let connectionString = process.env.DB_URL;

if (process.env.NODE_ENV === "test") {
  connectionString = process.env.TEST_DB_URL;
}
if (!connectionString) {
  throw new Error("please set a DB_URL env variable");

}
const options = {
    connectionString: url,
    sll: true
};

module.exports = new Pool(options);