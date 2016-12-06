module Main exposing (..)

import Model exposing (..)
import View exposing (..)
import Messages exposing (..)
import Html exposing (..)


-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( "Home", Cmd.none )

        Projects ->
            ( "Projects", Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
