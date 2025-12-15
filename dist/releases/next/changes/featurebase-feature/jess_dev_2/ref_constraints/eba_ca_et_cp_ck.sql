-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789862629 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_et_cp_ck.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_et_cp_ck.sql:null:52abae8df72f97c861cfaea8ba3547a8fe8f78f1:create

alter table eba_ca_event_types
    add constraint eba_ca_et_cp_ck
        foreign key ( color_pref_id )
            references eba_ca_color_prefs ( id )
        enable;

