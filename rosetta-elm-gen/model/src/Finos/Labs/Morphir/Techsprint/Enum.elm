
module Finos.Labs.Morphir.Techsprint.Enum exposing (..)


-- This file is auto-generated from the ISDA Common Domain Model, do not edit.
-- Version: ${project.version}


  -- The enumerated values to specify the type of organisation involved in the transaction.
type CategoryEnum
    =   Agent
    |   Counterparty
    |   Customer
    |   Principal

  -- Enumeration of the values specifying clearing exceptions and exemptions.
type ClearingExceptionReasonEnum
    =   ENDU
    |   AFFL
    |   SMBK
    |   COOP
    |   NOAL
    |   OTHR

  -- Specifies arrangements being made to provide credit.
type CreditDocumentEnum
    =   CreditSupportAgreement
    |   Guaranty
    |   OtherFinancing
    |   PledgeOfCollateral
    |   RelianceOnAvailableFinancing

  -- The enumeration values to qualify the timestamps that can be associated with a lifecycle event. The reason for such approach is that the experience of integrating the DTCC and CME data representations suggests that a wide set of timestamps are currently utilized among service providers, while there is not at present an objective set of criteria that could help suggest a defined set of timestamps as part of the CDM. Implementers are expected to evaluate the current enumeration values to determine whether those meet their requirements. If not, they are expected to engage with the CDM team to evaluate the addition of further value(s) to this enumeration, which will then participate to the development of a compendium for further evaluation at a later point in order to determine whether this modeling is appropriate.
type EventTimestampQualificationEnum
    =   ClearingDateTime
    |   ClearingConfirmationDateTime
    |   ClearingSubmissionDateTime
    |   EventCreationDateTime
    |   EventExpirationDateTime
    |   EventProcessingDateTime
    |   EventSentDateTime
    |   EventSubmittedDateTime
    |   ExecutionDateTime
    |   TransactionCreationDateTime

  -- Enumeration representing the type of venue where a trade could be executed.
type ExecutionVenueTypeEnum
    =   DCM
    |   ETP
    |   MTF
    |   OffFacility
    |   OTF
    |   SEF

  -- EMIR Taxonomy for Financial Counterparties
type FinancialSectorEnum
    =   INVF
    |   CDTI
    |   INUN
    |   UCIT
    |   ORPI
    |   AIFD
    |   CSDS

  -- The enumerated values to specify the law governing the contract or legal document.
type GoverningLawEnum
    =   AsSpecifiedInMasterAgreement
    |   BE
    |   CAAB
    |   CABC
    |   CAMN
    |   CAON
    |   CAQC
    |   DE
    |   FR
    |   GBEN
    |   GBGY
    |   GBIM
    |   GBJY
    |   GBSC
    |   IE
    |   JP
    |   LU
    |   RelatedMasterAgreement
    |   USCA
    |   USDE
    |   USIL
    |   USNY

  -- The enumerated values for the natural person's role.
type NaturalPersonRoleEnum
    =   Broker
    |   Buyer
    |   DecisionMaker
    |   ExecutionWithinFirm
    |   InvestmentDecisionMaker
    |   Seller
    |   Trader

  -- EMIR Nature of the counterparty taxonomy
type NatureOfPartyEnum
    =   F
    |   N
    |   C
    |   O

  -- Taxonomy for Non-Financial Counterparties.
type NonFinancialSectorEnum
    =   A
    |   B
    |   C
    |   D
    |   Ee
    |   F
    |   G
    |   H
    |   I
    |   J
    |   K
    |   L
    |   M
    |   N
    |   O
    |   P
    |   Q
    |   R
    |   S
    |   T
    |   U

  -- Specifies the categories or characteristics that apply to an organization which allow it to apply for an end-user exception determination.
type OrganizationCharacteristicEnum
    =   CaptiveFinanceUnit
    |   FinancialEntity

  -- The enumerated values for the party role. The enumerated values go beyond the FpML partyRoleScheme as they also include elements that are part of the FpML Trade, such as the Barrier Determination Agent and the Hedging Party.
type PartyRoleEnum
    =   Accountant
    |   AgentLender
    |   AllocationAgent
    |   ArrangingBroker
    |   BarrierDeterminationAgent
    |   Beneficiary
    |   BookingParty
    |   Buyer
    |   BuyerDecisionMaker
    |   Chargor
    |   ClearingClient
    |   ClearingExceptionParty
    |   ClearingFirm
    |   ClearingOrganization
    |   Client
    |   ClientDecisionMaker
    |   ConfirmationPlatform
    |   ContractualParty
    |   CounterPartyAffiliate
    |   CounterPartyUltimateParent
    |   Counterparty
    |   CreditSupportProvider
    |   Custodian
    |   DataSubmitter
    |   DeterminingParty
    |   DisputingParty
    |   DocumentRepository
    |   ExecutingBroker
    |   ExecutingEntity
    |   ExecutionAgent
    |   ExecutionFacility
    |   Guarantor
    |   HedgingParty
    |   OrderTransmitter
    |   Pledgor
    |   PrimeBroker
    |   PriorTradeRepository
    |   PublicationVenue
    |   ReportingParty
    |   ReportingPartyAffiliate
    |   ReportingPartyUltimateParent
    |   Seller
    |   SellerDecisionMaker
    |   SecuredParty
    |   SettlementAgent
    |   TradeRepository
    |   TradeSource
    |   TradingManager
    |   TradingPartner

  -- Enumeration of the regulation used for regulatory reporting, for example CFTC_PART43, CFTC_PART45, CSA_2013, etc..
type RegimeNameEnum
    =   ASIC
    |   CA_Rule_91_507
    |   DoddFrankAct
    |   EMIR
    |   HKTR
    |   JFSA
    |   MAS
    |   MiFID
    |   MiFIDII
    |   MiFIR
    |   ODRF
    |   RussianFederation

  -- Enumeration of the role of a party in a report.  Used to clarify which participant's information is being reported.
type ReportingRoleEnum
    =   Agent
    |   Counterparty
    |   FullyDelegated
    |   Independent
    |   PartiallyDelegated
    |   Principal
    |   ReportingParty
    |   VoluntaryParty

  -- Specifies the entity classification of a party under the U.S. Securities and Exchange Commission (SEC).
type SECEntityClassificationEnum
    =   CA
    |   MSBSP
    |   Non_SBSD_MSBSP
    |   Participant
    |   SBSD

  -- Enumeration of the supervisory body that may be supervising this transaction.
type SupervisoryBodyEnum
    =   ASIC
    |   BankOfRussia
    |   CA_AB_ASC
    |   CA_BC_BCSC
    |   CA_MB_MSC
    |   CA_NB_FCSC
    |   CA_NL_DSS
    |   CA_NS_NSSC
    |   CA_NT_NTSO
    |   CA_NU_NSO
    |   CA_ON_OSC
    |   CA_PEI_OSS
    |   CA_QC_AMF
    |   CA_SK_FCAA
    |   CA_YT_OSS
    |   CFTC
    |   ESMA
    |   Fed
    |   HKMA
    |   JFSA
    |   MAS
    |   ODRF
    |   SEC
    |   UKFSA

  -- Defines the enumerated values to specify the nature of a trade identifier.
type TradeIdentifierTypeEnum
    =   UniqueTransactionIdentifier
    |   UniqueSwapIdentifier

  -- Specifies the categories or characteristics that apply to a transaction which allow application of an end-user exception determination.
type TransactionCharacteristicEnum
    =   BoardOfDirectorsApproval
    |   HedgesFinancialRisk

