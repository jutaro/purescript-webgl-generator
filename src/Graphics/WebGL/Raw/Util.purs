module Graphics.WebGL.Raw.Util
( toMaybe
, nullAsEmpty
) where

import Data.Function (Fn3 (..), runFn3)
import Data.Maybe (Maybe (..))

foreign import toMaybeImpl :: forall a. Fn3 (Maybe a) (a -> Maybe a) a (Maybe a)

toMaybe :: forall a. a -> Maybe a
toMaybe x = runFn3 toMaybeImpl Nothing Just x

foreign import nullAsEmpty :: forall a. [a] -> [a]
