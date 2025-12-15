alter table eba_ca_users
    add constraint eba_ca_users_acc_level_fk
        foreign key ( access_level_id )
            references eba_ca_access_levels ( id )
        enable;


-- sqlcl_snapshot {"hash":"9d48c33b18103d774891695a0cede93e7d225718","type":"REF_CONSTRAINT","name":"EBA_CA_USERS_ACC_LEVEL_FK","schemaName":"JESS_DEV_2","sxml":""}