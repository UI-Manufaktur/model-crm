module models.crm.sales.competitors.product;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMCompetitorProduct : DOOPEntity {
  mixin(OOPEntityThis!("CRMCompetitorProduct"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "competitorId": OOPUUIDAttribute.descriptions(["en":""]),
        "productId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("crm_competitorproducts");
  }
}
mixin(OOPEntityCalls!("CRMCompetitorProduct"));

unittest {
  version(uim_entities) {
    assert(CRMCompetitorProduct);

  auto entity = CRMCompetitorProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}