{-# LANGUAGE NoImplicitPrelude, FlexibleInstances, UndecidableInstances #-}
module ITMOPrelude.Categories.ToMonadFish where
import ITMOPrelude.Categories.MonadFish

-- Эти
import ITMOPrelude.Categories
import ITMOPrelude.Categories.MonadJoin

-- делаем из нас
instance MonadFish m => Monad where
    return = ?
    f >>= g = ?

instance MonadFish m => Functor m where
    fmap = ?

instance MonadFish m => MonadJoin m where
    returnJoin = ?
    join = ?
