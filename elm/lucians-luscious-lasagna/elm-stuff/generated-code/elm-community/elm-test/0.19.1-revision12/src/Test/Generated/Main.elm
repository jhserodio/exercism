module Test.Generated.Main exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    Test.Runner.Node.run
        { runs = 100
        , report = ConsoleReport UseColor
        , seed = 126192514739463
        , processes = 16
        , globs =
            [ "tests/Tests.elm"
            ]
        , paths =
            [ "/home/serodio/exercism/elm/lucians-luscious-lasagna/tests/Tests.elm"
            ]
        }
        [ ( "Tests"
          , [ Test.Runner.Node.check Tests.tests
            ]
          )
        ]