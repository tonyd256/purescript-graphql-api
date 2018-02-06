module API where

import Prelude
import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Data.Foreign (Foreign, renderForeignError, readString)
import Data.Foreign.Index ((!))
import Data.Function.Uncurried (Fn2, mkFn2)
import Data.List.NonEmpty (head)

test :: Boolean
test = true

type Input = Foreign
type Context = Foreign
type Resolver a = Fn2 Input Context a

echo :: Resolver String
echo = mkFn2 $ \input context ->
  case runExcept (readString =<< input ! "text") of
       Left errors -> renderForeignError $ head errors
       Right x -> x
