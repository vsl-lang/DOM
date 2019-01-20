# DOM
VSL raw DOM bindings communicating using WASM/IDL interface

This library allows you to communicate with all and every JS API _however_ it is
recommended to use the `Web` library which offers high-level bindings and is a
lot more user-friendly.

The `DOM` library is, for default installations, in the VSL prefix so you do not
need to install it, just import it using `import DOM`.

## WebIDL
VSL aims to provide an interface to the [WHATWG](https://spec.whatwg.org) or [W3C](https://www.w3.org/TR/)
standards. VSL's DOM library current integrates with the following specifications:

 - (full) [DOM](https://dom.spec.whatwg.org/)
 - (full) [Console](https://console.spec.whatwg.org/): prefer VSL stdio
 - (in progress) [CSSOM](https://drafts.csswg.org/cssom/)
 - (in progress) [HTML 5.3](https://www.w3.org/TR/html53/)
 - (none) XMLHttpRequest: prefer VSL's `HTTP` library which has WASM support.

## Additional notes
This exports DOM primitives but the VSL STL's WASM standard dispatch API offers
hooks and connectivity to JS. That exports a `JSValue` which is the root class
for all JS items. Additionally important globals that are exported are
`JS_GLOBAL`, `JS_UNDEFINED`, and `JS_NULL`.

Given the export of JSValue, you can use `.dispatchAccess("property")` and
`.dispatchAnon("method")` however if you wish to call a method with parameters,
this requires creating a stack frame which is a bit complex which is why it is
recommended to create a WebIDL or TypeScript decl for any additional properties
which you wish to access.

The dispatch API automatically performs bridging between VSL and JS types for
functions from the bindgen but given that certain types such as ints, strings,
and arrays can't be directly cast to `JSValue`. You may use the `JSValue.from`
functions to perform these transforms.

Additionally to get the metaclass. For example the `Element` metaclass, you can
use `Element.toJSValue()`.

## Examples

```swift
import DOM
console.log(JSValue.from("Hello from VSL!"))
```

```swift
import DOM
document.getElementById("root").setAttribute("style", "background-color: red;")
```
