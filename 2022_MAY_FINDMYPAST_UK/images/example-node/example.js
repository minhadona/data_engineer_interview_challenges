#!/usr/bin/env node

const Sequelize = require("sequelize");
const parse = require("csv-parse/lib/sync");
const fs = require("fs");

// connect to the database
const sequelize = new Sequelize("codetest", "codetest", "swordfish", {
  host: "database",
  dialect: "mysql",
});

// make an ORM object to refer to the table
const Example = sequelize.define(
  "example",
  { name: { type: Sequelize.STRING } },
  { timestamps: false }
);

// read the CSV data file into the table
Example.bulkCreate(
  parse(fs.readFileSync("/data/example.csv"), { columns: true })
).then(function () {
  // output the table to a JSON file
  Example.findAll({ attributes: ["id", "name"] }).then(function (rows) {
    fs.writeFileSync("/data/example_node.json", JSON.stringify(rows));
  });
});
