@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ycds_overall_txt_I'
@Metadata.ignorePropagatedAnnotations: true
define view entity ycds_overall_I as select from /dmo/oall_stat // Main table 

association [0..*] to ycds_overall_txt_I as _Overall_txt on $projection.OverallStatus = _Overall_txt.OverallStatus
{
    key overall_status as OverallStatus,
    _Overall_txt
}
