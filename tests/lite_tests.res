open Test

test("jsx", () => {
  module Component = {
    @jsx.component
    let make = (~message) => <h1 class="large"> {message} </h1>
  }

  assertion(
    ~message="creates a valid HTML string",
    (_a, _b) => {
      %raw("_a === _b")
    },
    <Component message={"hello"->Lite.string} />,
    "<h1 class=\"large\">hello</h1>",
  )

  assertion(
    ~message="HTMX props work",
    (_a, _b) => {
      %raw("_a === _b")
    },
    <div hxGet="/test"> {Lite.string("HTMX")} </div>,
    "<div hx-get=\"/test\">HTMX</div>",
  )
})
