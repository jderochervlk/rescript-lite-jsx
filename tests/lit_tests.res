open Test

module Component = {
  @jsx.component
  let make = (~message) => <h1 class="large"> {message} </h1>
}

test("jsx", () => {
  let html = <Component message={"hello"->Lit.string} />
  assertion(
    ~message="creates a valid HTML string",
    (_a, _b) => {
      %raw("_a === _b")
    },
    html,
    "<h1 class=\"large\">hello</h1>",
  )
})
