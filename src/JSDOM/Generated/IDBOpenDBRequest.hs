{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBOpenDBRequest
       (blocked, upgradeNeeded, IDBOpenDBRequest(..),
        gTypeIDBOpenDBRequest)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onblocked Mozilla IDBOpenDBRequest.onblocked documentation> 
blocked :: EventName IDBOpenDBRequest IDBVersionChangeEvent
blocked = unsafeEventName (toJSString "blocked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onupgradeneeded Mozilla IDBOpenDBRequest.onupgradeneeded documentation> 
upgradeNeeded :: EventName IDBOpenDBRequest IDBVersionChangeEvent
upgradeNeeded = unsafeEventName (toJSString "upgradeneeded")
