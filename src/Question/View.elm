module Question.View (view) where

import Html exposing (..)
import Html.Attributes exposing (for, id, type', value)
import Html.Events exposing (on, targetValue)
import Question.Model exposing (Status(..), Model)
import Question.Update exposing (Action(..))
import Util.CustomEvent exposing (onSubmit)

view : Signal.Address Action -> Model -> Html
view address question =
  section
    []
    [ dl
        []
        [ dt [] [ text "Category" ]
        , dd [] [ text question.category ]
        , dt [] [ text "Difficulty" ]
        , dd [] [ text question.difficulty ]
        ]
    , h2 [] [ text question.text ]
    , h3 [] [ text (questionStatus question) ]
    , form
        [ onSubmit address AnswerQuestion ]
        [ label [ for "answer" ] [ text "What's your answer?" ]
        , input
            [ type' "text"
            , id "answer"
            , on "input" targetValue (\userInput -> Signal.message address (UpdateResponse userInput))
            ]
            []
        , input [ type' "submit", value "Submit your answer" ] []
        ]
    ]

questionStatus : Model -> String
questionStatus model =
  case model.status of
    Correct ->
      "Correct"
    Incorrect ->
      "Incorrect"
    _ ->
      ""
