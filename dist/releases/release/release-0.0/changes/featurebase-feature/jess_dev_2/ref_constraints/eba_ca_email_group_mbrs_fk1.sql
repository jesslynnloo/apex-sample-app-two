-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789862545 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_email_group_mbrs_fk1.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_email_group_mbrs_fk1.sql:null:ce2dce6c797d0e4f854440d161ae150fef196541:create

alter table eba_ca_email_group_mbrs
    add constraint eba_ca_email_group_mbrs_fk1
        foreign key ( group_id )
            references eba_ca_email_groups ( group_id )
                on delete cascade
        enable;

