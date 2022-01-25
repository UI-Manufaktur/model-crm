module models.crm.sales.orders.order;

@safe:
import uim.entities;

// Quote that has been accepted.
class DAPLOrder : DOOPEntity {
  this() { super();
    this.attributes([
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdTypeCode": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
      "utcConversionTimeZoneCode": OOPAttributeString.descriptions(["en":"Time zone code that was in use when the record was created."]),
      "salesOrderId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the order."]),
      "emailAddress": OOPAttributeString.descriptions(["en":"The primary email address for the entity."]),
      "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
      "stageId": OOPAttributeUUID.descriptions(["en":"Contains the id of the stage where the entity is located."]),
      "traversedPath": OOPAttributeString.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "billToAddressId": OOPAttributeLink("address").descriptions(["en":"Unique identifier of the billing address."]),
      "billToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's billing address."]),
      "billToComposite": OOPAttributeString.descriptions(["en":"Shows the complete Bill To address."]),
      "billToContactName": OOPAttributeString.descriptions(["en":"Type the primary contact name at the customer's billing address."]),
      "billToCountry": OOPAttributeString.descriptions(["en":"Type the country or region for the customer's billing address."]),
      "billToFax": OOPAttributeString.descriptions(["en":"Type the fax number for the customer's billing address."]),
      "billToLine1": OOPAttributeString.descriptions(["en":"Type the first line of the customer's billing address."]),
      "billToLine2": OOPAttributeString.descriptions(["en":"Type the second line of the customer's billing address."]),
      "billToLine3": OOPAttributeString.descriptions(["en":"Type the third line of the billing address."]),
      "billToName": OOPAttributeString.descriptions(["en":"Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
      "billToPostalCode": OOPAttributeString.descriptions(["en":"Type the ZIP Code or postal code for the billing address."]),
      "billToStateOrProvince": OOPAttributeString.descriptions(["en":"Type the state or province for the billing address."]),
      "billToTelephone": OOPAttributeString.descriptions(["en":"Type the phone number for the customer's billing address."]),
      "customerId": OOPAttributeUUID.descriptions(["en":"The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": OOPAttributeString.descriptions(["en":"The type of customer, either Account or Contact."]),
      "dateFulfilled": OOPAttributeString.descriptions(["en":"Enter the date that all or part of the order was shipped to the customer."]),
      "discountAmount": OOPAttributeString.descriptions(["en":"Type the discount amount for the order if the customer is eligible for special savings."]),
      "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "discountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Order Discount Amount in base currency."]),
      "discountPercentage": OOPAttributePercentage.descriptions(["en":"Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the order."]),
      "freightAmount": OOPAttributeString.descriptions(["en":"Type the cost of freight or shipping for the products included in the order for use in calculating the Total Amount field."]),
      "freightAmountBase": OOPAttributeString.descriptions(["en":"Value of the Freight Amount in base currency."]),
      "freightTermsCode": OOPAttributeString.descriptions(["en":"Select the freight terms to make sure shipping charges are processed correctly."]),
      "freightTermsCode_display": OOPAttributeString.descriptions(["en":""]),
      "isPriceLocked": OOPAttributeBoolean.descriptions(["en":"Select whether prices specified on the invoice are locked from any further updates."]),
      "lastBackofficeSubmit": OOPAttributeString.descriptions(["en":"Enter the date and time when the order was last submitted to an accounting or ERP system for processing."]),
      "opportunityId": OOPAttributeUUID.descriptions(["en":"Choose the related opportunity so that the data for the order and opportunity are linked for reporting and analytics."]),
      "orderNumber": OOPAttributeNumber.descriptions(["en":"Shows the order number for customer reference and to use in search. The number cannot be modified."]),
      "paymentTermsCode": OOPAttributeString.descriptions(["en":"Select the payment terms to indicate when the customer needs to pay the total amount."]),
      "paymentTermsCode_display": OOPAttributeString.descriptions(["en":""]),
      "priceLevelId": OOPAttributeUUID.descriptions(["en":"Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
      "pricingErrorCode": OOPAttributeString.descriptions(["en":"Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
      "pricingErrorCode_display": OOPAttributeString.descriptions(["en":""]),
      "priorityCode": OOPAttributeString.descriptions(["en":"Select the priority so that preferred customers or critical issues are handled quickly."]),
      "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
      "quoteId": OOPAttributeUUID.descriptions(["en":"Choose the related quote so that order data and quote data are linked for reporting and analytics."]),
      "requestDeliveryBy": OOPAttributeLink("aplUser").descriptions(["en":"Enter the delivery date requested by the customer for all products in the order."]),
      "shippingMethodCode": OOPAttributeString.descriptions(["en":"Select a shipping method for deliveries sent to this address."]),
      "shippingMethodCode_display": OOPAttributeString.descriptions(["en":""]),
      "shipToAddressId": OOPAttributeLink("address").descriptions(["en":"Unique identifier of the shipping address."]),
      "shipToCity": OOPAttributeString.descriptions(["en":"Type the city for the customer's shipping address."]),
      "shipToComposite": OOPAttributeString.descriptions(["en":"Shows the complete Ship To address."]),
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
      "stateCode": OOPAttributeString.descriptions(["en":"Shows whether the order is active, submitted, fulfilled, canceled, or invoiced. Only active orders can be edited."]),
      "stateCode_display": OOPAttributeString.descriptions(["en":""]),
      "statusCode": OOPAttributeString.descriptions(["en":"Select the order's status."]),
      "statusCode_display": OOPAttributeString.descriptions(["en":""]),
      "submitDate": OOPAttributeDate.descriptions(["en":"Enter the date when the order was submitted to the fulfillment or shipping center."]),
      "submitStatus": OOPAttributeString.descriptions(["en":"Type the code for the submitted status in the fulfillment or shipping center system."]),
      "submitStatusDescription": OOPAttributeString.descriptions(["en":"Type additional details or notes about the order for the fulfillment or shipping center."]),
      "totalAmount": OOPAttributeString.descriptions(["en":"Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the order."]),
      "totalAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Amount in base currency."]),
      "totalAmountLessFreight": OOPAttributeString.descriptions(["en":"Shows the total product amount for the order, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the order."]),
      "totalAmountLessFreightBase": OOPAttributeString.descriptions(["en":"Value of the Total Pre-Freight Amount in base currency."]),
      "totalDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the total discount amount, based on the discount price and rate entered on the order."]),
      "totalDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Discount Amount in base currency."]),
      "totalLineItemAmount": OOPAttributeString.descriptions(["en":"Shows the sum of all existing and write-in products included on the order, based on the specified price list and quantities."]),
      "totalLineItemAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Detail Amount in base currency."]),
      "totalLineItemDiscountAmount": OOPAttributeString.descriptions(["en":"Shows the total of the Manual Discount amounts specified on all products included in the order. This value is reflected in the Detail Amount field on the order and is added to any discount amount or rate specified on the order."]),
      "totalLineItemDiscountAmountBase": OOPAttributeString.descriptions(["en":"Value of the Total Line Item Discount Amount in base currency."]),
      "totalTax": OOPAttributeString.descriptions(["en":"Shows the Tax amounts specified on all products included in the order, included in the Total Amount due calculation for the order."]),
      "totalTaxBase": OOPAttributeString.descriptions(["en":"Value of the Total Tax in base currency."]),
      "willCall": OOPAttributeString.descriptions(["en":"Select whether the products included in the order should be shipped to the specified address or held until the customer calls with further pick-up or delivery instructions."]),
      "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows the duration in minutes for which the order was on hold."]),
      "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date time stamp of the last on hold time."]),
      "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the sales order record."]),
      "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this sales order. This field is for internal use only."]),
      "entityImageId": OOPAttributeUUID.descriptions(["en":""]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Shows the parent account related to the record. This information is used to link the sales order to the account selected in the Customer field for reporting and analytics."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Shows the parent contact related to the record. This information is used to link the contract to the contact selected in the Customer field for reporting and analytics."]),
      "campaignId": OOPAttributeUUID.descriptions(["en":"Shows the campaign that the order was created from."]),
    ]);
  }

  override string entityClass() { return "aplOrder"; }
  override string entityClasses() { return "aplOrders"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("campaign", "campaignId", "APLCampaign"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLOrder() { return new DAPLOrder; } 
auto APLOrder(Json json) { return new DAPLOrder(json); } 

unittest {
  version(uim_entities) {
    assert(APLOrder);

  auto entity = APLOrder;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}