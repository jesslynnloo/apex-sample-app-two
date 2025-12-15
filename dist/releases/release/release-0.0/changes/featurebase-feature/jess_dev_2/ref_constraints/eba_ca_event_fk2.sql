-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789862797 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_event_fk2.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_event_fk2.sql:null:1102f812c65e99958ec2821fad52bb1b99712c04:create

alter table eba_ca_events
    add constraint eba_ca_event_fk2
        foreign key ( series_id )
            references eba_ca_series ( series_id )
        enable;

