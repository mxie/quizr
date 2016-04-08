-- (..) will pull in everything
module Main (..) where

import Html exposing (..)
import Effects exposing (Effects)
import Question.Model exposing (..)
import Question.View
import Question.Update exposing (..)
import StartApp
import Task exposing (Task)

app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , view = view
    , update = update
    , inputs = []
    }

port tasks : Signal (Task Effects.Never ())
port tasks =
  app.tasks

-- String -> VirtualDom.Node
main : Signal Html
main =
  app.html

view : Signal.Address Action -> Model -> Html
view address question =
  div
    []
    [ pageTitle
    , Question.View.view address question
    ]

pageTitle : Html
pageTitle =
  h1 [] [ text "QuizR" ]
