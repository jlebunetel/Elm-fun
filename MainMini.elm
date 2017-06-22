module Main exposing (..)

import Html exposing (Html, button, div, text, program, h1)
import Html.Attributes exposing (class, attribute)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )



-- MESSAGES


type Msg
    = NoOp



-- VIEW


view : Model -> Html Msg
view model =
    div
        [ class "container theme-showcase", attribute "role" "main" ]
        [ div [ class "jumbotron" ]
            [ h1 [] [ text model ] ]
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



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
