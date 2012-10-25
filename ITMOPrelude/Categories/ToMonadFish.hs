{-# LANGUAGE NoImplicitPrelude #-}
module ITMOPrelude.Categories.ToMonadFish where
import ITMOPrelude.Categories.MonadFish

-- Из этих
import ITMOPrelude.Categories
import ITMOPrelude.Categories.MonadJoin

-- делаем эти
instance Monad m => MonadFish m where
    returnFish = ?
    f >=> g = ?

instance MonadJoin m => MonadFish m where
    returnFish = ?
    f >=> g = ?

