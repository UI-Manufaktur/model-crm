module models.crm.sales.orders.close;

@safe:
import uim.entities;

// Activity generated automatically when an order is closed.
class DCRMOrderClose : DOOPEntity {
  mixin(EntityThis!("CRMOrderClose"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "activityId": UUIDAttributeClass, // aplActivity").descriptions(["en":"Unique identifier of the activity."]),
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
        "sentOn": TimestampAttributeClass, //Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttributeClass, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": StringAttributeClass, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttributeClass, //
        "resources": StringAttributeClass, // Users or facility/equipment that are required for the activity."]),
        "community": StringAttributeClass, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttributeClass, //
        "leftVoiceMail": StringAttributeClass, // Left the voice mail"]),
        "deliveryLastAttemptedOn": TimestampAttributeClass, //Date and time when the delivery of the activity was last attempted."]),
        "exchangeItemId": UUIDAttributeClass, // The message id of activity which is returned from Exchange Server."]),
        "exchangeWebLink": StringAttributeClass, // Shows the web link of Activity of type email."]),
        "postponeActivityProcessingUntil": StringAttributeClass, // For internal use only."]),
        "customers": StringAttributeClass, // Customer with which the activity is associated."]),
        "partners": StringAttributeClass, // Outsource vendor with which activity is associated."]),
        "stateCode": StringAttributeClass, // Shows whether the order close activity is open, completed, or canceled. By default, order close activities are completed."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the order close activity."]),
        "statusCode_display": StringAttributeClass, //
        "transactionCurrencyId": CurrencyIdAttributeClass, // Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "traversedPath": StringAttributeClass, // For internal use only."]),
        "processId": UUIDAttributeClass, // Unique identifier of the Process."]),
        "stageId": UUIDAttributeClass, // Unique identifier of the Stage."]),
        "SLAId": UUIDAttributeClass, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "serviceId": UUIDAttributeClass, // Unique identifier of the service with which the order close activity is associated."]),
        "orderNumber": IntegerAttributeClass, //Order number."]),
        "revision": StringAttributeClass, // Order revision number."]),
        "salesOrderId": UUIDAttributeClass, // Unique identifier of the order with which the order close activity is associated."]),
        "salesOrderIdType": StringAttributeClass, // The name of the entity linked by salesOrderId"]),
        "createdByExternalParty": StringAttributeClass, // Shows the external party who created the record."]),
        "modifiedByExternalParty": StringAttributeClass, // Shows the external party who modified the record."]),
      ])
      .registerPath("crm_ordercloses");
  }
}
mixin(EntityCalls!("CRMOrderClose"));

unittest {
  version(test_model_crm) {
    assert(CRMOrderClose);
  
  auto entity = CRMOrderClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}