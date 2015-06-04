module Graphics.WebGL.Raw.Util
( toMaybe
) where

import Data.Maybe (Maybe (..))

foreign import toMaybe3 """
  function ensure3(Nothing) {
    return function(Just) {
      return function(v) {
        if (v === undefined || v === null) {
          return Nothing;
        } else {
          return Just(v);
        }
      };
    };
  }
""" :: forall a. Maybe a -> (a -> Maybe a) -> a -> Maybe a

toMaybe :: forall a. a -> Maybe a
toMaybe = toMaybe3 Nothing Just
