module App.Update (Action(..), init, update) where

import Effects exposing (Effects)
import App.Model exposing (..)
import Question.Update

type Action
  = Noop
  | HandleQuestionAction Question.Update.Action

init : ( Model, Effects Action)
init =
  ( initialModel, Effects.none )

update : Action -> Model -> ( Model, Effects Action )
update action model =
  case action of
    Noop ->
      ( model, Effects.none )
    HandleQuestionAction action' ->
      let
        -- ( Question.Model.Model, List Question.Update.Action )
        ( model', effects' ) =
          Question.Update.update action' model.currentQuestion
      in
        ( { model | currentQuestion = model' }
          -- ( Question.Update.Action -> App.Update.Action)
          , Effects.map HandleQuestionAction effects'
        )
