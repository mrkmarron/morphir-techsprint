module Morphir.TechSprint.Minimal.RuleTests exposing (..)

import Test exposing (..)
import Expect
import Morphir.TechSprint.Minimal.Rule exposing (..)
import Morphir.TechSprint.Minimal.BasicTypes as BasicTypes exposing (Date)
import Morphir.TechSprint.Minimal.Type exposing (WorkflowStep)
import Morphir.TechSprint.Minimal.Type exposing (Trade)
import Morphir.TechSprint.Minimal.Type exposing (TradeState)
import Morphir.TechSprint.Minimal.Type exposing (ReportableEvent)

cFTCPart45TransactionReportTest : Test
cFTCPart45TransactionReportTest =
    let
        tradeDate = BasicTypes.Date 1 1 2022

        originatingWorkflowStep = WorkflowStep []
        reportableTrade = (TradeState (Trade tradeDate))

        event : ReportableEvent
        event = ReportableEvent originatingWorkflowStep reportableTrade


        -- expectedResult : CFTCPart45TransactionReport
        -- expectedResult =

    in
    describe "cFTCPart45TransactionReport test"
        [ test "foo" <| \_ -> Expect.false "false" False
        ]