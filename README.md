# purescript-webgl-raw

This package consists of two pieces:

1. a Haskell generator, which parses the Khronos WebGL specification to create...
2. the PureScript wrapper of the WebGL methods

The files in `src` should only be edited by modifying the generator.

## Generator

To build the generator, ensure you have a recent version of Haskell and
`cabal-install` installed, and then:

```sh
> cabal sandbox init
> cabal install --only-dependencies
> cabal build
```

To run the generator on the included [Khronos IDL][1] and output the contents
into the PureScript module:

  [1]: https://www.khronos.org/registry/webgl/specs/1.0.3/

```sh
> dist/build/purescript-webgl-raw/purescript-webgl-raw \
> docs/WebGL-1.0.3.idl > src/Graphics/WebGL/Raw.purs
```

## Graphics.WebGL.Raw

The generated library is intended as the lowest-possible-level wrapping of
the WebGL API for PureScript. It is not intended for use outside of the
`purescript-webgl-unsafe` package, which provides a type-safe (but not
error-checked) wrapper around the raw methods.

To build `Graphics.WebGL.Raw`, ensure you have a recent version of Node
and `npm` installed, and then:

```sh
> npm install
> bower install
> grunt
```

## Credits

This package is built upon the amazing amounts of hard work done by [Jurgen
Nicklisch-Franken][2], from whom this package is forked.

  [2]: https://github.com/jutaro
