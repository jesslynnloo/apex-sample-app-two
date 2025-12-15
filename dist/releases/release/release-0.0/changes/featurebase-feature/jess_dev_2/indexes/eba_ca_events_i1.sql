-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859057 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_events_i1.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_events_i1.sql:null:37d5d6aafe47fc6d6cf95233aef666874125b659:create

create index eba_ca_events_i1 on
    eba_ca_events (
        type_id
    );

