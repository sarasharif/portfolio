module Main exposing (..)

import Model exposing (..)
import View exposing (..)
import Messages exposing (..)
import Html exposing (..)
import Update exposing (..)


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
