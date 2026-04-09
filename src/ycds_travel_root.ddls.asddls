@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'YCDS_Travel_Root'
@Metadata.ignorePropagatedAnnotations: true
define root view entity YCDS_Travel_Root as select from ymjk_travel
// composition of target_data_source_name as _association_name
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    booking_fee as BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    overall_status as OverallStatus,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
    //_association_name // Make association public
}
