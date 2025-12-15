-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859400 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_history_i1.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_history_i1.sql:null:ae0ad32cbec09369ebf7e122bb511270a700d4a7:create

create index eba_ca_history_i1 on
    eba_ca_history (
        component_id
    );

