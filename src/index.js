const express = require('express');
const graphqlHTTP = require('express-graphql');

const app = express();

app.use('/', graphqlHTTP({
  schema: myGraphQLSchema,
  graphiql: true
}));

app.listen(4000);
