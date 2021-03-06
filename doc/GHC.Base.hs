-- GHC.Base

-- apply
($) :: (a -> b) -> a -> b

-- concat
(++) :: [a] -> [a] -> [a]

-- compose
(.) :: (b -> c) -> (a -> b) -> a -> c

-- bind
(=<<) :: Monad m => (a -> m b) -> m a -> m b


id    :: a -> a
const :: a -> b -> a
seq   :: a -> b -> b
flip  :: (a -> b -> c) -> b -> a -> c
map   :: (a -> b) -> [a] -> [b]
until :: (a -> Bool) -> (a -> a) -> a -> a


data Maybe a = Nothing | Just a

data Ordering = LT | EQ | GT


class Applicative f => GHC.Base.Alternative (f :: * -> *) where
    GHC.Base.empty :: f a
    (GHC.Base.<|>) :: f a -> f a -> f a
    GHC.Base.some :: f a -> f [a]
    GHC.Base.many :: f a -> f [a]
{-# MINIMAL empty, (<|>) #-}


class Functor f => Applicative (f :: * -> *) where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b
  (*>) :: f a -> f b -> f b
  (<*) :: f a -> f b -> f a
{-# MINIMAL pure, (<*>) #-}


class Functor (f :: * -> *) where
  fmap :: (a -> b) -> f a -> f b
  (<$) :: a -> f b -> f a
{-# MINIMAL fmap #-}


class Applicative m => Monad (m :: * -> *) where
  (>>=) :: m a -> (a -> m b) -> m b
  (>>) :: m a -> m b -> m b
  return :: a -> m a
  fail :: String -> m a
{-# MINIMAL (>>=) #-}


class (GHC.Base.Alternative m, Monad m) =>
      GHC.Base.MonadPlus (m :: * -> *) where
  GHC.Base.mzero :: m a
  GHC.Base.mplus :: m a -> m a -> m a


class Monoid a where
  mempty :: a
  mappend :: a -> a -> a
  mconcat :: [a] -> a
{-# MINIMAL mempty, mappend #-}


class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
{-# MINIMAL (==) | (/=) #-}


class Eq a => Ord a where
  compare :: a -> a -> Ordering
  (<) :: a -> a -> Bool
  (<=) :: a -> a -> Bool
  (>) :: a -> a -> Bool
  (>=) :: a -> a -> Bool
  max :: a -> a -> a
  min :: a -> a -> a
{-# MINIMAL compare | (<=) #-}



(GHC.Base.<**>) :: Applicative f => f a -> f (a -> b) -> f b

GHC.Base.ap :: Monad m => m (a -> b) -> m a -> m bindIO
GHC.Base.join :: Monad m => m (m a) -> m a
GHC.Base.liftA :: Applicative f => (a -> b) -> f a -> f b
GHC.Base.liftA2 :: Applicative f => (a -> b -> c) -> f a -> f b -> f c
GHC.Base.liftA3 :: Applicative f =>  (a -> b -> c -> d) -> f a -> f b -> f c -> f d
GHC.Base.liftM :: Monad m => (a1 -> r) -> m a1 -> m r
GHC.Base.liftM2 :: Monad m => (a1 -> a2 -> r) -> m a1 -> m a2 -> m r
GHC.Base.liftM3 :: Monad m => (a1 -> a2 -> a3 -> r) -> m a1 -> m a2 -> m a3 -> m r
GHC.Base.liftM4 :: Monad m => (a1 -> a2 -> a3 -> a4 -> r) -> m a1 -> m a2 -> m a3 -> m a4 -> m r
GHC.Base.liftM5 :: Monad m => (a1 -> a2 -> a3 -> a4 -> a5 -> r) -> m a1 -> m a2 -> m a3 -> m a4 -> m a5 -> m r
GHC.Base.mapFB :: (elt -> lst -> lst) -> (a -> elt) -> a -> lst -> lst
GHC.Base.mapM :: Monad m => (a -> m b) -> [a] -> m [b]
GHC.Base.maxInt :: Int
GHC.Base.minInt :: Int
GHC.Base.modInt :: Int -> Int -> Int
GHC.Base.ord :: Char -> Int
GHC.Base.sequence :: Monad m => [m a] -> m [a]
GHC.Base.when :: Applicative f => Bool -> f () -> f ()
