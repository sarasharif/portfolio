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
        , ( "width", "100%" )
        , ( "margin-bottom", "15px" )
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


bodyStyle : Attribute msg
bodyStyle =
    style
        [ ( "position", "relative" )
        , ( "top", "10vh" )
        , ( "display", "flex" )
        , ( "justify-content", "center" )
        , ( "width", "100%" )
        ]


contentItemStyle : Attribute msg
contentItemStyle =
    style
        [ ( "width", "70vw" )
        , ( "margin", "10px" )
        , ( "padding", "0" )
        , ( "display", "flex" )
        , ( "flex-direction", "row" )
        ]


profileImageStyle : Attribute msg
profileImageStyle =
    style
        [ ( "height", "50vh" ) ]


profileDescriptionStyle : Attribute msg
profileDescriptionStyle =
    style
        [ ( "background-color", "rgba(255,255,255,.7)" )
        , ( "flex-grow", "4" )
        , ( "vertical-align", "baseline" )
        , ( "padding", "10% 5%" )
        ]


contentImageStyle : Attribute msg
contentImageStyle =
    style
        [ ( "width", "25vw" )
        , ( "height", "15vw" )
        ]


contentDescriptionStyle : Attribute msg
contentDescriptionStyle =
    style
        [ ( "background-color", "rgba(255,255,255,.7)" )
        , ( "flex-grow", "4" )
        ]
