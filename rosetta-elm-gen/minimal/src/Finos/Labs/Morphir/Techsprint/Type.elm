
module Finos.Labs.Morphir.Techsprint.Type exposing (..)

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)
import Com.Rosetta.Model.Type exposing (ZonedDateTime)
import Com.Rosetta.Model.Type exposing (Date)

import Finos.Labs.Morphir.Techsprint.Enum exposing (EventTimestampQualificationEnum)


-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}


type alias CFTCPart45TransactionReport =
    {   tradeDate : LocalDate 
    ,   eventTimestamp : Maybe ZonedDateTime 
    }
  -- A class to represent the various set of timestamps that can be associated with lifecycle events, as a collection of [dateTime, qualifier].
type alias EventTimestamp =
    {   dateTime : ZonedDateTime -- The CDM specifies that the zoned date time is to be expressed in accordance with ISO 8601, either as UTC as an offset to UTC.
    ,   qualification : EventTimestampQualificationEnum -- The timestamp qualifier is specified through an enumeration because the experience of integrating the DTCC and CME data representations suggests that a wide set of timestamps are currently utilized among service providers, while there is not at present an objective set of criteria that could help suggest a defined set of timestamps as part of the CDM. At some future point, one possible baseline could be developed from the review of the set of timestamps specified across regulatory regimes and regulations (incl. regulations such as high frequency trading). Also, the integration with a further set of implementations and the specification of business workflows such as clearing as part of the CDM development should help confirm the implementation approach in this respect.
    }
  -- Specifies a workflowstep with enriched information required for reporting.
type alias ReportableEvent =
    {   originatingWorkflowStep : WorkflowStep -- The workflowstep that originated the reportable event.
    ,   reportableTrade : TradeState -- The reportable trade decomposed from the originating workflow step when required.
    }
  -- Defines the output of a financial transaction between parties - a Business Event. A Trade impacts the financial position (i.e. the balance sheet) of involved parties.
type alias Trade =
    {   tradeDate : LocalDate -- Specifies the date which the trade was agreed.
    }
  -- Defines the fundamental financial information that can be changed by a Primitive Event and by extension any business or life-cycle event. Each TradeState specifies where a Trade is in its life-cycle. TradeState is a root type and as such, can be created independently to any other CDM data type, but can also be used as part of the CDM Event Model.
type alias TradeState =
    {   trade : Trade -- Represents the Trade that has been effected by a business or life-cycle event.
    }
  -- A workflow step represents the state of a business event. The workflow step contains a reference to a previous WorkflowStep in order to preserve lineage. A workflow step is accepted if it contains a business event, proposed if proposedInstruction is present and is rejected if the rejected flag is set.
type alias WorkflowStep =
    {   timestamp : List EventTimestamp -- The set of timestamp(s) associated with the event as a collection of [dateTime, qualifier].
    }
