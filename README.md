# @jvlk/rescript-lite-jsx
ReScript support for lite-jsx, a lightweight library to generate HTML. A good match for something like HTMX.

https://github.com/lite-jsx/core

Requires Rescript 11+.

## Installation
```bash
npm i @jvlk/rescript-lite-jsx
```
Update your project's `rescript.json` file.
```json
{
    "bs-dependencies": [
        + "@jvlk/rescript-lite-jsx"
    ],
    + "jsx": {
    +   "version": 4,
    +   "module": "Lit"
    + }
}
```
## How to use
Just write JSX!
```rescript
// title.res
@jsx.component
let make = (~message) => <h1 class="title">{message->Lit.string}</h1>

// app.res
let html = <Title message="Welcome!">
```