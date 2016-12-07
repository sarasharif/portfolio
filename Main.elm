module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Style exposing (..)
import Details exposing (..)


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
    { page : String
    , selected_project : String
    }


initModel : Model
initModel =
    { page = "Home"
    , selected_project = ""
    }


init : ( Model, Cmd Msg )
init =
    ( initModel, Cmd.none )



-- UPDATE


type Msg
    = Home
    | Projects
    | Hover String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( initModel, Cmd.none )

        Projects ->
            ( { model | page = "Projects", selected_project = "" }, Cmd.none )

        Hover project_name ->
            ( { model | selected_project = project_name }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ nav model.page
        , body model
        ]


nav : String -> Html Msg
nav current_page =
    div [ navStyle ]
        [ button [ buttonStyle current_page "Home", onClick Home, class "fa fa-home fa-5x" ] []
        , button [ buttonStyle current_page "Projects", onClick Projects, class "fa fa-folder fa-5x" ] []
        , a [ buttonStyle current_page "github", target "_blank", href "https://github.com/sarasharif", class "fa fa-github fa-5x" ] []
        , a [ buttonStyle current_page "linkedin", target "_blank", href "https://www.linkedin.com/in/sarsharif", class "fa fa-linkedin fa-5x" ] []
        ]


body : Model -> Html Msg
body model =
    if model.page == "Home" then
        div [ bodyStyle ]
            [ home ]
    else
        div [ bodyStyle ]
            [ projects model.selected_project ]


home : Html Msg
home =
    div []
        [ div [ profileStyle ]
            [ div [ profileDescriptionStyle ]
                [ h2 [] [ text Details.name ]
                , h4 [] [ text occupation ]
                ]
            , img [ profileImageStyle, src profile_picture ] []
            ]
        ]


projects : String -> Html Msg
projects selected_project =
    let
        project_list =
            List.map (\project -> projectItem selected_project project) my_projects
    in
        div
            [ projectParentStyle ]
            project_list


projectItem : String -> Project -> Html Msg
projectItem selected_project project =
    div
        [ projectItemStyle, onMouseEnter (Hover project.name), onMouseLeave Projects ]
        [ projectImage project
        , projectDetails selected_project project
        ]


projectImage : Project -> Html Msg
projectImage project =
    img [ projectImageStyle, src project.image_link ] []


projectDetails : String -> Project -> Html Msg
projectDetails selected_project project =
    div [ projectDescriptionStyle selected_project project.name ]
        [ h1 [] [ text project.name ]
        , a [ goButtonStyle, target "_blank", href project.url ] [ text "Check it out!" ]
        ]
