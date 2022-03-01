module models.crm.sales.opportunities.relationship;

@safe:
import uim.entities;

// Association between a competitor and a product offered by the competitor.
class DCRMOpportunityRelationship : DOOPEntity {
  mixin(OOPEntityThis!("CRMOpportunityRelationship"));

  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "customerOpportunityRoleId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the opportunity relationship."]),
        "customerId": OOPUUIDAttribute.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType":OOPStringAttribute.descriptions(["en":"The type of customer, either Account or Contact."]),
        "opportunityId": OOPUUIDAttribute.descriptions(["en":"Choose the opportunity that the specified account or contact is related to. The opportunity relationship will be displayed in the Relationships view on the selected opportunity."]),
        "opportunityRoleId": OOPUUIDAttribute.descriptions(["en":"Choose the role or nature of the relationship that the customer has with the opportunity. The field is read-only until a customer has been selected. Administrators can configure role values under Business Management in the Settings area."]),
        "opportunityStateCode": OOPStringAttribute.descriptions(["en":"Status of the opportunity."]),
        "opportunityStatusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the opportunity."]),
      ])
      .registerPath("crm_opportunityrelationships");
  }
}
mixin(OOPEntityCalls!("CRMOpportunityRelationship"));
unittest {
  version(test_model_crm) {
    assert(CRMOpportunityRelationship);
  
  auto entity = CRMOpportunityRelationship;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}