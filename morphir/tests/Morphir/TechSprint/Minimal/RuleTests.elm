module Morphir.TechSprint.Minimal.RuleTests exposing (..)

import Expect
import Morphir.SDK.LocalDate as LocalDate
import Morphir.SDK.LocalTime as LocalTime
import Morphir.TechSprint.Minimal.BasicTypes as BasicTypes exposing (Date)
import Morphir.TechSprint.Minimal.Enum exposing (..)
import Morphir.TechSprint.Minimal.Rule exposing (..)
import Morphir.TechSprint.Minimal.Type exposing (ReportableEvent, Trade, TradeState, WorkflowStep)
import Test exposing (..)


cFTCPart45TransactionReportTest : Test
cFTCPart45TransactionReportTest =
    let
        localDate =
            case LocalDate.fromParts 2000 1 1 of
                Just date ->
                    date

                Nothing ->
                    Debug.todo "this should not happen"

        localTime =
            LocalTime.fromMilliseconds 3654321

        timeZone =
            "UTC"

        zonedDateTime =
            BasicTypes.ZonedDateTime localDate localTime timeZone

        createTimeStamp enum =
            Morphir.TechSprint.Minimal.Type.EventTimestamp zonedDateTime enum

        runTest name e expected =
            test name <|
                \_ ->
                    cFTCPart45TransactionReport e
                        |> Expect.equal expected
    in
    describe "cFTCPart45TransactionReport test"
        [ runTest "empty list"
            (ReportableEvent (WorkflowStep []) (TradeState (Trade (BasicTypes.Date 1 1 2022))))
            { tradeDate = BasicTypes.Date 1 1 2022, eventTimestamp = Nothing }
        , runTest "one EventCreationDateTime TradeDate"
            (ReportableEvent (WorkflowStep [ createTimeStamp EventCreationDateTime ]) (TradeState (Trade (BasicTypes.Date 1 1 2022))))
            { tradeDate = BasicTypes.Date 1 1 2022, eventTimestamp = Just zonedDateTime }
        , runTest "multiple TradeDates with no EventCreationDateTime"
            (ReportableEvent (WorkflowStep [ createTimeStamp ExecutionDateTime, createTimeStamp ExecutionDateTime ]) (TradeState (Trade (BasicTypes.Date 1 1 2022))))
            { tradeDate = BasicTypes.Date 1 1 2022, eventTimestamp = Nothing }
        , runTest "multiple EventCreationDateTime TradeDates"
            (ReportableEvent (WorkflowStep [ createTimeStamp EventCreationDateTime, createTimeStamp EventCreationDateTime ]) (TradeState (Trade (BasicTypes.Date 1 1 2022))))
            { tradeDate = BasicTypes.Date 1 1 2022, eventTimestamp = Nothing }
        , runTest "one EventCreationDateTime with multiple TradeDates"
            (ReportableEvent (WorkflowStep [ createTimeStamp EventCreationDateTime, createTimeStamp ExecutionDateTime, createTimeStamp EventExpirationDateTime ]) (TradeState (Trade (BasicTypes.Date 1 1 2022))))
            { tradeDate = BasicTypes.Date 1 1 2022, eventTimestamp = Just zonedDateTime }
        ]
