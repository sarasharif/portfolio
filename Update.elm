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

        Info_a ->
            ( "Info_a", Cmd.none )

        Info_b ->
            ( "Info_b", Cmd.none )

        Info_c ->
            ( "Info_c", Cmd.none )

        Info_d ->
            ( "Info_d", Cmd.none )
