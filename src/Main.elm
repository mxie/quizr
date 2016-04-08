-- (..) will pull in everything
module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (for, id, type', value)
import Question.Model exposing (..)

-- String -> VirtualDom.Node
main : Html
main =
  view initialModel

view : Model -> Html
view question' =
  div
    []
    [ pageTitle
    , question question'
    ]

pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]

question : Model -> Html
question question' =
  section
    []
    [ dl
        []
        [ dt [] [ text "Category" ]
        , dd [] [ text question'.category ]
        , dt [] [ text "Difficulty" ]
        , dd [] [ text question'.difficulty ]
        ]
    , h2 [] [ text question'.text ]
    , form
        []
        [ label [ for "answer" ] [ text "What's your answer?" ]
        , input [ type' "text", id "answer" ] []
        , input [ type' "submit", value "Submit your answer" ] []
        ]
    ]
