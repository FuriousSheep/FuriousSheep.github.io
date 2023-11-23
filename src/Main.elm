module Main exposing (..)

import Browser.Navigation exposing (Key)
import Browser exposing (application, document)
import Html
import Url exposing (Url)

type alias Model = { a : Int }

type Msg = NoOp


init : () -> Url -> Key -> (Model, Cmd Msg)
init _ _ _ = ( {a = 0}, Cmd.none )

main = application
  { init = init
  , onUrlChange = \_ -> NoOp
  , onUrlRequest = \_ -> NoOp
  , subscriptions = \ _ -> Sub.none
  , update = \_ _ -> ({a = 0}, Cmd.none)
  , view = \_ -> { title = "", body=  [Html.text "Under construction...", Html.text "Please hold"]}
  }