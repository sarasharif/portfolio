module Style exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


navStyle : Attribute msg
navStyle =
    style
        [ ( "position", "relative" )
        , ( "top", "10vh" )
        , ( "display", "flex" )
        , ( "justify-content", "center" )
        , ( "width", "100vw" )
        , ( "margin-bottom", "15px" )
        ]


buttonStyle : String -> String -> Attribute msg
buttonStyle current_page button_icon =
    let
        color =
            if current_page == button_icon then
                "darkgray"
            else
                "white"
    in
        style
            [ ( "color", color )
            , ( "height", "90px" )
            , ( "width", "90px" )
            , ( "border", "none" )
            , ( "margin", "4px 20px" )
            , ( "padding", "0" )
            , ( "text-align", "center" )
            , ( "background", "none" )
            , ( "outline", "none" )
            , ( "text-decoration", "none" )
            , ( "cursor", "pointer" )
            ]


bodyStyle : Attribute msg
bodyStyle =
    style
        [ ( "position", "relative" )
        , ( "top", "10vh" )
        , ( "width", "100%" )
        , ( "display", "flex" )
        , ( "justify-content", "center" )
        , ( "font-family", "'Helvetica Neue', sans-serif" )
        ]


profileStyle : Attribute msg
profileStyle =
    style
        [ ( "margin", "10px" )
        , ( "padding", "0" )
        , ( "display", "flex" )
        , ( "flex-direction", "row" )
        , ( "width", "60vw" )
        , ( "justify-content", "center" )
        ]


profileImageStyle : Attribute msg
profileImageStyle =
    style
        [ ( "height", "50vh" ) ]


profileDescriptionStyle : Attribute msg
profileDescriptionStyle =
    style
        [ ( "background-color", "rgba(255,255,255,.6)" )
        , ( "max-height", "50vh" )
        , ( "flex-grow", "4" )
        , ( "vertical-align", "baseline" )
        , ( "font-size", "3em" )
        , ( "padding", "10% 5%" )
        , ( "line-height", "30px" )
        ]


projectParentStyle : Attribute msg
projectParentStyle =
    style
        [ ( "display", "flex" )
        , ( "flex-wrap", "wrap" )
        , ( "justify-content", "center" )
        ]


projectItemStyle : Attribute msg
projectItemStyle =
    style
        [ ( "position", "relative" )
        , ( "width", "640px" )
        , ( "height", "486px" )
        , ( "margin", "10px" )
        ]


projectImageStyle : Attribute msg
projectImageStyle =
    style
        [ ( "position", "relative" )
        , ( "z-index", "50" )
        ]


projectDescriptionStyle : String -> String -> Attribute msg
projectDescriptionStyle model match =
    let
        zindex =
            if model == match then
                "100"
            else
                "-100"
    in
        style
            [ ( "display", "flex" )
            , ( "flex-direction", "column" )
            , ( "justify-content", "space-around" )
            , ( "background-color", "rgba(5,5,5,.7)" )
            , ( "color", "white" )
            , ( "position", "absolute" )
            , ( "top", "0px" )
            , ( "width", "100%" )
            , ( "height", "100%" )
            , ( "z-index", (zindex) )
            , ( "text-align", "center" )
            ]


goButtonStyle : Attribute msg
goButtonStyle =
    style
        [ ( "display", "flex" )
        , ( "color", "white" )
        , ( "border", "10px solid white" )
        , ( "border-radius", "50px" )
        , ( "padding", "20px" )
        , ( "text-decoration", "none" )
        ]
