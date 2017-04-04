{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Element
       (getAttribute, getAttribute_, getAttributeUnsafe,
        getAttributeUnchecked, setAttribute, removeAttribute,
        getAttributeNode, getAttributeNode_, getAttributeNodeUnsafe,
        getAttributeNodeUnchecked, setAttributeNode, setAttributeNode_,
        setAttributeNodeUnsafe, setAttributeNodeUnchecked,
        removeAttributeNode, removeAttributeNode_, getElementsByTagName,
        getElementsByTagName_, hasAttributes, hasAttributes_,
        getAttributeNS, getAttributeNS_, getAttributeNSUnsafe,
        getAttributeNSUnchecked, setAttributeNS, removeAttributeNS,
        getElementsByTagNameNS, getElementsByTagNameNS_,
        getAttributeNodeNS, getAttributeNodeNS_, getAttributeNodeNSUnsafe,
        getAttributeNodeNSUnchecked, setAttributeNodeNS,
        setAttributeNodeNS_, setAttributeNodeNSUnsafe,
        setAttributeNodeNSUnchecked, hasAttribute, hasAttribute_,
        hasAttributeNS, hasAttributeNS_, scrollIntoView,
        scrollIntoViewIfNeeded, scrollOpt, scroll, scrollToOpt, scrollTo,
        scrollByOpt, scrollBy, scrollByLines, scrollByPages,
        getAttributeNames, getAttributeNames_, getElementsByClassName,
        getElementsByClassName_, matches, matches_, closest, closest_,
        closestUnsafe, closestUnchecked, webkitMatchesSelector,
        webkitMatchesSelector_, getClientRects, getClientRects_,
        getBoundingClientRect, getBoundingClientRect_,
        webkitRequestFullScreen, webkitRequestFullscreen,
        insertAdjacentElement, insertAdjacentElement_,
        insertAdjacentElementUnsafe, insertAdjacentElementUnchecked,
        insertAdjacentHTML, insertAdjacentText, requestPointerLock,
        webkitGetRegionFlowRanges, webkitGetRegionFlowRanges_,
        attachShadow, attachShadow_, getTagName, getTagNameUnsafe,
        getTagNameUnchecked, getAttributes, getStyle, setId, getId,
        getNamespaceURI, getNamespaceURIUnsafe, getNamespaceURIUnchecked,
        getPrefix, getPrefixUnsafe, getPrefixUnchecked, getLocalName,
        getOffsetLeft, getOffsetTop, getOffsetWidth, getOffsetHeight,
        getClientLeft, getClientTop, getClientWidth, getClientHeight,
        setScrollLeft, getScrollLeft, setScrollTop, getScrollTop,
        getScrollWidth, getScrollHeight, getOffsetParent, setInnerHTML,
        getInnerHTML, getInnerHTMLUnsafe, getInnerHTMLUnchecked,
        setOuterHTML, getOuterHTML, getOuterHTMLUnsafe,
        getOuterHTMLUnchecked, setClassName, getClassName, getClassList,
        getWebkitRegionOverset, getShadowRoot, setSlot, getSlot,
        beforeCopy, beforeCut, beforeinput, beforePaste, copy, cut, paste,
        selectStart, webKitFullscreenChange, webKitFullscreenError,
        animationEnd, animationIteration, animationStart, transitionEnd,
        webKitAnimationEnd, webKitAnimationIteration, webKitAnimationStart,
        webKitTransitionEnd, gestureChange, gestureEnd, gestureStart,
        focusin, focusout, beforeload, webKitNeedKey,
        webKitPresentationModeChanged,
        webKitCurrentPlaybackTargetIsWirelessChanged,
        webKitPlaybackTargetAvailabilityChanged, Element(..), gTypeElement,
        IsElement, toElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute ::
             (MonadDOM m, IsElement self, ToJSString name,
              FromJSString result) =>
               self -> name -> m (Maybe result)
getAttribute self name
  = liftDOM
      (((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttribute_ ::
              (MonadDOM m, IsElement self, ToJSString name) =>
                self -> name -> m ()
getAttribute_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "getAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnsafe ::
                   (MonadDOM m, IsElement self, ToJSString name, HasCallStack,
                    FromJSString result) =>
                     self -> name -> m result
getAttributeUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttribute Mozilla Element.getAttribute documentation> 
getAttributeUnchecked ::
                      (MonadDOM m, IsElement self, ToJSString name,
                       FromJSString result) =>
                        self -> name -> m result
getAttributeUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getAttribute" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttribute Mozilla Element.setAttribute documentation> 
setAttribute ::
             (MonadDOM m, IsElement self, ToJSString name, ToJSString value) =>
               self -> name -> value -> m ()
setAttribute self name value
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttribute"
            [toJSVal name, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
removeAttribute ::
                (MonadDOM m, IsElement self, ToJSString name) =>
                  self -> name -> m ()
removeAttribute self name
  = liftDOM
      (void ((toElement self) ^. jsf "removeAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode ::
                 (MonadDOM m, IsElement self, ToJSString name) =>
                   self -> name -> m (Maybe Attr)
getAttributeNode self name
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNode_ ::
                  (MonadDOM m, IsElement self, ToJSString name) =>
                    self -> name -> m ()
getAttributeNode_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "getAttributeNode" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnsafe ::
                       (MonadDOM m, IsElement self, ToJSString name, HasCallStack) =>
                         self -> name -> m Attr
getAttributeNodeUnsafe self name
  = liftDOM
      ((((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNode Mozilla Element.getAttributeNode documentation> 
getAttributeNodeUnchecked ::
                          (MonadDOM m, IsElement self, ToJSString name) =>
                            self -> name -> m Attr
getAttributeNodeUnchecked self name
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNode" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode ::
                 (MonadDOM m, IsElement self) => self -> Attr -> m (Maybe Attr)
setAttributeNode self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNode_ ::
                  (MonadDOM m, IsElement self) => self -> Attr -> m ()
setAttributeNode_ self newAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnsafe ::
                       (MonadDOM m, IsElement self, HasCallStack) =>
                         self -> Attr -> m Attr
setAttributeNodeUnsafe self newAttr
  = liftDOM
      ((((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNode Mozilla Element.setAttributeNode documentation> 
setAttributeNodeUnchecked ::
                          (MonadDOM m, IsElement self) => self -> Attr -> m Attr
setAttributeNodeUnchecked self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNode" [toJSVal newAttr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode ::
                    (MonadDOM m, IsElement self) => self -> Attr -> m Attr
removeAttributeNode self oldAttr
  = liftDOM
      (((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
removeAttributeNode_ ::
                     (MonadDOM m, IsElement self) => self -> Attr -> m ()
removeAttributeNode_ self oldAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "removeAttributeNode" [toJSVal oldAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadDOM m, IsElement self, ToJSString name) =>
                       self -> name -> m HTMLCollection
getElementsByTagName self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagName" [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagName Mozilla Element.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadDOM m, IsElement self, ToJSString name) =>
                        self -> name -> m ()
getElementsByTagName_ self name
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByTagName" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes :: (MonadDOM m, IsElement self) => self -> m Bool
hasAttributes self
  = liftDOM
      (((toElement self) ^. jsf "hasAttributes" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
hasAttributes_ :: (MonadDOM m, IsElement self) => self -> m ()
hasAttributes_ self
  = liftDOM (void ((toElement self) ^. jsf "hasAttributes" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString localName, FromJSString result) =>
                 self -> Maybe namespaceURI -> localName -> m (Maybe result)
getAttributeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNS_ ::
                (MonadDOM m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
getAttributeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNSUnsafe ::
                     (MonadDOM m, IsElement self, ToJSString namespaceURI,
                      ToJSString localName, HasCallStack, FromJSString result) =>
                       self -> Maybe namespaceURI -> localName -> m result
getAttributeNSUnsafe self namespaceURI localName
  = liftDOM
      ((((toElement self) ^. jsf "getAttributeNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNS Mozilla Element.getAttributeNS documentation> 
getAttributeNSUnchecked ::
                        (MonadDOM m, IsElement self, ToJSString namespaceURI,
                         ToJSString localName, FromJSString result) =>
                          self -> Maybe namespaceURI -> localName -> m result
getAttributeNSUnchecked self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNS Mozilla Element.setAttributeNS documentation> 
setAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString qualifiedName, ToJSString value) =>
                 self -> Maybe namespaceURI -> qualifiedName -> value -> m ()
setAttributeNS self namespaceURI qualifiedName value
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNS"
            [toJSVal namespaceURI, toJSVal qualifiedName, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
removeAttributeNS ::
                  (MonadDOM m, IsElement self, ToJSString namespaceURI,
                   ToJSString localName) =>
                    self -> Maybe namespaceURI -> localName -> m ()
removeAttributeNS self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "removeAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadDOM m, IsElement self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m HTMLCollection
getElementsByTagNameNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getElementsByTagNameNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByTagNameNS Mozilla Element.getElementsByTagNameNS documentation> 
getElementsByTagNameNS_ ::
                        (MonadDOM m, IsElement self, ToJSString namespaceURI,
                         ToJSString localName) =>
                          self -> Maybe namespaceURI -> localName -> m ()
getElementsByTagNameNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByTagNameNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS ::
                   (MonadDOM m, IsElement self, ToJSString namespaceURI,
                    ToJSString localName) =>
                     self -> Maybe namespaceURI -> localName -> m (Maybe Attr)
getAttributeNodeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNodeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNS_ ::
                    (MonadDOM m, IsElement self, ToJSString namespaceURI,
                     ToJSString localName) =>
                      self -> Maybe namespaceURI -> localName -> m ()
getAttributeNodeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "getAttributeNodeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnsafe ::
                         (MonadDOM m, IsElement self, ToJSString namespaceURI,
                          ToJSString localName, HasCallStack) =>
                           self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnsafe self namespaceURI localName
  = liftDOM
      ((((toElement self) ^. jsf "getAttributeNodeNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNodeNS Mozilla Element.getAttributeNodeNS documentation> 
getAttributeNodeNSUnchecked ::
                            (MonadDOM m, IsElement self, ToJSString namespaceURI,
                             ToJSString localName) =>
                              self -> Maybe namespaceURI -> localName -> m Attr
getAttributeNodeNSUnchecked self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNodeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS ::
                   (MonadDOM m, IsElement self) => self -> Attr -> m (Maybe Attr)
setAttributeNodeNS self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNS_ ::
                    (MonadDOM m, IsElement self) => self -> Attr -> m ()
setAttributeNodeNS_ self newAttr
  = liftDOM
      (void
         ((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnsafe ::
                         (MonadDOM m, IsElement self, HasCallStack) =>
                           self -> Attr -> m Attr
setAttributeNodeNSUnsafe self newAttr
  = liftDOM
      ((((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.setAttributeNodeNS Mozilla Element.setAttributeNodeNS documentation> 
setAttributeNodeNSUnchecked ::
                            (MonadDOM m, IsElement self) => self -> Attr -> m Attr
setAttributeNodeNSUnchecked self newAttr
  = liftDOM
      (((toElement self) ^. jsf "setAttributeNodeNS" [toJSVal newAttr])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute ::
             (MonadDOM m, IsElement self, ToJSString name) =>
               self -> name -> m Bool
hasAttribute self name
  = liftDOM
      (((toElement self) ^. jsf "hasAttribute" [toJSVal name]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
hasAttribute_ ::
              (MonadDOM m, IsElement self, ToJSString name) =>
                self -> name -> m ()
hasAttribute_ self name
  = liftDOM
      (void ((toElement self) ^. jsf "hasAttribute" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS ::
               (MonadDOM m, IsElement self, ToJSString namespaceURI,
                ToJSString localName) =>
                 self -> Maybe namespaceURI -> localName -> m Bool
hasAttributeNS self namespaceURI localName
  = liftDOM
      (((toElement self) ^. jsf "hasAttributeNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
hasAttributeNS_ ::
                (MonadDOM m, IsElement self, ToJSString namespaceURI,
                 ToJSString localName) =>
                  self -> Maybe namespaceURI -> localName -> m ()
hasAttributeNS_ self namespaceURI localName
  = liftDOM
      (void
         ((toElement self) ^. jsf "hasAttributeNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
scrollIntoView ::
               (MonadDOM m, IsElement self) => self -> Bool -> m ()
scrollIntoView self alignWithTop
  = liftDOM
      (void
         ((toElement self) ^. jsf "scrollIntoView" [toJSVal alignWithTop]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
scrollIntoViewIfNeeded ::
                       (MonadDOM m, IsElement self) => self -> Bool -> m ()
scrollIntoViewIfNeeded self centerIfNeeded
  = liftDOM
      (void
         ((toElement self) ^. jsf "scrollIntoViewIfNeeded"
            [toJSVal centerIfNeeded]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scroll Mozilla Element.scroll documentation> 
scrollOpt ::
          (MonadDOM m, IsElement self) =>
            self -> Maybe ScrollToOptions -> m ()
scrollOpt self options
  = liftDOM
      (void ((toElement self) ^. jsf "scroll" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scroll Mozilla Element.scroll documentation> 
scroll ::
       (MonadDOM m, IsElement self) => self -> Double -> Double -> m ()
scroll self x y
  = liftDOM
      (void ((toElement self) ^. jsf "scroll" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTo Mozilla Element.scrollTo documentation> 
scrollToOpt ::
            (MonadDOM m, IsElement self) =>
              self -> Maybe ScrollToOptions -> m ()
scrollToOpt self options
  = liftDOM
      (void ((toElement self) ^. jsf "scrollTo" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTo Mozilla Element.scrollTo documentation> 
scrollTo ::
         (MonadDOM m, IsElement self) => self -> Double -> Double -> m ()
scrollTo self x y
  = liftDOM
      (void ((toElement self) ^. jsf "scrollTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollBy Mozilla Element.scrollBy documentation> 
scrollByOpt ::
            (MonadDOM m, IsElement self) =>
              self -> Maybe ScrollToOptions -> m ()
scrollByOpt self option
  = liftDOM
      (void ((toElement self) ^. jsf "scrollBy" [toJSVal option]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollBy Mozilla Element.scrollBy documentation> 
scrollBy ::
         (MonadDOM m, IsElement self) => self -> Double -> Double -> m ()
scrollBy self x y
  = liftDOM
      (void ((toElement self) ^. jsf "scrollBy" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByLines Mozilla Element.scrollByLines documentation> 
scrollByLines ::
              (MonadDOM m, IsElement self) => self -> Maybe Int -> m ()
scrollByLines self lines
  = liftDOM
      (void ((toElement self) ^. jsf "scrollByLines" [toJSVal lines]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByPages Mozilla Element.scrollByPages documentation> 
scrollByPages ::
              (MonadDOM m, IsElement self) => self -> Maybe Int -> m ()
scrollByPages self pages
  = liftDOM
      (void ((toElement self) ^. jsf "scrollByPages" [toJSVal pages]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNames Mozilla Element.getAttributeNames documentation> 
getAttributeNames ::
                  (MonadDOM m, IsElement self, FromJSString result) =>
                    self -> m [result]
getAttributeNames self
  = liftDOM
      (((toElement self) ^. jsf "getAttributeNames" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getAttributeNames Mozilla Element.getAttributeNames documentation> 
getAttributeNames_ :: (MonadDOM m, IsElement self) => self -> m ()
getAttributeNames_ self
  = liftDOM (void ((toElement self) ^. jsf "getAttributeNames" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadDOM m, IsElement self, ToJSString name) =>
                         self -> name -> m HTMLCollection
getElementsByClassName self name
  = liftDOM
      (((toElement self) ^. jsf "getElementsByClassName" [toJSVal name])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getElementsByClassName Mozilla Element.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadDOM m, IsElement self, ToJSString name) =>
                          self -> name -> m ()
getElementsByClassName_ self name
  = liftDOM
      (void
         ((toElement self) ^. jsf "getElementsByClassName" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches ::
        (MonadDOM m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m Bool
matches self selectors
  = liftDOM
      (((toElement self) ^. jsf "matches" [toJSVal selectors]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
matches_ ::
         (MonadDOM m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
matches_ self selectors
  = liftDOM
      (void ((toElement self) ^. jsf "matches" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest ::
        (MonadDOM m, IsElement self, ToJSString selectors) =>
          self -> selectors -> m (Maybe Element)
closest self selectors
  = liftDOM
      (((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closest_ ::
         (MonadDOM m, IsElement self, ToJSString selectors) =>
           self -> selectors -> m ()
closest_ self selectors
  = liftDOM
      (void ((toElement self) ^. jsf "closest" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnsafe ::
              (MonadDOM m, IsElement self, ToJSString selectors, HasCallStack) =>
                self -> selectors -> m Element
closestUnsafe self selectors
  = liftDOM
      ((((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
closestUnchecked ::
                 (MonadDOM m, IsElement self, ToJSString selectors) =>
                   self -> selectors -> m Element
closestUnchecked self selectors
  = liftDOM
      (((toElement self) ^. jsf "closest" [toJSVal selectors]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector ::
                      (MonadDOM m, IsElement self, ToJSString selectors) =>
                        self -> selectors -> m Bool
webkitMatchesSelector self selectors
  = liftDOM
      (((toElement self) ^. jsf "webkitMatchesSelector"
          [toJSVal selectors])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
webkitMatchesSelector_ ::
                       (MonadDOM m, IsElement self, ToJSString selectors) =>
                         self -> selectors -> m ()
webkitMatchesSelector_ self selectors
  = liftDOM
      (void
         ((toElement self) ^. jsf "webkitMatchesSelector"
            [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects ::
               (MonadDOM m, IsElement self) => self -> m ClientRectList
getClientRects self
  = liftDOM
      (((toElement self) ^. jsf "getClientRects" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getClientRects Mozilla Element.getClientRects documentation> 
getClientRects_ :: (MonadDOM m, IsElement self) => self -> m ()
getClientRects_ self
  = liftDOM (void ((toElement self) ^. jsf "getClientRects" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadDOM m, IsElement self) => self -> m ClientRect
getBoundingClientRect self
  = liftDOM
      (((toElement self) ^. jsf "getBoundingClientRect" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.getBoundingClientRect Mozilla Element.getBoundingClientRect documentation> 
getBoundingClientRect_ ::
                       (MonadDOM m, IsElement self) => self -> m ()
getBoundingClientRect_ self
  = liftDOM
      (void ((toElement self) ^. jsf "getBoundingClientRect" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
webkitRequestFullScreen ::
                        (MonadDOM m, IsElement self) => self -> m ()
webkitRequestFullScreen self
  = liftDOM
      (void ((toElement self) ^. jsf "webkitRequestFullScreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
webkitRequestFullscreen ::
                        (MonadDOM m, IsElement self) => self -> m ()
webkitRequestFullscreen self
  = liftDOM
      (void ((toElement self) ^. jsf "webkitRequestFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElement ::
                      (MonadDOM m, IsElement self, ToJSString where',
                       IsElement element) =>
                        self -> where' -> element -> m (Maybe Element)
insertAdjacentElement self where' element
  = liftDOM
      (((toElement self) ^. jsf "insertAdjacentElement"
          [toJSVal where', toJSVal element])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElement_ ::
                       (MonadDOM m, IsElement self, ToJSString where',
                        IsElement element) =>
                         self -> where' -> element -> m ()
insertAdjacentElement_ self where' element
  = liftDOM
      (void
         ((toElement self) ^. jsf "insertAdjacentElement"
            [toJSVal where', toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElementUnsafe ::
                            (MonadDOM m, IsElement self, ToJSString where', IsElement element,
                             HasCallStack) =>
                              self -> where' -> element -> m Element
insertAdjacentElementUnsafe self where' element
  = liftDOM
      ((((toElement self) ^. jsf "insertAdjacentElement"
           [toJSVal where', toJSVal element])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentElement Mozilla Element.insertAdjacentElement documentation> 
insertAdjacentElementUnchecked ::
                               (MonadDOM m, IsElement self, ToJSString where',
                                IsElement element) =>
                                 self -> where' -> element -> m Element
insertAdjacentElementUnchecked self where' element
  = liftDOM
      (((toElement self) ^. jsf "insertAdjacentElement"
          [toJSVal where', toJSVal element])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentHTML Mozilla Element.insertAdjacentHTML documentation> 
insertAdjacentHTML ::
                   (MonadDOM m, IsElement self, ToJSString where', ToJSString html) =>
                     self -> where' -> html -> m ()
insertAdjacentHTML self where' html
  = liftDOM
      (void
         ((toElement self) ^. jsf "insertAdjacentHTML"
            [toJSVal where', toJSVal html]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.insertAdjacentText Mozilla Element.insertAdjacentText documentation> 
insertAdjacentText ::
                   (MonadDOM m, IsElement self, ToJSString where', ToJSString text) =>
                     self -> where' -> text -> m ()
insertAdjacentText self where' text
  = liftDOM
      (void
         ((toElement self) ^. jsf "insertAdjacentText"
            [toJSVal where', toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
requestPointerLock :: (MonadDOM m, IsElement self) => self -> m ()
requestPointerLock self
  = liftDOM (void ((toElement self) ^. jsf "requestPointerLock" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges ::
                          (MonadDOM m, IsElement self) => self -> m [Range]
webkitGetRegionFlowRanges self
  = liftDOM
      (((toElement self) ^. jsf "webkitGetRegionFlowRanges" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitGetRegionFlowRanges Mozilla Element.webkitGetRegionFlowRanges documentation> 
webkitGetRegionFlowRanges_ ::
                           (MonadDOM m, IsElement self) => self -> m ()
webkitGetRegionFlowRanges_ self
  = liftDOM
      (void ((toElement self) ^. jsf "webkitGetRegionFlowRanges" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attachShadow Mozilla Element.attachShadow documentation> 
attachShadow ::
             (MonadDOM m, IsElement self) =>
               self -> ShadowRootInit -> m ShadowRoot
attachShadow self init
  = liftDOM
      (((toElement self) ^. jsf "attachShadow" [toJSVal init]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attachShadow Mozilla Element.attachShadow documentation> 
attachShadow_ ::
              (MonadDOM m, IsElement self) => self -> ShadowRootInit -> m ()
attachShadow_ self init
  = liftDOM
      (void ((toElement self) ^. jsf "attachShadow" [toJSVal init]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagName ::
           (MonadDOM m, IsElement self, FromJSString result) =>
             self -> m (Maybe result)
getTagName self
  = liftDOM (((toElement self) ^. js "tagName") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagNameUnsafe ::
                 (MonadDOM m, IsElement self, HasCallStack, FromJSString result) =>
                   self -> m result
getTagNameUnsafe self
  = liftDOM
      ((((toElement self) ^. js "tagName") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
getTagNameUnchecked ::
                    (MonadDOM m, IsElement self, FromJSString result) =>
                      self -> m result
getTagNameUnchecked self
  = liftDOM
      (((toElement self) ^. js "tagName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
getAttributes ::
              (MonadDOM m, IsElement self) => self -> m NamedNodeMap
getAttributes self
  = liftDOM
      (((toElement self) ^. js "attributes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
getStyle ::
         (MonadDOM m, IsElement self) => self -> m CSSStyleDeclaration
getStyle self
  = liftDOM (((toElement self) ^. js "style") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
setId ::
      (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setId self val
  = liftDOM ((toElement self) ^. jss "id" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
getId ::
      (MonadDOM m, IsElement self, FromJSString result) =>
        self -> m result
getId self
  = liftDOM (((toElement self) ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURI ::
                (MonadDOM m, IsElement self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftDOM (((toElement self) ^. js "namespaceURI") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURIUnsafe ::
                      (MonadDOM m, IsElement self, HasCallStack, FromJSString result) =>
                        self -> m result
getNamespaceURIUnsafe self
  = liftDOM
      ((((toElement self) ^. js "namespaceURI") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.namespaceURI Mozilla Element.namespaceURI documentation> 
getNamespaceURIUnchecked ::
                         (MonadDOM m, IsElement self, FromJSString result) =>
                           self -> m result
getNamespaceURIUnchecked self
  = liftDOM
      (((toElement self) ^. js "namespaceURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefix ::
          (MonadDOM m, IsElement self, FromJSString result) =>
            self -> m (Maybe result)
getPrefix self
  = liftDOM (((toElement self) ^. js "prefix") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefixUnsafe ::
                (MonadDOM m, IsElement self, HasCallStack, FromJSString result) =>
                  self -> m result
getPrefixUnsafe self
  = liftDOM
      ((((toElement self) ^. js "prefix") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.prefix Mozilla Element.prefix documentation> 
getPrefixUnchecked ::
                   (MonadDOM m, IsElement self, FromJSString result) =>
                     self -> m result
getPrefixUnchecked self
  = liftDOM
      (((toElement self) ^. js "prefix") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.localName Mozilla Element.localName documentation> 
getLocalName ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m result
getLocalName self
  = liftDOM
      (((toElement self) ^. js "localName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetLeft Mozilla Element.offsetLeft documentation> 
getOffsetLeft :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetLeft self
  = liftDOM (((toElement self) ^. js "offsetLeft") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetTop Mozilla Element.offsetTop documentation> 
getOffsetTop :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetTop self
  = liftDOM (((toElement self) ^. js "offsetTop") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetWidth Mozilla Element.offsetWidth documentation> 
getOffsetWidth :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetWidth self
  = liftDOM (((toElement self) ^. js "offsetWidth") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetHeight Mozilla Element.offsetHeight documentation> 
getOffsetHeight :: (MonadDOM m, IsElement self) => self -> m Double
getOffsetHeight self
  = liftDOM (((toElement self) ^. js "offsetHeight") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
getClientLeft :: (MonadDOM m, IsElement self) => self -> m Double
getClientLeft self
  = liftDOM (((toElement self) ^. js "clientLeft") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
getClientTop :: (MonadDOM m, IsElement self) => self -> m Double
getClientTop self
  = liftDOM (((toElement self) ^. js "clientTop") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
getClientWidth :: (MonadDOM m, IsElement self) => self -> m Double
getClientWidth self
  = liftDOM (((toElement self) ^. js "clientWidth") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
getClientHeight :: (MonadDOM m, IsElement self) => self -> m Double
getClientHeight self
  = liftDOM (((toElement self) ^. js "clientHeight") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
setScrollLeft ::
              (MonadDOM m, IsElement self) => self -> Int -> m ()
setScrollLeft self val
  = liftDOM ((toElement self) ^. jss "scrollLeft" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
getScrollLeft :: (MonadDOM m, IsElement self) => self -> m Int
getScrollLeft self
  = liftDOM
      (round <$> (((toElement self) ^. js "scrollLeft") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
setScrollTop :: (MonadDOM m, IsElement self) => self -> Int -> m ()
setScrollTop self val
  = liftDOM ((toElement self) ^. jss "scrollTop" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
getScrollTop :: (MonadDOM m, IsElement self) => self -> m Int
getScrollTop self
  = liftDOM
      (round <$> (((toElement self) ^. js "scrollTop") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
getScrollWidth :: (MonadDOM m, IsElement self) => self -> m Int
getScrollWidth self
  = liftDOM
      (round <$>
         (((toElement self) ^. js "scrollWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
getScrollHeight :: (MonadDOM m, IsElement self) => self -> m Int
getScrollHeight self
  = liftDOM
      (round <$>
         (((toElement self) ^. js "scrollHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
getOffsetParent ::
                (MonadDOM m, IsElement self) => self -> m Element
getOffsetParent self
  = liftDOM
      (((toElement self) ^. js "offsetParent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
setInnerHTML ::
             (MonadDOM m, IsElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setInnerHTML self val
  = liftDOM ((toElement self) ^. jss "innerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTML ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m (Maybe result)
getInnerHTML self
  = liftDOM
      (((toElement self) ^. js "innerHTML") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTMLUnsafe ::
                   (MonadDOM m, IsElement self, HasCallStack, FromJSString result) =>
                     self -> m result
getInnerHTMLUnsafe self
  = liftDOM
      ((((toElement self) ^. js "innerHTML") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.innerHTML Mozilla Element.innerHTML documentation> 
getInnerHTMLUnchecked ::
                      (MonadDOM m, IsElement self, FromJSString result) =>
                        self -> m result
getInnerHTMLUnchecked self
  = liftDOM
      (((toElement self) ^. js "innerHTML") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
setOuterHTML ::
             (MonadDOM m, IsElement self, ToJSString val) =>
               self -> Maybe val -> m ()
setOuterHTML self val
  = liftDOM ((toElement self) ^. jss "outerHTML" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTML ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m (Maybe result)
getOuterHTML self
  = liftDOM
      (((toElement self) ^. js "outerHTML") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTMLUnsafe ::
                   (MonadDOM m, IsElement self, HasCallStack, FromJSString result) =>
                     self -> m result
getOuterHTMLUnsafe self
  = liftDOM
      ((((toElement self) ^. js "outerHTML") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.outerHTML Mozilla Element.outerHTML documentation> 
getOuterHTMLUnchecked ::
                      (MonadDOM m, IsElement self, FromJSString result) =>
                        self -> m result
getOuterHTMLUnchecked self
  = liftDOM
      (((toElement self) ^. js "outerHTML") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
setClassName ::
             (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setClassName self val
  = liftDOM ((toElement self) ^. jss "className" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
getClassName ::
             (MonadDOM m, IsElement self, FromJSString result) =>
               self -> m result
getClassName self
  = liftDOM
      (((toElement self) ^. js "className") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
getClassList ::
             (MonadDOM m, IsElement self) => self -> m DOMTokenList
getClassList self
  = liftDOM
      (((toElement self) ^. js "classList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
getWebkitRegionOverset ::
                       (MonadDOM m, IsElement self, FromJSString result) =>
                         self -> m result
getWebkitRegionOverset self
  = liftDOM
      (((toElement self) ^. js "webkitRegionOverset") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.shadowRoot Mozilla Element.shadowRoot documentation> 
getShadowRoot ::
              (MonadDOM m, IsElement self) => self -> m ShadowRoot
getShadowRoot self
  = liftDOM
      (((toElement self) ^. js "shadowRoot") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.slot Mozilla Element.slot documentation> 
setSlot ::
        (MonadDOM m, IsElement self, ToJSString val) => self -> val -> m ()
setSlot self val
  = liftDOM ((toElement self) ^. jss "slot" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.slot Mozilla Element.slot documentation> 
getSlot ::
        (MonadDOM m, IsElement self, FromJSString result) =>
          self -> m result
getSlot self
  = liftDOM (((toElement self) ^. js "slot") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecopy Mozilla Element.onbeforecopy documentation> 
beforeCopy ::
           (IsElement self, IsEventTarget self) =>
             EventName self ClipboardEvent
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecut Mozilla Element.onbeforecut documentation> 
beforeCut ::
          (IsElement self, IsEventTarget self) =>
            EventName self ClipboardEvent
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforeinput Mozilla Element.onbeforeinput documentation> 
beforeinput ::
            (IsElement self, IsEventTarget self) =>
              EventName self onbeforeinput
beforeinput = unsafeEventName (toJSString "beforeinput")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforepaste Mozilla Element.onbeforepaste documentation> 
beforePaste ::
            (IsElement self, IsEventTarget self) =>
              EventName self ClipboardEvent
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncopy Mozilla Element.oncopy documentation> 
copy ::
     (IsElement self, IsEventTarget self) =>
       EventName self ClipboardEvent
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncut Mozilla Element.oncut documentation> 
cut ::
    (IsElement self, IsEventTarget self) =>
      EventName self ClipboardEvent
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onpaste Mozilla Element.onpaste documentation> 
paste ::
      (IsElement self, IsEventTarget self) =>
        EventName self ClipboardEvent
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselectstart Mozilla Element.onselectstart documentation> 
selectStart ::
            (IsElement self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenchange Mozilla Element.onwebkitfullscreenchange documentation> 
webKitFullscreenChange ::
                       (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenerror Mozilla Element.onwebkitfullscreenerror documentation> 
webKitFullscreenError ::
                      (IsElement self, IsEventTarget self) => EventName self Event
webKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onanimationend Mozilla Element.onanimationend documentation> 
animationEnd ::
             (IsElement self, IsEventTarget self) =>
               EventName self AnimationEvent
animationEnd = unsafeEventName (toJSString "animationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onanimationiteration Mozilla Element.onanimationiteration documentation> 
animationIteration ::
                   (IsElement self, IsEventTarget self) =>
                     EventName self AnimationEvent
animationIteration
  = unsafeEventName (toJSString "animationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onanimationstart Mozilla Element.onanimationstart documentation> 
animationStart ::
               (IsElement self, IsEventTarget self) =>
                 EventName self AnimationEvent
animationStart = unsafeEventName (toJSString "animationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontransitionend Mozilla Element.ontransitionend documentation> 
transitionEnd ::
              (IsElement self, IsEventTarget self) =>
                EventName self TransitionEvent
transitionEnd = unsafeEventName (toJSString "transitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationend Mozilla Element.onwebkitanimationend documentation> 
webKitAnimationEnd ::
                   (IsElement self, IsEventTarget self) =>
                     EventName self AnimationEvent
webKitAnimationEnd
  = unsafeEventName (toJSString "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationiteration Mozilla Element.onwebkitanimationiteration documentation> 
webKitAnimationIteration ::
                         (IsElement self, IsEventTarget self) =>
                           EventName self AnimationEvent
webKitAnimationIteration
  = unsafeEventName (toJSString "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitanimationstart Mozilla Element.onwebkitanimationstart documentation> 
webKitAnimationStart ::
                     (IsElement self, IsEventTarget self) =>
                       EventName self AnimationEvent
webKitAnimationStart
  = unsafeEventName (toJSString "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkittransitionend Mozilla Element.onwebkittransitionend documentation> 
webKitTransitionEnd ::
                    (IsElement self, IsEventTarget self) =>
                      EventName self TransitionEvent
webKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongesturechange Mozilla Element.ongesturechange documentation> 
gestureChange ::
              (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureChange = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongestureend Mozilla Element.ongestureend documentation> 
gestureEnd ::
           (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ongesturestart Mozilla Element.ongesturestart documentation> 
gestureStart ::
             (IsElement self, IsEventTarget self) => EventName self UIEvent
gestureStart = unsafeEventName (toJSString "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocusin Mozilla Element.onfocusin documentation> 
focusin ::
        (IsElement self, IsEventTarget self) => EventName self onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocusout Mozilla Element.onfocusout documentation> 
focusout ::
         (IsElement self, IsEventTarget self) => EventName self onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforeload Mozilla Element.onbeforeload documentation> 
beforeload ::
           (IsElement self, IsEventTarget self) => EventName self onbeforeload
beforeload = unsafeEventName (toJSString "beforeload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitneedkey Mozilla Element.onwebkitneedkey documentation> 
webKitNeedKey ::
              (IsElement self, IsEventTarget self) => EventName self Event
webKitNeedKey = unsafeEventName (toJSString "webkitneedkey")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitpresentationmodechanged Mozilla Element.onwebkitpresentationmodechanged documentation> 
webKitPresentationModeChanged ::
                              (IsElement self, IsEventTarget self) => EventName self Event
webKitPresentationModeChanged
  = unsafeEventName (toJSString "webkitpresentationmodechanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitcurrentplaybacktargetiswirelesschanged Mozilla Element.onwebkitcurrentplaybacktargetiswirelesschanged documentation> 
webKitCurrentPlaybackTargetIsWirelessChanged ::
                                             (IsElement self, IsEventTarget self) =>
                                               EventName self Event
webKitCurrentPlaybackTargetIsWirelessChanged
  = unsafeEventName
      (toJSString "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitplaybacktargetavailabilitychanged Mozilla Element.onwebkitplaybacktargetavailabilitychanged documentation> 
webKitPlaybackTargetAvailabilityChanged ::
                                        (IsElement self, IsEventTarget self) => EventName self Event
webKitPlaybackTargetAvailabilityChanged
  = unsafeEventName
      (toJSString "webkitplaybacktargetavailabilitychanged")
