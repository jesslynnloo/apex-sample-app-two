-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863058 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_event_fk3.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_event_fk3.sql:null:ca18fa2079df6ed385b292e10c6d21ea3c840079:create

alter table eba_ca_events
    add constraint eba_ca_event_fk3
        foreign key ( calendar_id )
            references eba_ca_calendars ( calendar_id )
        enable;

