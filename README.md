# DOM
VSL raw DOM bindings communicating using WASM/IDL interface

## WebIDL
VSL aims to provide an interface to the [WHATWG](https://spec.whatwg.org)
standards. VSL's DOM library current integrates with the following specifications:

 - (full) [DOM](https://dom.spec.whatwg.org/)
 - (full) [Console](https://console.spec.whatwg.org/): prefer VSL stdio
 - (in progress) HTML
 - (none) XMLHttpRequest: prefer VSL's `HTTP` library which has WASM support.
