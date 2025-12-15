alter table eba_ca_notes
    add constraint eba_ca_notes_fk
        foreign key ( event_id )
            references eba_ca_events ( event_id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"b6954994629634c256be67307bf31c3feaeed7be","type":"REF_CONSTRAINT","name":"EBA_CA_NOTES_FK","schemaName":"JESS_DEV_2","sxml":""}