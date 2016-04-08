module Question.Model (Model, Status(Correct, Incorrect), initialModel) where

type Status
  = Correct
  | Incorrect
  | Unanswered

type alias Model =
  { category : String
  , difficulty: String
  , text : String
  , answer : String
  , response : String
  , status : Status
  }

initialModel : Model
initialModel =
  { category = "Movie"
  , difficulty = "hard"
  , text = "What's the name of the first Star Wars movie?"
  , answer = "A New Hope"
  , response = ""
  , status = Unanswered
  }
