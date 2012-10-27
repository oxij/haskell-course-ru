module Monstupar.Tests where

import Monstupar.Core
import Monstupar.Derived

--------------------------------------------------------------------------------
-- В помощь хозяйке

mustParse s p = case runParser p s of
    Left  _ -> False
    Right _ -> True

mustFail s = not . mustParse s

infixl 2 &.&
(&.&) p1 p2 x = p1 x && p2 x

--------------------------------------------------------------------------------
-- Тесты

-- Правильная скобочная последовательность
balPar = bp >> eof where
    bp = (do
          char '('
          bp
          char ')'
          bp) <|> ok

balParTest = mustParse ""
         &.& mustFail  "("
         &.& mustFail  ")"
         &.& mustParse "()"
         &.& mustParse "(())()(())()"
         &.& mustFail  "())()(())()"
         &.& mustFail  "(())()(()()"
         &.& mustFail  "())()(()()"
         $ balPar

-- Список натуральных чисел
-- тут следует использовать класс Read
natList :: Monstupar Char [Integer]
natList = undefined

natListTest = mustFail  ""
          &.& mustParse "0"
          &.& mustParse "0,1"
          &.& mustFail  "0,1,"
          &.& mustParse "10,20,12,3423,2342,234,2234,2342,22342,22232,17583,9573"
          &.& mustFail  "10,20,12,3423,2342,234,-2234,2342,22342,22232,17583,9573"
          &.& mustFail  "10,20,12,3423,0.,234,234,2342,22342,22232,17583,9573"
          $ natList

