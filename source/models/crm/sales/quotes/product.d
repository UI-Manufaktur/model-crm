module models.crm.sales.quotes.product;

@safe:
import uim.entities;

// Product line item in a quote. The details include such information as product ID, description, quantity, and cost.
class DAPLQuoteProduct : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "quoteDetailId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the product line item in the quote."]),
      "baseAmount": OOPAttributeString.descriptions(["en":"Shows the total price of the quote product, based on the price per unit, volume discount, and quantity."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "baseAmountBase": OOPAttributeString.descriptions(["en":"Value of the Amount in base currency."]),
      "extendedAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due for the quote product, based on the sum of the unit price, quantity, discounts ,and tax."]),
      "extendedAmountBase": OOPAttributeString.descriptions(["en":"Value of the Extended Amount in base currency."]),
      "isPriceOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the quote product."]),
      "isProductOverridden": OOPAttributeBoolean.descriptions(["en":"Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the quote."]),
      "lineItemNumber": OOPAttributeNumber.descriptions(["en":"Type the line item number for the quote product to easily identify the product in the quote and make sure it's listed in the correct order."]),
      "manualDiscountAmount": OOPAttributeString.descriptions(["en":"Type the manual discount amount for the quote product to deduct any negotiated or other savings from the product total on the quote."]),
      "manualDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Manual Discount in base currency."]),
      "parentBundleId": OOPAttributeUUID.descriptions(["en":"Choose the parent bundle associated with this product"]),
      "productAssociationId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the product line item association with bundle in the quote"]),
      "productTypeCode": OOPAttributeString.descriptions(["en":"Product Type"]),
      "productTypeCode_display": OOPAttributeString.descriptions(["en":""]),
      "pricePerUnit": OOPAttributeString.descriptions(["en":"Type the price per unit of the quote product. The default is to the value in the price list specified on the quote for existing products."]),
      "pricePerUnitBase": OOPAttributeString.descriptions(["en":"Value of the Price Per Unit in base currency."]),
      "pricingErrorCode": OOPAttributeString.descriptions(["en":"Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
      "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
      "productDescription": OOPAttributeString.descriptions(["en":"Type a name or description to identify the type of write-in product included in the quote."]),
      "productName": OOPAttributeString.descriptions(["en":"Calculated field that will be populated by name and description of the product."]),
      "productId": OOPAttributeUUID.descriptions(["en":"Choose the product to include on the quote to link the product's pricing and other information to the quote."]),
      "quantity": OOPAttributeString.descriptions(["en":"Type the amount or quantity of the product requested by the customer."]),
      "quoteId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the quote for the quote product."]),
      "quoteStateCode": OOPAttributeString.descriptions(["en":"Status of the quote product."]),
      "quoteStateCode_display": OOPAttributeString.descriptions(["en":""]),
      "requestDeliveryBy": OOPAttributeLink("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for the quote product."]),
      "salesRepId": OOPAttributeUUID.descriptions(["en":"Choose the user responsible for the sale of the quote product."]),
      "shipToAddressId": OOPAttributeLink("address").descriptions(["en":"Unique identifier of the shipping address."]),
      "shipToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's shipping address."]),
      "shipToContactName": OOPAttributeString.descriptions(["en":"Type the primary contact name at the customer's shipping address."]),
      "shipToCountry": OOPAttributeString.descriptions(["en":"Type the country or region for the customer's shipping address."]),
      "shipToFax": OOPAttributeString.descriptions(["en":"Type the fax number for the customer's shipping address."]),
      "shipToFreightTermsCode": OOPAttributeString.descriptions(["en":"Select the freight terms to make sure shipping orders are processed correctly."]),
      "shipToFreightTermsCode_display": OOPAttributeString.descriptions(["en":""]),
      "shipToLine1": OOPAttributeString.descriptions(["en":"Type the first line of the customer's shipping address."]),
      "shipToLine2": OOPAttributeString.descriptions(["en":"Type the second line of the customer's shipping address."]),
      "shipToLine3": OOPAttributeString.descriptions(["en":"Type the third line of the shipping address."]),
      "shipToName": OOPAttributeString.descriptions(["en":"Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
      "shipToPostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the shipping address."]),
      "shipToStateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province for the shipping address."]),
      "shipToTelephone": OOPAttributeString.descriptions(["en":"Type the phone number for the customer's shipping address."]),
      "tax": OOPAttributeString.descriptions(["en":"Type the tax amount for the quote product."]),
      "taxBase": OOPAttributeString.descriptions(["en":"Value of the Tax in base currency."]),
      "uoMId": OOPAttributeUUID.descriptions(["en":"Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "volumeDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
      "volumeDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Volume Discount in base currency."]),
      "willCall": OOPAttributeString.descriptions(["en":"Select whether the quote product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
      "sequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data that maintains the sequence."]),
      "propertyConfigurationStatus": OOPAttributeString.descriptions(["en":"Status of the property configuration."]),
      "propertyConfigurationStatus_display": OOPAttributeString.descriptions(["en":""]),
      "quoteDetailName": OOPAttributeString.descriptions(["en":"Quote Detail Name. Added for 1:n Referential relationship"]),
      "parentBundleIdRef": OOPAttributeString.descriptions(["en":"Choose the parent bundle associated with this product"]),
    ]);
  }

  override string entityClass() { return "aplQuoteProduct"; }
  override string entityClasses() { return "aplQuoteProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLQuoteProduct() { return new DAPLQuoteProduct; } 
auto APLQuoteProduct(Json json) { return new DAPLQuoteProduct(json); } 

unittest {
  version(uim_entities) {
    assert(APLQuoteProduct);
  
  auto entity = APLQuoteProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}