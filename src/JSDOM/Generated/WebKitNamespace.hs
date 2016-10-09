{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitNamespace
       (getMessageHandlers, getMessageHandlersUnchecked, WebKitNamespace,
        castToWebKitNamespace, gTypeWebKitNamespace)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlers ::
                   (MonadDOM m) =>
                     WebKitNamespace -> m (Maybe UserMessageHandlersNamespace)
getMessageHandlers self
  = liftDOM ((self ^. js "messageHandlers") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlersUnchecked ::
                            (MonadDOM m) => WebKitNamespace -> m UserMessageHandlersNamespace
getMessageHandlersUnchecked self
  = liftDOM ((self ^. js "messageHandlers") >>= fromJSValUnchecked)
