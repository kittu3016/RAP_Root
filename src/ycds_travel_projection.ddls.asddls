@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'YCDS_Travel_Projection'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity YCDS_Travel_Projection as projection on YCDS_Travel_Root
//composition of target_data_source_name as _association_name
{
 key TravelId,
        AgencyId,
        @Consumption.valueHelpDefinition: [{entity: { name: '/DMO/I_Customer_StdVH',
                                                      element: 'CustomerID' } } ]
        CustomerId,
        BeginDate,
        EndDate,
        @Semantics.amount.currencyCode: 'CurrencyCode'
        BookingFee,
        @Semantics.amount.currencyCode: 'CurrencyCode'
        TotalPrice,
        CurrencyCode,
        Description,
        @Consumption.valueHelpDefinition: [{entity: { name: 'ycds_overall_VH',
                                                      element: 'OverallStatus' } } ]
        OverallStatus,
        CreatedBy,
        CreatedAt,
        LastChangedBy,
        LastChangedAt
}
