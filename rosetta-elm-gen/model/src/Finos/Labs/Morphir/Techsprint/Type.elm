
module Finos.Labs.Morphir.Techsprint.Type exposing (..)

import Morphir.SDK.LocalDate exposing (LocalDate)
import Morphir.SDK.LocalTime exposing (LocalTime)
import Com.Rosetta.Model.Type exposing (ZonedDateTime)
import Com.Rosetta.Model.Type exposing (Date)

import Finos.Labs.Morphir.Techsprint.Enum exposing (EventTimestampQualificationEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (TradeIdentifierTypeEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (PartyRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ExecutionVenueTypeEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (RegimeNameEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (SupervisoryBodyEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ReportingRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (PartyRoleEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (ClearingExceptionReasonEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (CreditDocumentEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (OrganizationCharacteristicEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (TransactionCharacteristicEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NatureOfPartyEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (FinancialSectorEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NonFinancialSectorEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (SECEntityClassificationEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (GoverningLawEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (CategoryEnum)
import Finos.Labs.Morphir.Techsprint.Enum exposing (NaturalPersonRoleEnum)


-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}


  -- A class to specify the identifier value and its associated version.
type alias AssignedIdentifier =
    {   identifier : String -- The identifier value.
    ,   identifierType : Maybe TradeIdentifierTypeEnum -- The enumerated classification of the identifier.
    ,   version : Maybe Int -- The identifier version, which is specified as an integer and is meant to be incremented each time the transaction terms (whether contract or event) change. This version is made option to support the use case where the identifier is referenced without the version. The constraint that a contract and a lifecycle event need to have an associated version is enforced through data rules.
    }
  -- A business event represents a life cycle event of a trade and consists of a series of primitive events. The combination of the state changes results in a qualifiable life cycle event. An example of a Business Event is a PartialTermination which is a defined by a quantity change primitive event.
type alias BusinessEvent =
    {   eventQualifier : Maybe String -- The CDM event qualifier, which corresponds to the outcome of the isEvent qualification logic which qualifies the lifecycle event as a function of its features (e.g. PartialTermination, ClearingSubmission, Novation, ...).
    ,   instruction : List Instruction -- Specifies the instructions that were used to create the Business Event.
    ,   after : List TradeState -- Specifies the after trade state(s) created.
    }
type alias CFTCPart45TransactionReport =
    {   tradeDate : LocalDate 
    ,   eventTimestamp : ZonedDateTime 
    ,   cleared : String 
    ,   centralCounterparty : Maybe String 
    ,   clearingAccountOrigin : Maybe String 
    ,   clearingMember : Maybe String 
    ,   clearingSwapUSIs : Maybe String 
    ,   clearingSwapUTIs : Maybe String 
    ,   originalSwapUSI : Maybe String 
    ,   originalSwapUTI : Maybe String 
    ,   originalSwapSDRIdentifier : Maybe String 
    ,   clearingReceiptTimestamp : Maybe ZonedDateTime 
    ,   clearingExceptionsAndExemptionsCounterparty1 : Maybe String 
    ,   clearingExceptionsAndExemptionsCounterparty2 : Maybe String 
    ,   counterparty1 : String 
    ,   counterparty2 : String 
    ,   counterparty2IdentifierSource : String 
    ,   counterparty1FinancialEntityIndicator : Maybe Bool 
    ,   counterparty2FinancialEntityIndicator : Bool 
    ,   buyerIdentifier : Maybe String 
    ,   sellerIdentifier : Maybe String 
    ,   payerIdentifierLeg1 : Maybe String 
    ,   payerIdentifierLeg2 : Maybe String 
    ,   receiverIdentifierLeg1 : Maybe String 
    ,   receiverIdentifierLeg2 : Maybe String 
    ,   submitterIdentifier : String 
    ,   counterparty1FederalEntityIndicator : Bool 
    ,   counterparty2FederalEntityIndicator : Bool 
    ,   customBasketIndicator : Bool 
    ,   actionType : String 
    ,   eventType : String 
    ,   amendmentIndicator : Maybe String 
    ,   eventIdentifier : Maybe String 
    ,   notionalAmountLeg1 : Maybe Float 
    ,   notionalAmountLeg2 : Maybe Float 
    ,   notionalCurrencyLeg1 : Maybe String 
    ,   notionalCurrencyLeg2 : Maybe String 
    ,   callAmount : Maybe Float 
    ,   callCurrency : Maybe String 
    ,   putAmount : Maybe Float 
    ,   putCurrency : Maybe String 
    ,   notionalQuantityLeg1 : Maybe Float 
    ,   notionalQuantityLeg2 : Maybe Float 
    ,   quantityFrequencyLeg1 : Maybe String 
    ,   quantityFrequencyLeg2 : Maybe String 
    ,   quantityFrequencyMultiplierLeg1 : Maybe Int 
    ,   quantityFrequencyMultiplierLeg2 : Maybe Int 
    ,   quantityUnitOfMeasureLeg1 : Maybe String 
    ,   quantityUnitOfMeasureLeg2 : Maybe String 
    ,   totalNotionalQuantityLeg1 : Maybe Float 
    ,   totalNotionalQuantityLeg2 : Maybe Float 
    ,   packageIndicator : Bool 
    ,   packageIdentifier : Maybe String 
    ,   fixedRateDayCountConventionLeg1 : Maybe String 
    ,   fixedRateDayCountConventionLeg2 : Maybe String 
    ,   floatingRateDayCountConventionLeg1 : Maybe String 
    ,   floatingRateDayCountConventionLeg2 : Maybe String 
    ,   fixingDateLeg1 : Maybe LocalDate 
    ,   fixingDateLeg2 : Maybe LocalDate 
    ,   floatingRateResetFrequencyPeriodLeg1 : Maybe String 
    ,   floatingRateResetFrequencyPeriodLeg2 : Maybe String 
    ,   floatingRateResetFrequencyPeriodMultiplierLeg1 : Maybe Int 
    ,   floatingRateResetFrequencyPeriodMultiplierLeg2 : Maybe Int 
    ,   fixedRatePaymentFrequencyPeriodLeg1 : Maybe String 
    ,   fixedRatePaymentFrequencyPeriodLeg2 : Maybe String 
    ,   floatingRatePaymentFrequencyPeriodLeg1 : Maybe String 
    ,   floatingRatePaymentFrequencyPeriodLeg2 : Maybe String 
    ,   fixedRatePaymentFrequencyPeriodMultiplerLeg1 : Maybe Int 
    ,   fixedRatePaymentFrequencyPeriodMultiplerLeg2 : Maybe Int 
    ,   floatingRatePaymentFrequencyPeriodMultiplerLeg1 : Maybe Int 
    ,   floatingRatePaymentFrequencyPeriodMultiplerLeg2 : Maybe Int 
    ,   exchangeRateLeg1 : Maybe Float 
    ,   exchangeRateBasis : Maybe String 
    ,   fixedRateLeg1 : Maybe Float 
    ,   fixedRateLeg2 : Maybe Float 
    ,   postPricedSwapIndicator : Bool 
    ,   price : Maybe Float 
    ,   priceCurrency : Maybe String 
    ,   priceNotation : Maybe String 
    ,   priceUnitOfMeasure : Maybe String 
    ,   spreadLeg1 : Maybe Float 
    ,   spreadLeg2 : Maybe Float 
    ,   spreadCurrencyLeg1 : Maybe String 
    ,   spreadCurrencyLeg2 : Maybe String 
    ,   spreadNotationLeg1 : Maybe String 
    ,   spreadNotationLeg2 : Maybe String 
    ,   strikePrice : Maybe Float 
    ,   strikePriceCurrency : Maybe String 
    ,   strikePriceNotation : Maybe String 
    ,   optionPremiumAmount : Maybe Float 
    ,   optionPremiumCurrency : Maybe String 
    ,   optionPremiumPaymentDate : Maybe LocalDate 
    ,   firstExerciseDate : Maybe LocalDate 
    ,   cDSIndexAttachmentPoint : Maybe Float 
    ,   cDSIndexDetachmentPoint : Maybe Float 
    ,   indexFactor : Maybe Float 
    ,   embeddedOptionType : Maybe String 
    ,   uniqueProductIdentifier : Maybe String 
    ,   finalContractualSettlementDate : LocalDate 
    ,   settlementCurrencyLeg1 : Maybe String 
    ,   settlementCurrencyLeg2 : Maybe String 
    ,   settlementLocationLeg1 : Maybe String 
    ,   settlementLocationLeg2 : Maybe String 
    ,   allocationIndicator : String 
    ,   nonStandardizedTermIndicator : Maybe String 
    ,   blockTradeElectionIndicator : Bool 
    ,   effectiveDate : LocalDate 
    ,   expirationDate : LocalDate 
    ,   executionTimestamp : ZonedDateTime 
    ,   reportingTimestamp : ZonedDateTime 
    ,   platformIdentifier : Maybe String 
    ,   primeBrokerageTransactionIndicator : Maybe Bool 
    ,   priorUSI : Maybe String 
    ,   priorUTI : Maybe String 
    ,   uniqueSwapIdentifier : Maybe String 
    ,   uniqueTransactionIdentifier : Maybe String 
    ,   jurisdiction : String 
    ,   newSDRIdentifier : Maybe String 
    ,   initialMarginCollateralPortfolioCode : String 
    ,   variationMarginCollateralPortfolioCode : String 
    }
  -- Enriched party information required for reporting a transaction to the CFTC.
type alias CFTCPartyInformation =
    {   federalIndicator : Bool -- Indicator of whether counterparty is a federal entity.
    ,   financialIndicator : Bool -- Indicator of whether counterparty is a financial entity.
    ,   clearingException : Maybe ClearingException -- Identifies the type of clearing exception or exemption that the counterparty has elected.
    ,   postPricedIndicator : Maybe Bool -- Indication of whether the transaction satisfies the definition of 'post-priced swap'.
    }
  -- Specifies information related to clearing exceptions or exemptions that are applied to the trade.
type alias ClearingException =
    {   clearingException : Maybe Bool -- Indication of whether an exception from normal clearing mandates is being applied caused by the type of the parties or their relationship, such as inter-affiliate trades.
    ,   clearingExceptionReason : Maybe ClearingExceptionReasonEnum -- Identifies the type of clearing exception or exemption that the counterparty has elected.
    ,   clearingExceptionDeclaration : Maybe ClearingExceptionDeclaration -- Specifies supporting evidence when claiming an end user exception.
    }
  -- Specifies supporting evidence when claiming an end user exception.
type alias ClearingExceptionDeclaration =
    {   creditDocument : List CreditDocumentEnum -- Specifies arrangements being made to provide credit.
    ,   organizationCharacteristic : List OrganizationCharacteristicEnum -- Specifies the categories or characteristics that apply to an organization which allow it to apply for an end-user exception determination.
    ,   transactionCharacteristic : List TransactionCharacteristicEnum -- Specifies the categories or characteristics that apply to a transaction which allow application of an end-user exception determination.
    }
  -- Defines specific attributes that relate to contractual details of trades.
type alias ContractDetails =
    {   governingLaw : Maybe GoverningLawEnum -- Represents the law governing the trade and associated contractual product terms.
    ,   partyContractInformation : List PartyContractInformation -- Represents additional contractual information provided by each involved party.
    }
  -- Specifies the corporate sector of the counterparty.
type alias CorporateSector =
    {   financialSector : Maybe FinancialSectorEnum -- Specifies the ESMA EMIR Financial Sector of a counterparty.
    ,   nonFinancialSector : List NonFinancialSector -- Specifies the ESMA EMIR Non Financial Sector of a counterparty.
    }
  -- Enriched party information required for reporting a transaction under ESMA EMIR.
type alias ESMAPartyInformation =
    {   natureOfParty : NatureOfPartyEnum -- Specifies the nature of the counterparty.
    ,   corporateSector : Maybe CorporateSector -- Specifies the corporate sector of the counterparty.
    }
  -- A class to represent the various set of timestamps that can be associated with lifecycle events, as a collection of [dateTime, qualifier].
type alias EventTimestamp =
    {   dateTime : ZonedDateTime -- The CDM specifies that the zoned date time is to be expressed in accordance with ISO 8601, either as UTC as an offset to UTC.
    ,   qualification : EventTimestampQualificationEnum -- The timestamp qualifier is specified through an enumeration because the experience of integrating the DTCC and CME data representations suggests that a wide set of timestamps are currently utilized among service providers, while there is not at present an objective set of criteria that could help suggest a defined set of timestamps as part of the CDM. At some future point, one possible baseline could be developed from the review of the set of timestamps specified across regulatory regimes and regulations (incl. regulations such as high frequency trading). Also, the integration with a further set of implementations and the specification of business workflows such as clearing as part of the CDM development should help confirm the implementation approach in this respect.
    }
  -- A class to specify a generic identifier, applicable to CDM artefacts such as executions, contracts, lifecycle events and legal documents. An issuer can be associated with the actual identifier value as a way to properly qualify it.
type alias Identifier =
    {   issuerReference : Maybe Party -- The identifier issuer, when specified by reference to a party specified as part of the transaction.
    ,   issuer : Maybe String -- The identifier issuer, when specified explicitly alongside the identifier value (instead of being specified by reference to a party).
    ,   assignedIdentifier : List AssignedIdentifier -- The identifier value. This level of indirection between the issuer and the identifier and its version provides the ability to associate multiple identifiers to one issuer, consistently with the FpML PartyTradeIdentifier.
    }
  -- Instruction to a function that will be used to perform a business event
type alias Instruction =
    {   primitiveInstruction : Maybe PrimitiveInstruction -- Specifies the primitive instructions that will be used to call primitive event functions.
    ,   before : Maybe TradeState -- Specifies the trade state that will be acted on by the primitive event functions.
    }
  -- This class corresponds to the components of the FpML MessageHeader.model.
type alias MessageInformation =
    {   messageId : String -- A unique identifier assigned to the message.
    ,   sentBy : Maybe String -- The identifier for the originator of a message instance.
    ,   sentTo : List String -- The identifier(s) for the recipient(s) of a message instance.
    ,   copyTo : List String -- A unique identifier (within the specified coding scheme) giving the details of some party to whom a copy of this message will be sent for reference.
    }
  -- A class to represent the attributes that are specific to a natural person.
type alias NaturalPerson =
    {   personId : List String -- The identifier associated with a person, e.g. the internal identification code.
    ,   honorific : Maybe String -- An honorific title, such as Mr., Ms., Dr. etc.
    ,   firstName : Maybe String -- The natural person's first name. It is optional in FpML.
    ,   middleName : List String -- The natural person's middle name(s). If a middle name is provided then an initial should be absent.
    ,   initial : List String -- The natural person's middle initial(s). If a middle initial is provided then a name should be absent.
    ,   surname : Maybe String -- The natural person's surname.
    ,   suffix : Maybe String -- Name suffix, such as Jr., III, etc.
    ,   dateOfBirth : Maybe LocalDate -- The natural person's date of birth.
    }
  -- A class to specify the role(s) that natural person(s) may have in relation to the contract.
type alias NaturalPersonRole =
    {   personReference : NaturalPerson -- A reference to the natural person to whom the role refers to.
    ,   role : List NaturalPersonRoleEnum -- FpML specifies a person role that is distinct from the party role.
    }
  -- Specifies the ESMA Non Financial Sector of a counterparty and the ordinality of the relative importance of the corresponding activity.
type alias NonFinancialSector =
    {   ordinal : Int 
    ,   nonFinancialSectorIndicator : NonFinancialSectorEnum 
    }
  -- A class to specify a party, without a qualification as to whether this party is a legal entity or a natural person, although the model provides the ability to associate a person (or set of persons) to a party, which use case would imply that such party would be a legal entity (even if not formally specified as such). 
type alias Party =
    {   partyId : List String -- The identifier associated with a party, e.g. the 20 digits LEI code.
    ,   name : Maybe String -- The party name.
    ,   person : List NaturalPerson -- The person(s) who might be associated with the party as part of the execution, contract or legal document.
    }
  -- A class defining party-specific additional information that may be recorded with respect to a contract.
type alias PartyContractInformation =
    {   partyReference : Party -- The reference to the party that owns this party contract information or, in the case of shared trades information, the reference that originated such information.
    ,   naturalPersonRole : List NaturalPersonRole -- The role(s) that natural person(s) may have in relation to the contract.
    ,   relatedParty : List RelatedParty 
    ,   category : Maybe CategoryEnum -- The qualification of the trade by the counterparty, e.g. customer or principal. This information is relevant for a number of marketplace processes, such as regulatory reporting or clearing.
    }
  -- Specifies party specific information required for reporting of the transaction
type alias PartyInformation =
    {   partyReference : Party -- Specifies the party that is associated with the enriched information.
    ,   relatedParty : List RelatedParty -- Specifies one or more parties that perform a role within the transaction. The related party performs the role with respect to the party identified by the 'partyReference'.
    ,   reportingRole : Maybe ReportingRoleEnum -- Identifies the role of this party in reporting this trade (e.g. originator, counterparty).
    ,   cftcPartyInformation : Maybe CFTCPartyInformation -- Party information required for reporting a transaction to the CFTC.
    ,   esmaPartyInformation : Maybe ESMAPartyInformation -- Party information required for reporting a transaction under ESMA.
    ,   secPartyInformation : Maybe SECPartyInformation -- Party information required for reporting a transaction under SEC.
    }
  -- A class to specify the role(s) that party(ies) may have in relation to the execution, contract or other legal agreement.
type alias PartyRole =
    {   partyReference : Party -- A reference to the party to which the role refers to.
    ,   role : PartyRoleEnum -- The party role.
    ,   ownershipPartyReference : Maybe Party -- A reference to the party that has ownership of this party role information. FpML specifies that For shared trade information, this attribute will reference the originator of the data (for example, an execution facility or clearing house).
    }
  -- A Primitive Instruction describes the inputs required to pass into the corresponding PrimitiveEvent function.
type alias PrimitiveInstruction =
    }
  -- Specifies the regulatory regime requiring reporting of the transaction.
type alias RegulatorApplicability =
    {   regimeName : RegimeNameEnum -- Identifies the reporting regime under which this data is reported. For example, Dodd-Frank, MiFID, HongKongOTCDRepository, ODRF
    ,   supervisoryBody : Maybe SupervisoryBodyEnum -- Identifies the specific regulator or other supervisory body for which this data is produced. For example, CFTC, SEC, UKFSA, ODRF, SFC, ESMA.
    }
type alias RelatedParty =
    {   partyReference : Party -- Reference to a party.
    ,   role : PartyRoleEnum -- The category of the relationship. The related party performs the role specified in this field for the base party. For example, if the role is ,Guarantor, the related party acts as a guarantor for the base party.
    }
  -- Specifies a workflowstep with enriched information required for reporting.
type alias ReportableEvent =
    {   originatingWorkflowStep : WorkflowStep -- The workflowstep that originated the reportable event.
    ,   reportableTrade : Maybe TradeState -- The reportable trade decomposed from the originating workflow step when required.
    ,   reportableInformation : List ReportableInformation -- Additional information required for a reportable transaction, including the reporting regime. A list of reportable information is provided when an event is reportable to more than one regime.
    }
  -- Specifies the relevant regulators or other supervisory bodies the transaction is relevant for, and regime specific information required relating to the transaction and the parties.
type alias ReportableInformation =
    {   blockTradeIndicator : Maybe Bool -- Indicator of whether an election has been made to report the swap transaction as a block transaction by the reporting counterparty.
    ,   executionVenueType : ExecutionVenueTypeEnum -- Specifies the type of venue where a trade could be executed.
    ,   mandatorilyClearable : Bool -- Indicator of whether the transaction is mandatorily clearable.
    ,   partyInformation : List PartyInformation -- Specifies party specific information required for reporting of the transaction
    ,   regulatorApplicability : RegulatorApplicability -- Specifies the regulatory regime requiring reporting of the transaction.
    }
  -- Enriched party information required for reporting a transaction to the CFTC.
type alias SECPartyInformation =
    {   entityClassification : SECEntityClassificationEnum -- Specifies the entity classification of a party under the U.S. Securities and Exchange Commission (SEC).
    }
  -- Defines the output of a financial transaction between parties - a Business Event. A Trade impacts the financial position (i.e. the balance sheet) of involved parties.
type alias Trade =
    {   tradeIdentifier : List Identifier -- Represents the identifier(s) that uniquely identify a trade for an identity issuer. A trade can include multiple identifiers, for example a trade that is reportable to both the CFTC and ESMA, and then has an associated USI (Unique Swap Identifier) UTI (Unique Trade Identifier).
    ,   tradeDate : LocalDate -- Specifies the date which the trade was agreed.
    ,   party : List Party -- Represents the parties to the trade. The cardinality is optional to address the case where the trade is defined within a BusinessEvent data type, in which case the party is specified in BusinessEvent.
    ,   partyRole : List PartyRole -- Represents the role each specified party takes in the trade. further to the principal roles, payer and receiver.
    ,   contractDetails : Maybe ContractDetails -- Represents information specific to trades involving contractual products.
    }
  -- Defines the fundamental financial information that can be changed by a Primitive Event and by extension any business or life-cycle event. Each TradeState specifies where a Trade is in its life-cycle. TradeState is a root type and as such, can be created independently to any other CDM data type, but can also be used as part of the CDM Event Model.
type alias TradeState =
    {   trade : Trade -- Represents the Trade that has been effected by a business or life-cycle event.
    }
  -- A workflow step represents the state of a business event. The workflow step contains a reference to a previous WorkflowStep in order to preserve lineage. A workflow step is accepted if it contains a business event, proposed if proposedInstruction is present and is rejected if the rejected flag is set.
type alias WorkflowStep =
    {   businessEvent : Maybe BusinessEvent -- Life cycle event for the step. The businessEvent is optional when a proposedInstruction or rejection are present.
    ,   messageInformation : Maybe MessageInformation -- Contains all information pertaining the FpML messaging header 
    ,   timestamp : List EventTimestamp -- The set of timestamp(s) associated with the event as a collection of [dateTime, qualifier].
    ,   eventIdentifier : List Identifier -- The identifier(s) that uniquely identify a lifecycle event. The unbounded cardinality is meant to provide the ability to associate identifiers that are issued by distinct parties. As an example, each of the parties to the event may choose to associate their own identifiers to the event.
    ,   party : List Party -- The specification of the event parties. This attribute is optional, as not applicable to certain events (e.g. most of the observations).
    }
