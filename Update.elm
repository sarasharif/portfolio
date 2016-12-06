-- UPDATE


module Update exposing (..)

import Messages exposing (..)
import Model exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( "Home", Cmd.none )

        Projects ->
            ( "Projects", Cmd.none )
