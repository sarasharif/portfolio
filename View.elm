module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import Messages exposing (..)
import Style exposing (..)
import Debug exposing (..)


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
        [ div
            [ contentItemStyle, onMouseEnter Info_a, onMouseLeave Projects ]
            [ img [ contentImageStyle, src "img/cm.png" ] []
            , div [ contentDescriptionStyle model "Info_a" ] [ hoverdiv "culturemap" [ "ruby", "javascript" ] "http://www.culturemap.site" ]
            ]
        , div
            [ contentItemStyle, onMouseEnter Info_b, onMouseLeave Projects ]
            [ img [ contentImageStyle, src "img/xy.png" ] []
            , div [ contentDescriptionStyle model "Info_b" ] [ hoverdiv "xylophone" [ "ruby", "javascript" ] "https://www.google.com" ]
            ]
        , div
            [ contentItemStyle, onMouseEnter Info_c, onMouseLeave Projects ]
            [ img [ contentImageStyle, src "img/sm.png" ] []
            , div [ contentDescriptionStyle model "Info_c" ] [ hoverdiv "culturemap" [ "ruby", "javascript" ] "https://www.google.com" ]
            ]
        , div
            [ contentItemStyle, onMouseEnter Info_d, onMouseLeave Projects ]
            [ img [ contentImageStyle, src "img/c4.png" ] []
            , div [ contentDescriptionStyle model "Info_d" ] [ hoverdiv "culturemap" [ "ruby", "javascript" ] "https://www.google.com" ]
            ]
        ]


hoverdiv : String -> List String -> String -> Html Msg
hoverdiv name skills url =
    div []
        [ h1 [] [ text name ]
        , a [ target "_blank", href url ] [ text "Check it out!" ]
        ]
