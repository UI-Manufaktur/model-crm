module models.crm.sales.opportunities.close;

@safe:
import uim.entities;

// Activity that is created automatically when an opportunity is closed, containing information such as the description of the closing and actual revenue.
class DCRMOpportunityClose : DOOPEntity {
  mixin(EntityThis!("CRMOpportunityClose"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": StringAttributeClass, // Type of activity."]),
        "isBilled": BooleanAttributeClass, // Information regarding whether the fax activity was billed as part of resolving a case."]),
        "isRegularActivity": BooleanAttributeClass, // Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": BooleanAttributeClass, // Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": StringAttributeClass, // Priority of the activity."]),
        "priorityCode_display": StringAttributeClass, //
        "regardingObjectId": UUIDAttributeClass, // Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": StringAttributeClass, // The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": StringAttributeClass, // Scheduled end time of the activity."]),
        "scheduledStart": StringAttributeClass, // Scheduled start time of the activity."]),
        "sortDate": DateAttributeClass, // Shows the date and time by which the activities are sorted."]),
        "subject": StringAttributeClass, // Subject associated with the activity."]),
        "scheduledDurationMinutes": StringAttributeClass, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttributeClass, // Actual duration of the activity in minutes."]),
        "actualEnd": StringAttributeClass, // Actual end time of the activity."]),
        "actualStart": StringAttributeClass, // Actual start time of the activity."]),
        "category": StringAttributeClass, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": StringAttributeClass, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": StringAttributeClass, // Additional information provided by the external application as JSON. For internal use only."]),
        "to": StringAttributeClass, // Person who is the receiver of the activity."]),
        "from": StringAttributeClass, // Person who the activity is from."]),
        "instanceTypeCode": StringAttributeClass, // Type of instance of a recurring series."]),
        "instanceTypeCode_display": StringAttributeClass, //
        "isMapiPrivate": BooleanAttributeClass, // For internal use only."]),
        "organizer": StringAttributeClass, // The user who is in charge of coordinating or leading the activity."]),
        "requiredAttendees": StringAttributeClass, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
        "optionalAttendees": StringAttributeClass, // Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
        "seriesId": UUIDAttributeClass, // Uniqueidentifier specifying the id of recurring series of an instance."]),
        "BCC": StringAttributeClass, // Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
        "CC": StringAttributeClass, // Enter the recipients that should be copied on the letter."]),
        "sentOn": OOPTimestampAttribute.descriptions(["en":"Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttributeClass, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": StringAttributeClass, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttributeClass, //
        "resources": StringAttributeClass, // Users or facility/equipment that are required for the activity."]),
        "community": StringAttributeClass, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttributeClass, //
        "leftVoiceMail": StringAttributeClass, // Left the voice mail"]),
        "deliveryLastAttemptedOn": OOPTimestampAttribute.descriptions(["en":"Date and time when the delivery of the activity was last attempted."]),
        "exchangeItemId": UUIDAttributeClass, // The message id of activity which is returned from Exchange Server."]),
        "exchangeWebLink": StringAttributeClass, // Shows the web link of Activity of type email."]),
        "postponeActivityProcessingUntil": StringAttributeClass, // For internal use only."]),
        "customers": StringAttributeClass, // Customer with which the activity is associated."]),
        "partners": StringAttributeClass, // Outsource vendor with which activity is associated."]),
        "stateCode": StringAttributeClass, // Shows whether the opportunity close activity is open, completed, or canceled. By default, opportunity close activities are completed unless the opportunity is reactivated, which updates them to canceled."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the opportunity close activity."]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "traversedPath": StringAttributeClass, // For internal use only."]),
        "processId": UUIDAttributeClass, // Unique identifier of the Process."]),
        "stageId": UUIDAttributeClass, // Unique identifier of the Stage."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "serviceId": UUIDAttributeClass, // Unique identifier of the service with which the opportunity close activity is associated."]),
        "actualRevenue": StringAttributeClass, // Actual revenue generated for the opportunity."]),
        "actualRevenueBase": StringAttributeClass, // Value of the Actual Revenue in base currency."]),
        "competitorId": UUIDAttributeClass, // Unique identifier of the competitor with which the opportunity close activity is associated."]),
        "opportunityId": UUIDAttributeClass, // Unique identifier of the opportunity closed."]),
        "opportunityIdType": StringAttributeClass, // The name of the entity linked by opportunityId"]),
        "createdByExternalParty": StringAttributeClass, // Shows the external party who created the record."]),
        "modifiedByExternalParty": StringAttributeClass, // Shows the external party who modified the record."]),
      ])
      .registerPath("crm_opportunitycloses");
  }
}
mixin(EntityCalls!("CRMOpportunityClose"));

unittest {
  version(test_model_crm) {
    assert(CRMOpportunityClose);
  
  auto entity = CRMOpportunityClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}