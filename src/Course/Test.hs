x :: Integer
x = 99

-- x = x + 1

-- :: is of the type
-- :t what is the type of

f :: Integer -> Integer
f r = r + 10

-- all functions in haskell would only ever take ONE parameter at a time
-- -> is right associative
-- SPACE is left associative

{- block comment -}

ff :: Integer -> (Integer -> Integer)
ff a b = (a + b) * 2

-- `\` is lamda
fff :: Integer -> Integer -> Integer
fff = \a b -> (a + b) * 2

ffff = \a -> \b -> (a + b) * 2

fffff a = \b -> (a + b) * 2

-- if the function name starts with a-z ff a b, you can infix it with back ticks like: a `ff` b

g x = x

h x y = x

-- Integer is a data type. Data type starts with Capital letters
data Shape = 
    Circle Integer
    | Rectangle Integer Integer
    | Triangle Integer Integer Integer
    deriving (Eq, Show)

pie :: Integer
pie = 3

perimeter :: Shape -> Integer
perimeter = \s -> case s of
    Circle r -> r * 2 * pie
    Rectangle w h -> (w + h) * 2
    Triangle a b c -> a + b + c

perimeteragain :: Shape -> Integer
perimeteragain (Circle r) = r * 2 * pie
perimeteragain (Rectangle w h) = (w + h) * 2
perimeteragain (Triangle a b c) = a + b + c

hh :: (Integer -> Integer) -> Integer
hh w = 1 + w 88

-- type classes
class Equal a where
    (===) : a -> a -> Bool

instance Equal Shape where
-- (===) :: Shape -> Shape -> Bool
    (===) (Circle r1) (Circle r2) = r1 === r2
    (===) (Rectangle w1 _) (Rectangle w2 _) = w1 === w2
    (===) _ _ = False

    -- (===) s1 s2 = 
    --     case s1 of Circle r1 -> 
    --         case s2 of Circle r2 -> r1 == r2
    --         _ -> False
    --     _ -> False    
    
    
data ExactlyTwo a = ExactlyTwo a a
    deriving (Eq, Show)
