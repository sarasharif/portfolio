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
        [ ( "width", "100%" )
        , ( "height", "100vh" )
        , ( "background-image", "url('img/bg.jpg')" )
        , ( "background-size", "100% 100%" )
        , ( "overflow", "hidden" )
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
        [ ( "color", "white" )
        , ( "height", "90px" )
        , ( "width", "90px" )
        , ( "border", "none" )
        , ( "margin", "4px 20px" )
        , ( "padding", "0" )
        , ( "background", "none" )
        , ( "text-decoration", "none" )
        , ( "cursor", "pointer" )
        ]


body : Model -> Html Msg
body model =
    if model == "Home" then
        div [ bodyStyle ]
            [ home ]
    else
        div [ bodyStyle ]
            [ projects ]


bodyStyle : Attribute msg
bodyStyle =
    style
        [ ( "display", "flex" )
        , ( "justify-content", "center" )
        , ( "width", "100%" )
        , ( "height", "auto" )
        ]


home : Html Msg
home =
    div [ contentItemStyle ]
        [ text "HI I'm SARA!!" ]


projects : Html Msg
projects =
    div []
        [ div
            [ contentItemStyle ]
            [ img [ screenshotStyle, src "img/culturemap.png" ] []
            ]
        , div
            [ contentItemStyle ]
            [ text "xylophone" ]
        , div
            [ contentItemStyle ]
            [ text "wedding!" ]
        , div
            [ contentItemStyle ]
            [ text "connect-4" ]
        ]


contentItemStyle : Attribute msg
contentItemStyle =
    style
        [ ( "background-color", "rgba(255,255,255,.7)" )
        , ( "width", "50vw" )
        , ( "margin", "4px" )
        , ( "padding", "4px" )
        ]


screenshotStyle : Attribute msg
screenshotStyle =
    style
        [ ( "width", "50%" )
        ]
