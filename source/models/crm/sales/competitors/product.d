module models.crm.sales.competitors.product;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMCompetitorProduct : DOOPEntity {
  mixin(EntityThis!("CRMCompetitorProduct"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttribute, //
        "productId": UUIDAttribute, //
      ])
      .registerPath("crm_competitorproducts");
  }
}
mixin(EntityCalls!("CRMCompetitorProduct"));

unittest {
  version(test_model_crm) {
    assert(CRMCompetitorProduct);

  auto entity = CRMCompetitorProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}