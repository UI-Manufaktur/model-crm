module models.crm.projects.service_automation.transactions.categories.classification;

@safe:
import uim.entities;

// Entity used to associate a category broadly as time, expense or material.
class DCRMTransactionCategoryClassificationEntity : DOOPEntity {
  mixin(EntityThis!("CRMTransactionCategoryClassificationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": StringAttributeClass, // Status of the Transaction Category Classification"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Transaction Category Classification"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "transactionCategory": StringAttributeClass, //
        "transactionClassification": StringAttributeClass, //
        "transactionClassification_display": StringAttributeClass, //
      ])
      .registerPath("crm_transactioncategoryclassifications");
  }
}
mixin(EntityCalls!("CRMTransactionCategoryClassificationEntity"));

unittest {
  version(test_model_crm) {
    assert(CRMTransactionCategoryClassificationEntity);

  auto entity = CRMTransactionCategoryClassificationEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}