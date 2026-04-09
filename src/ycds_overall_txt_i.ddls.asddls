@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ycds_overall_txt_I'
@Metadata.ignorePropagatedAnnotations: true
define view entity ycds_overall_txt_I as select from /dmo/oall_stat_t // Text table

association [1..1] to ycds_overall_I as _Overall on $projection.OverallStatus = _Overall.OverallStatus
 
{

   @ObjectModel.text.element: [ 'TEXT' ]
    key overall_status as OverallStatus,
    @Semantics.language: true
    key language as Language,
   @Semantics.text: true
    text as Text,
    _Overall 
}
