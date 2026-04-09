CLASS ymjk_data_upload DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ymjk_data_upload IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


      DATA: lt_source TYPE TABLE OF /dmo/travel_m,
          lt_target TYPE TABLE OF ymjk_travel,   "your Z-table
          ls_target TYPE ymjk_travel.

    "1. Read source data
    SELECT *
      FROM /dmo/travel_m
      INTO TABLE @lt_source.


  LOOP AT lt_source ASSIGNING FIELD-SYMBOL(<ls_src>).

      CLEAR ls_target.

      "2. Map fields
      ls_target-client          = <ls_src>-client.
      ls_target-travel_id       = <ls_src>-travel_id.
      ls_target-agency_id       = <ls_src>-agency_id.
      ls_target-customer_id     = <ls_src>-customer_id.
      ls_target-begin_date      = <ls_src>-begin_date.
      ls_target-end_date        = <ls_src>-end_date.
      ls_target-booking_fee     = <ls_src>-booking_fee.
      ls_target-total_price     = <ls_src>-total_price.
      ls_target-currency_code   = <ls_src>-currency_code.
      ls_target-description     = <ls_src>-description.
      ls_target-overall_status  = <ls_src>-overall_status.
      ls_target-created_by      = <ls_src>-created_by.
      ls_target-created_at      = <ls_src>-created_at.
      ls_target-last_changed_by = <ls_src>-last_changed_by.
      ls_target-last_changed_at = <ls_src>-last_changed_at.

      APPEND ls_target TO lt_target.

    ENDLOOP.

    "3. Insert into Z-table
    MODIFY ymjk_travel FROM TABLE @lt_target.
    modify ymjk_create FROM TABLE @lt_target.

    COMMIT WORK.

  ENDMETHOD.

ENDCLASS.
