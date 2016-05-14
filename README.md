# purebem-elm

> A BEM CSS methodology utility helper

A simple [Elm](http://elm-lang.org) utility for creating [BEM](http://getbem.com) standard CSS class names. This is a port of [purebem-js](https://github.com/mrydengren/purebem-js).

## Usage

```elm
import Purebem exposing (purebem)


blockOnly : String
  let
    block = purebem("my-block")
  in
    purebem "" []
    -- "my-block"


blockElement : String
  let
    block = purebem("my-block")
  in
    purebem "my-element" []
    -- "my-block__my-element"


blockElementModifiers : String
  let
    block = purebem("my-block")
  in
    purebem "my-element" [("my-modifier-1", True), ("my-modifier-2", False)]
    -- "my-block__my-element my-block__my-element--my-modifier-1"
```

## License

BSD3
