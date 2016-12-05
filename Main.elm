module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Home", Cmd.none )



-- MESSAGES


type Msg
    = Home
    | Projects



-- VIEW


view : Model -> Html Msg
view model =
    if model == "Home" then
        div []
            [ button [ onClick Home ] [ text "Home" ]
            , button [ onClick Projects ] [ text "Projects" ]
            , a [ target "_blank", href "https://github.com/sarasharif" ] [ text "Github" ]
            , a [ target "_blank", href "https://www.linkedin.com/in/sarsharif" ] [ text "LinkedIn" ]
            , text "Home!"
            ]
    else
        div []
            [ button [ onClick Home ] [ text "Home" ]
            , button [ onClick Projects ] [ text "Projects" ]
            , text "Projects!"
            ]



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
