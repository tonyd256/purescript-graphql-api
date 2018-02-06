module API where

import Prelude
import Data.Foreign (Foreign)
import Data.Function.Uncurried (Fn2, mkFn2)

test :: Boolean
test = true

type Context = Foreign
type Resolver input a = Fn2 input Context a

echo :: Resolver { text :: String } String
echo = mkFn2 $ \input context -> input.text
