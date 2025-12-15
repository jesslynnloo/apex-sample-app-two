-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859735 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_users_acc_lvl_idx.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_users_acc_lvl_idx.sql:null:613a6eb698c7de37e62dd1fc70dab5aa233e98f3:create

create index eba_ca_users_acc_lvl_idx on
    eba_ca_users (
        access_level_id
    );

