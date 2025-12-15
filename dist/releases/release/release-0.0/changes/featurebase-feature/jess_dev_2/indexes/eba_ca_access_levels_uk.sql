-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789858647 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_access_levels_uk.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_access_levels_uk.sql:null:df6f5f7d02d94fe0d5f2132cd53b68f9a8839116:create

create unique index eba_ca_access_levels_uk on
    eba_ca_access_levels (
        access_level
    );

