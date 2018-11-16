module Main exposing (..)

-- core
import Html exposing (Html, div, text, input)
import Html.Attributes exposing (style, class,value)
import Browser exposing(element)

-- self made modules
import ElmStyle
import SelfMadeMath


type alias Model = 
  { int : Int }

type Msg 
  = Change Int

main = Browser.element
  { init = init
  , view = view
  , update = update
  , subscriptions = subscriptions
  }

init : () -> (Model, Cmd Msg)
init _ =
    (
      {int= 10}
    --, Cmd.batch [Cmd.map SvgElementMsg svgElementMsg]
    , Cmd.batch []
    )

view : Model -> Html Msg
view model = 
  div 
    []
    [
      input [value (String.fromInt model.int)] []
    ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
  ({int=11},Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none