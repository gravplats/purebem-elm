module Purebem exposing
  ( purebem
  )


import List exposing (filter, map)
import String exposing (isEmpty, join)


purebem : String -> String -> List (String, Bool) -> String
purebem block element modifiers =
  let
    base = if isEmpty element then block else block ++ "__" ++ element
    mods = modifiers
      |> filter (\(_, value) -> value)
      |> map (\(key, _) -> base ++ "--" ++ key)
      |> join " "
  in
    if isEmpty mods then base else base ++ " " ++ mods
