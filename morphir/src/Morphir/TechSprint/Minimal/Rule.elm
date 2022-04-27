module Morphir.TechSprint.Minimal.Rule exposing (..)

import Morphir.TechSprint.Minimal.BasicTypes exposing (Date, ZonedDateTime)
import Morphir.TechSprint.Minimal.Enum as Enum
import Morphir.TechSprint.Minimal.Type exposing (ReportableEvent)



--type CFTCPart45TransactionReport:
--
--    tradeDate date (1..1)
--        [ruleReference TradeDate]
--
--    eventTimestamp zonedDateTime (1..1)
--        [ruleReference EventTimestamp]


type alias CFTCPart45TransactionReport =
    { tradeDate : Date
    , eventTimestamp : ZonedDateTime
    }


{-| The assumption here is that the type definition for the report contains multiplicities for each field in a row but
at the top-level there can always be any number of rows returned (0..\*) and rule results are cartesian joined.
-}
cFTCPart45TransactionReport : ReportableEvent -> List CFTCPart45TransactionReport
cFTCPart45TransactionReport reportableEvent =
    crossJoin2 CFTCPart45TransactionReport
        (tradeDate reportableEvent)
        (eventTimestamp reportableEvent)



--reporting rule TradeDate <"Trade Date">
--    [regulatoryReference CFTC Part45 appendix "1" dataElement "30" field "Trade Date"
--        provision "Date and time of occurrence of the event as determined by the reporting counterparty or a service provider. In the case of a clearing event, date and time when the original swap is accepted by the derivative clearing organization (DCO) for clearing and recorded by the DCOs system should be reported in this data element. The time element is as specific as technologically practicable."]
--    extract ReportableEvent -> reportableTrade -> trade -> tradeDate
--    as "Trade timestamp"


tradeDate : ReportableEvent -> List Date
tradeDate reportableEvent =
    reportableEvent.reportableTrade
        |> Maybe.map
            (\reportableTrade ->
                reportableTrade.trade.tradeDate
            )
        |> maybeToList


{-| This is a helper function to turn (0..1) multiplicity into (0..\*)
-}
maybeToList : Maybe a -> List a
maybeToList maybe =
    maybe
        |> Maybe.map List.singleton
        |> Maybe.withDefault []


{-| This is a utility to create a cartesian product of two lists.
-}
crossJoin2 : (a -> b -> c) -> List a -> List b -> List c
crossJoin2 f listA listB =
    listA
        |> List.concatMap
            (\a ->
                listB
                    |> List.map
                        (\b ->
                            f a b
                        )
            )



--reporting rule EventTimestamp <"Event Timestamp">
--    [regulatoryReference CFTC Part45 appendix "1" dataElement "30" field "Event Timestamp"
--        provision "Date and time of occurrence of the event as determined by the reporting counterparty or a service provider. In the case of a clearing event, date and time when the original swap is accepted by the derivative clearing organization (DCO) for clearing and recorded by the DCOs system should be reported in this data element. The time element is as specific as technologically practicable."]
--    extract ReportableEvent -> originatingWorkflowStep -> timestamp  then
--        filter when EventTimestamp -> qualification = EventTimestampQualificationEnum -> eventCreationDateTime then
--        	extract EventTimestamp -> dateTime
--    as "30 Event timestamp"
--


eventTimestamp : ReportableEvent -> List ZonedDateTime
eventTimestamp reportableEvent =
    reportableEvent.originatingWorkflowStep.timestamp
        |> List.filter
            (\et ->
                et.qualification == Enum.EventCreationDateTime
            )
        |> List.map
            (\et ->
                et.dateTime
            )
