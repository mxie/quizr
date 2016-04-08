-- (..) will pull in everything
module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (for, id, type', value)

-- String -> VirtualDom.Node
main : Html
main =
  view

view : Html
view =
  div
    []
    [ pageTitle
    , question
    ]

pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]

question : Html
question =
  section
    []
    [ dl
        []
        [ dt [] [ text "Category" ]
        , dd [] [ text "Movie" ]
        , dt [] [ text "Difficulty" ]
        , dd [] [ text "Hard" ]
        ]
    , h2 [] [ text "What's the name of the first Star Wars movie?" ]
    , form
        []
        [ label [ for "answer" ] [ text "What's your answer?" ]
        , input [ type' "text", id "answer" ] []
        , input [ type' "submit", value "Submit your answer" ] []
        ]
    ]
