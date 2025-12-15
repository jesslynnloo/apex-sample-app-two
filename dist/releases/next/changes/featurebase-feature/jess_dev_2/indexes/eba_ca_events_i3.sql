-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859225 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_events_i3.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_events_i3.sql:null:2c4ea7db987ea4fb5c4a0a0b439fe60255d74579:create

create index eba_ca_events_i3 on
    eba_ca_events (
        calendar_id
    );

