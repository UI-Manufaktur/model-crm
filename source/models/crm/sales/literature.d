module models.crm.sales.literature;

@safe:
import uim.entities;

// Storage of sales literature, which may contain one or more documents.
class DAPLSalesLiterature : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "employeeContactId": OOPAttributeLink("aplContact").descriptions(["en":"Choose the user who is responsible for maintaining or updating the sales literature."]),
      "expirationDate": OOPAttributeDate.descriptions(["en":"Enter the expiration date or last day the sales literature can be distributed."]),
      "hasAttachments": OOPAttributeString.descriptions(["en":"Tells whether the sales literature has one or more attachments."]),
      "isCustomerViewable": OOPAttributeBoolean.descriptions(["en":"Select whether the sales literature can be distributed to prospects and customers or is for internal use only."]),
      "keyWords": OOPAttributeString.descriptions(["en":"Type one or more topics or keywords that can be used to search for the sales literature."]),
      "literatureTypeCode": OOPAttributeString.descriptions(["en":"Select a category or type to help others identify the intended use of the sales literature."]),
      "literatureTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "subjectId": OOPAttributeUUID.descriptions(["en":"Choose the subject for the sales literature to relate the item to a product or business group. Administrators can configure subjects under Business Management in the Settings area."]),
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
    ]);
  }

  override string entityClass() { return "aplSalesLiterature"; }
  override string entityClasses() { return "aplSalesLiteratures"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));

}
auto APLSalesLiterature() { return new DAPLSalesLiterature; } 
auto APLSalesLiterature(Json json) { return new DAPLSalesLiterature(json); } 

unittest {
  version(uim_entities) {
    assert(APLSalesLiterature);
  
  auto entity = APLSalesLiterature;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}