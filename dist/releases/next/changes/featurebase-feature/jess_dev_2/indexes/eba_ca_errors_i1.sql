-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789858901 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_errors_i1.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_errors_i1.sql:null:6a7b7bbd6f719f1e7aff918346ab10827d429700:create

create index eba_ca_errors_i1 on
    eba_ca_errors ( sys_extract_utc(err_time) );

