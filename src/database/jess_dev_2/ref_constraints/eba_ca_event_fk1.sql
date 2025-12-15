alter table eba_ca_events
    add constraint eba_ca_event_fk1
        foreign key ( type_id )
            references eba_ca_event_types ( type_id )
        enable;


-- sqlcl_snapshot {"hash":"d72b68a6a0c6485b64043cef447c89cb41337342","type":"REF_CONSTRAINT","name":"EBA_CA_EVENT_FK1","schemaName":"JESS_DEV_2","sxml":""}