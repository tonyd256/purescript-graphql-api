const express = require('express');
const graphqlHTTP = require('express-graphql');
const fs = require('fs');
const graphql = require('graphql');

const app = express();
const myGraphQLSchema = graphql.buildSchema(
    fs.readFileSync('./src/schema.graphql', { encoding: 'utf8' })
);

app.use('/', graphqlHTTP({
  schema: myGraphQLSchema,
  graphiql: true,
  rootValue: { test: function () { return true; } }
}));

app.listen(4000);
