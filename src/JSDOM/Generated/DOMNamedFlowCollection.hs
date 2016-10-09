{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMNamedFlowCollection
       (item, item_, itemUnchecked, namedItem, namedItem_,
        namedItemUnchecked, getLength, DOMNamedFlowCollection,
        castToDOMNamedFlowCollection, gTypeDOMNamedFlowCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
item ::
     (MonadDOM m) =>
       DOMNamedFlowCollection -> Word -> m (Maybe WebKitNamedFlow)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
item_ :: (MonadDOM m) => DOMNamedFlowCollection -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
itemUnchecked ::
              (MonadDOM m) => DOMNamedFlowCollection -> Word -> m WebKitNamedFlow
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            DOMNamedFlowCollection -> name -> m (Maybe WebKitNamedFlow)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) =>
             DOMNamedFlowCollection -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     DOMNamedFlowCollection -> name -> m WebKitNamedFlow
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.length Mozilla WebKitNamedFlowCollection.length documentation> 
getLength :: (MonadDOM m) => DOMNamedFlowCollection -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
