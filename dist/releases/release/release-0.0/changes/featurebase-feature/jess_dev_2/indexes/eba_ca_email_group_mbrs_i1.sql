-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789858744 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_email_group_mbrs_i1.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_email_group_mbrs_i1.sql:null:c47f557553fb30d9692090173b95e1fc4a672bf5:create

create index eba_ca_email_group_mbrs_i1 on
    eba_ca_email_group_mbrs (
        group_id
    );

