# Purescript GraphQL API
An example [GraphQL] API written in [Purescript]

This project uses [NodeJS] to run a [GraphQL] server with [ExpressJS]. The
GraphQL resolve functions are written and tested in [Purescript]. This is the
Open Source code that goes along with a blog series hosted [here].

[NodeJS]: https://nodejs.org/
[GraphQL]: http://graphql.org/
[ExpressJS]: https://expressjs.com/
[Purescript]: http://www.purescript.org/
[here]: https://blog.swiftnav.com/

## Setup

This API uses the [`yarn`] dependency manager for NodeJS dependencies and
[`bower`] for Purescript dependencies. You can install `yarn` via [Homebrew] and
`bower` via `yarn`.

[`yarn`]: https://yarnpkg.com/
[`bower`]: https://bower.io/
[Homebrew]: https://brew.sh/

```
brew install yarn
yarn global add bower
```

Then install the dependencies.

```
yarn setup
```

## Run Server

Run the server via:

```
yarn start
```

## Run Tests

You can run the Purescript tests via:

```
yarn test
```
