module API where

import Prelude
import Control.Monad.Eff.Console (CONSOLE, log)
import Control.Monad.Eff.Uncurried (EffFn2, mkEffFn2)

test :: Boolean
test = true

type Context = { modifier :: String }
type Effects = ( console :: CONSOLE )
type Resolver input a = EffFn2 Effects input Context a

echo :: Resolver { text :: String } String
echo = mkEffFn2 $ \input context -> do
  log input.text
  pure $ context.modifier <> " " <> input.text
