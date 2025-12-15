-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863326 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\ref_constraints\eba_ca_users_acc_level_fk.sql
-- sqlcl_snapshot src/database/jess_dev_2/ref_constraints/eba_ca_users_acc_level_fk.sql:null:9d48c33b18103d774891695a0cede93e7d225718:create

alter table eba_ca_users
    add constraint eba_ca_users_acc_level_fk
        foreign key ( access_level_id )
            references eba_ca_access_levels ( id )
        enable;

