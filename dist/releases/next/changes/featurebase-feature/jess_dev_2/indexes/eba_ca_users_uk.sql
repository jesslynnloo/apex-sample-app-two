-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859819 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_users_uk.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_users_uk.sql:null:37947bbaec396eab930a5570481e4cc53e4e435a:create

create unique index eba_ca_users_uk on
    eba_ca_users (
        username
    );

