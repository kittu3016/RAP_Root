@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help'
@Metadata.ignorePropagatedAnnotations: true
define view entity ycds_overall_VH as select from /dmo/oall_stat // Table

association [0..*] to ycds_overall_txt_I as _Overall_txt on $projection.OverallStatus = _Overall_txt.OverallStatus
{    
    // Important Annotations.
    @UI.textArrangement: #TEXT_ONLY  // This annotation provides only text in dropdown
    @ObjectModel.text.association: '_Overall_txt'
    key overall_status as OverallStatus,
    _Overall_txt
    
}
