{-# LANGUAGE NoImplicitPrelude #-}
module ITMOPrelude.Categories.MonadJoin where

import ITMOPrelude.Categories

class Functor m => MonadJoin m where
    returnJoin :: a -> m a
    join :: m (m a) -> m a
