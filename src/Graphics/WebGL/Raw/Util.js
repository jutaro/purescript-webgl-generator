"use strict";

// module Graphics.WebGL.Raw.Util

exports.toMaybeImpl = function (Nothing, Just, x) {
  if (x === undefined || x === null) {
    return Nothing;
  } else {
    return Just(x);
  }
}

exports.nullAsEmpty = function (x) {
  if (x === undefined || x === null) {
    return [];
  } else {
    return x;
  }
}
