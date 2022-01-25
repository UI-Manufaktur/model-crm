module models.crm.projects.service_automation.estimates.estimate;

@safe:
import uim.entities;

// Labor, cost, and revenue estimates for a project.
class DAPLEstimate : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "estimateId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
      "stateCode": OOPAttributeString.descriptions(["en":"Status of the Estimate"]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Reason for the status of the Estimate"]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "estimateHeaderType": OOPAttributeString.descriptions(["en":"Select the type of estimate."]),
      "estimateHeaderType_display": OOPAttributeString.descriptions(["en":""]),
      "project": OOPAttributeString.descriptions(["en":"Select the name of the project."]),
    ]);
  }

  override string entityClass() { return "aplEstimate"; }
  override string entityClasses() { return "aplEstimates"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLEstimate() { return new DAPLEstimate; } 
auto APLEstimate(Json json) { return new DAPLEstimate(json); } 

unittest {
  version(uim_entities) {
    assert(APLEstimate);

  auto entity = APLEstimate;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}