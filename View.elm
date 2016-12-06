module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import Messages exposing (..)


view : Model -> Html Msg
view model =
    div [ pageStyle ]
        [ nav
        , body model
        ]


pageStyle : Attribute Msg
pageStyle =
    style
        [ ( "width", "100vw" )
        , ( "height", "100vh" )
        , ( "background-image", "url('img/bg.jpg')" )
        ]


nav : Html Msg
nav =
    div [ navStyle ]
        [ button [ buttonStyle, onClick Home, class "fa fa-home fa-5x" ] []
        , button [ buttonStyle, onClick Projects, class "fa fa-folder fa-5x" ] []
        , a [ buttonStyle, target "_blank", href "https://github.com/sarasharif", class "fa fa-github fa-5x" ] []
        , a [ buttonStyle, target "_blank", href "https://www.linkedin.com/in/sarsharif", class "fa fa-linkedin fa-5x" ] []
        ]


navStyle : Attribute msg
navStyle =
    style
        [ ( "display", "flex" )
        , ( "justify-content", "center" )
        , ( "width", "100%" )
        ]


buttonStyle : Attribute msg
buttonStyle =
    style
        [ ( "color", "darkgray" )
        , ( "height", "90px" )
        , ( "width", "90px" )
        , ( "border", "none" )
        , ( "text-align", "center" )
        , ( "align-items", "center" )
        , ( "margin", "4px" )
        , ( "padding", "0" )
        , ( "background", "none" )
        , ( "text-decoration", "none" )
        ]


body : Model -> Html Msg
body model =
    if model == "Home" then
        div []
            [ home ]
    else
        div []
            [ projects ]


home : Html Msg
home =
    div []
        [ text "HI I'm SARA!!" ]



-- div []
--     [ text "Hi there I'm Sara" ]


projects : Html Msg
projects =
    div []
        [ text "Worky work" ]
