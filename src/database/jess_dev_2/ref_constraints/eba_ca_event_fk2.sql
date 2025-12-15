alter table eba_ca_events
    add constraint eba_ca_event_fk2
        foreign key ( series_id )
            references eba_ca_series ( series_id )
        enable;


-- sqlcl_snapshot {"hash":"1102f812c65e99958ec2821fad52bb1b99712c04","type":"REF_CONSTRAINT","name":"EBA_CA_EVENT_FK2","schemaName":"JESS_DEV_2","sxml":""}