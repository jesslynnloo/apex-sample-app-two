alter table eba_ca_events
    add constraint eba_ca_event_fk3
        foreign key ( calendar_id )
            references eba_ca_calendars ( calendar_id )
        enable;


-- sqlcl_snapshot {"hash":"ca18fa2079df6ed385b292e10c6d21ea3c840079","type":"REF_CONSTRAINT","name":"EBA_CA_EVENT_FK3","schemaName":"JESS_DEV_2","sxml":""}