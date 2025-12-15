-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859640 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_preferences_uk.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_preferences_uk.sql:null:b91f750da9fdf45bf46be606a61e7455129e0fda:create

create unique index eba_ca_preferences_uk on
    eba_ca_preferences (
        preference_name
    );

