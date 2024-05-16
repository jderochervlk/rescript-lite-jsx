type element = Jsx.element

type component<'props> = Jsx.component<'props>

type componentLike<'props, 'return> = Jsx.componentLike<'props, 'return>

@module("./vendor.mjs")
external jsx: (component<'props>, 'props) => element = "wrapper"

@module("./vendor.mjs")
external jsxKeyed: (component<'props>, 'props, ~key: string=?, @ignore unit) => element = "wrapper"

@module("./vendor.mjs")
external jsxs: (component<'props>, 'props) => element = "wrapper"

@module("./vendor.mjs")
external jsxsKeyed: (component<'props>, 'props, ~key: string=?, @ignore unit) => element = "wrapper"

external array: array<element> => element = "%identity"
external float: float => element = "%identity"
external int: int => element = "%identity"
external string: string => element = "%identity"
@val external null: element = "null"

/* These are needed for Fragment (<> </>) support */
type fragmentProps = {children?: element}
@module("./vendor.mjs") external jsxFragment: component<fragmentProps> = "Fragment"

module Elements = {
  type props = {
    ...JsxDOM.domProps,
    class?: string,
    @as("hx-get") hxGet?: string,
    @as("hx-post") hxPost?: string,
    @as("hx-push-url") hxPushUrl?: string,
    @as("hx-select") hxSelect?: string,
  }

  @module("./vendor.mjs")
  external jsx: (string, props) => Jsx.element = "wrapper"

  @module("./vendor.mjs")
  external div: (string, props) => Jsx.element = "wrapper"

  @module("./vendor.mjs")
  external jsxKeyed: (string, props, ~key: string=?, @ignore unit) => Jsx.element = "wrapper"

  @module("./vendor.mjs")
  external jsxs: (string, props) => Jsx.element = "wrapper"

  @module("./vendor.mjs")
  external jsxsKeyed: (string, props, ~key: string=?, @ignore unit) => Jsx.element = "wrapper"

  external someElement: element => option<element> = "%identity"
}
