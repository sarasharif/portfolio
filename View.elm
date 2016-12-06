module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import Messages exposing (..)
import Style exposing (..)


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
            [ projects ]


home : Html Msg
home =
    div []
        [ div
            [ contentItemStyle ]
            [ img [ contentImageStyle, src "img/sara.jpg" ] []
            , div [ contentDescriptionStyle ] [ text "Sara Sharif" ]
            ]
        ]


projects : Html Msg
projects =
    div []
        [ div
            [ contentItemStyle ]
            [ img [ contentImageStyle, src "img/culturemap.png" ] []
            , div [ contentDescriptionStyle ] [ text "culturemap" ]
            ]
        , div
            [ contentItemStyle ]
            [ img [ contentImageStyle, src "img/xylophone.gif" ] []
            , div [ contentDescriptionStyle ] [ text "xylophone" ]
            ]
        , div
            [ contentItemStyle ]
            [ img [ contentImageStyle, src "img/wedding.png" ] []
            , div [ contentDescriptionStyle ] [ text "wedding" ]
            ]
        , div
            [ contentItemStyle ]
            [ img [ contentImageStyle, src "img/connect4.gif" ] []
            , div [ contentDescriptionStyle ] [ text "connect4" ]
            ]
        ]
