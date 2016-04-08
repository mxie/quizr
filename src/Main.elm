-- (..) will pull in everything
module Main (..) where

import Html exposing (..)
import Question.Model exposing (..)
import Question.View

-- String -> VirtualDom.Node
main : Html
main =
  view initialModel

view : Model -> Html
view question =
  div
    []
    [ pageTitle
    , Question.View.view question
    ]

pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]
