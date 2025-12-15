alter table eba_ca_event_types
    add constraint eba_ca_et_cp_ck
        foreign key ( color_pref_id )
            references eba_ca_color_prefs ( id )
        enable;


-- sqlcl_snapshot {"hash":"52abae8df72f97c861cfaea8ba3547a8fe8f78f1","type":"REF_CONSTRAINT","name":"EBA_CA_ET_CP_CK","schemaName":"JESS_DEV_2","sxml":""}