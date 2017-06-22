module Main exposing (..)

import Html exposing (Html, button, div, text, program, h1, h3, p)
import Html.Attributes exposing (class, attribute, href, id)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
    Bool


init : ( Model, Cmd Msg )
init =
    ( False, Cmd.none )



-- MESSAGES


type Msg
    = Expand
    | Collapse



-- VIEW


view : Model -> Html Msg
view model =
    div
        [ class "container theme-showcase", attribute "role" "main" ]
        [ div [ class "jumbotron" ]
            [ h1 [] [ text "Ma super appli !" ]
            , p [] [ text "ça c'est une super application elm !" ]
            ]
        , div [ class "page-header" ]
            [ h1 [] [ text "corps de l'appli" ]
            ]
        , div [ class "row" ]
            [ div [ class "col-sm-6" ]
                [ div [ class "panel panel-default" ]
                    [ div [ class "panel-heading" ]
                        [ h3 [ class "panel-title" ] [ text "titre" ] ]
                    , div
                        [ class "panel-body" ]
                        [ if model then
                            button [ onClick Collapse, class "btn btn-lg btn-primary" ] [ text "Collapse" ]
                          else
                            button [ onClick Expand, class "btn btn-lg btn-warning" ] [ text "Expand" ]
                        ]
                    ]
                ]
            , div [ class "col-sm-6" ]
                [ div [ class "panel panel-success" ]
                    [ div [ class "panel-heading" ]
                        [ h3 [ class "panel-title" ] [ text "titre" ] ]
                    , div
                        [ class "panel-body" ]
                        [ if model then
                            text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit."
                          else
                            text "Lorem ipsum ..."
                        ]
                    ]
                ]
            ]
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Expand ->
            ( True, Cmd.none )

        Collapse ->
            ( False, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
