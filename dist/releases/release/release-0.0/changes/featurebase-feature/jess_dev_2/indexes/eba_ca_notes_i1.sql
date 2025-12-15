-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859564 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_notes_i1.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_notes_i1.sql:null:f055676b00b7eebe3b110a6fffba12b04189a418:create

create index eba_ca_notes_i1 on
    eba_ca_notes (
        event_id
    );

