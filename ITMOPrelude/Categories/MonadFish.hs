{-# LANGUAGE NoImplicitPrelude #-}
module ITMOPrelude.Categories.MonadFish where

class MonadFish m where
    returnFish :: a -> m a
    (>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
