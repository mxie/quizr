module Question.Model (Model, initialModel) where

type alias Model =
  { category : String
  , difficulty: String
  , text : String
  }

initialModel : Model
initialModel =
  { category = "Movie"
  , difficulty = "hard"
  , text = "What's the name of the first Star Wars movie?"
  }
