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
    [ pageTitle
    , text "hello world"
    ]

pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]
