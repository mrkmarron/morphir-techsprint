module Morphir.TechSprint.Minimal.BasicTypes exposing (..)

--basicType string
--basicType int
--basicType number
--basicType boolean
--basicType time
--
--library function DateRanges() date
--library function Min(x number, y number) number
--library function Max(x number, y number) number
--library function Adjust() date
--library function Within() boolean
--library function IsLeapYear(year number) boolean

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)


type alias Date =
    { day : Int
    , month : Int
    , year : Int
    }


type alias ZonedDateTime =
    { date : LocalDate
    , time : LocalTime
    , timezone : String
    }



--qualifiedType productType {}
--qualifiedType eventType {}
--
--calculationType calculation {}
