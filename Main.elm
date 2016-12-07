module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Style exposing (..)
import Projects exposing (..)


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Home", Cmd.none )



-- UPDATE


type Msg
    = Home
    | Projects
    | Culturemap
    | Wedding
    | Connect4
    | Xylophone


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( "Home", Cmd.none )

        Projects ->
            ( "Projects", Cmd.none )

        Culturemap ->
            ( "Culturemap", Cmd.none )

        Wedding ->
            ( "Wedding", Cmd.none )

        Connect4 ->
            ( "Connect4", Cmd.none )

        Xylophone ->
            ( "Xylophone", Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ nav
        , body model
        ]


nav : Html Msg
nav =
    div [ navStyle ]
        [ button [ buttonStyle, onClick Home, class "fa fa-home fa-5x" ] []
        , button [ buttonStyle, onClick Projects, class "fa fa-folder fa-5x" ] []
        , a [ buttonStyle, target "_blank", href "https://github.com/sarasharif", class "fa fa-github fa-5x" ] []
        , a [ buttonStyle, target "_blank", href "https://www.linkedin.com/in/sarsharif", class "fa fa-linkedin fa-5x" ] []
        ]


body : Model -> Html Msg
body model =
    if model == "Home" then
        div [ bodyStyle ]
            [ home ]
    else
        div [ bodyStyle ]
            [ projects model ]


home : Html Msg
home =
    div []
        [ div [ profileStyle ]
            [ div [ profileDescriptionStyle ]
                [ h1 [] [ text "Sara Sharif" ]
                , h2 [] [ text "Engineer" ]
                ]
            , img [ profileImageStyle, src "img/sara.jpg" ] []
            ]
        ]


projects : Model -> Html Msg
projects model =
    div
        [ contentParentStyle ]
        [ projectItem model culturemap Culturemap
        , projectItem model xylophone Xylophone
        , projectItem model wedding Wedding
        , projectItem model connect4 Connect4
        ]


projectItem : Model -> Project -> Msg -> Html Msg
projectItem model project msg =
    div
        [ contentItemStyle, onMouseEnter msg, onMouseLeave Projects ]
        [ img [ contentImageStyle, src project.image_link ] []
        , div [ contentDescriptionStyle model project.name ]
            [ projectDetails project.name project.tech project.url ]
        ]


projectDetails : String -> List String -> String -> Html Msg
projectDetails name tech url =
    div []
        [ h1 [] [ text name ]
        , a [ target "_blank", href url ] [ text "Check it out!" ]
        ]
