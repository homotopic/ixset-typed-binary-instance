{- |
   Module     : Data.IxSet.Typed.Binary
   License    : MIT
   Stability  : experimental

Binary instance for ixset-typed.
-}

module Data.IxSet.Typed.Binary where

import Data.Binary
import Data.IxSet.Typed

instance (Indexable ixs x, Binary x) => Binary (IxSet ixs x) where
  put = put . toList
  get = fmap fromList get

