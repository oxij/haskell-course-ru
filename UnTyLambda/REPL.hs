-- REPL for untyped lambda calculus
module UnTyLambda.REPL where

import Monstupar
import UnTyLambda.Interpreter

-- Парсим строку в терм
parseLambda :: Monstupar Char Term
parseLambda = undefined

--------------------------------------------------------------------------------
-- Заметье, что грамматика лямбда-выражений леворекурсивна.
-- Перед тем как бросаться кодить, сначала уберите леворекурсивность
-- (неопределённость тоже стоит убрать) на бумаге, а потом напишите
-- получившуюся грамматику в EBNF вот сюда:
--
-- прямо сюда, да
--------------------------------------------------------------------------------

-- Красиво печатаем терм (можно с лишними скобками, можно без)
prettyPrint :: Term -> String
prettyPrint = undefined

-- Собственно сам REPL. Первый аргумент — максимальное число итераций при
-- попытке нормализации стратегией из второго аргумента.
replLoop :: Integer -> (Integer -> Term -> Term) -> IO ()
replLoop patience strategy = undefined

-- Диалог с (replLoop 100 no) должен выглядеть так:
-- > \x . (\y . y) x x
-- \x . x x
