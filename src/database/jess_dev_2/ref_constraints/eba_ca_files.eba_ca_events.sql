alter table eba_ca_files
    add
        foreign key ( event_id )
            references eba_ca_events ( event_id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"8d6b01e6d7591349aa1d214296f059dd76ede6df","type":"REF_CONSTRAINT","name":"EBA_CA_FILES.EBA_CA_EVENTS","schemaName":"JESS_DEV_2","sxml":""}