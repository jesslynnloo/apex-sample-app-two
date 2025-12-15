-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789862706 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_event_fk1.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_event_fk1.sql:null:d72b68a6a0c6485b64043cef447c89cb41337342:create

alter table eba_ca_events
    add constraint eba_ca_event_fk1
        foreign key ( type_id )
            references eba_ca_event_types ( type_id )
        enable;

