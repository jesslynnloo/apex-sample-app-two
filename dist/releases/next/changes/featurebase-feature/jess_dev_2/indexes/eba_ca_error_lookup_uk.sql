-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789858823 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_error_lookup_uk.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_error_lookup_uk.sql:null:54fd5e5208d7a5fd7eefc89010ceab33f71c9ddd:create

create unique index eba_ca_error_lookup_uk on
    eba_ca_error_lookup (
        constraint_name,
        language_code
    );

