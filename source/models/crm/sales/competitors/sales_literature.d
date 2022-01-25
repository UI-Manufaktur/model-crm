module models.crm.sales.competitors.sales_literature;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DAPLCompetitorSalesLiterature : DOOPEntity {
  this() { super();
    this.attributes([
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "competitorId": OOPAttributeUUID.descriptions(["en":""])
    ]);
  }

  override string entityClass() { return "aplCompetitorSalesLiterature"; }
  override string entityClasses() { return "aplCompetitorSalesLiteratures"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLCompetitorSalesLiterature() { return new DAPLCompetitorSalesLiterature; } 
auto APLCompetitorSalesLiterature(Json json) { return new DAPLCompetitorSalesLiterature(json); } 

unittest {
  version(uim_entities) {
    assert(APLCompetitorSalesLiterature);

  auto entity = APLCompetitorSalesLiterature;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}