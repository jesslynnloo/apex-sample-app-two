alter table eba_ca_email_group_mbrs
    add constraint eba_ca_email_group_mbrs_fk1
        foreign key ( group_id )
            references eba_ca_email_groups ( group_id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"ce2dce6c797d0e4f854440d161ae150fef196541","type":"REF_CONSTRAINT","name":"EBA_CA_EMAIL_GROUP_MBRS_FK1","schemaName":"JESS_DEV_2","sxml":""}