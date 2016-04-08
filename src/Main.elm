-- (..) will pull in everything
module Main (..) where

import Html exposing (Html, text, h1, div)

-- String -> VirtualDom.Node
main : Html
main =
  view

view : Html
view =
  div
    []
    [ h1
        []                  -- list of attributes
        [ text "QuizR" ]    -- list of nodes
    , text "hello world"
    ]
