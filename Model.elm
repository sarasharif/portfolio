-- MODEL


module Model exposing (..)

import Messages exposing (..)


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Home", Cmd.none )
