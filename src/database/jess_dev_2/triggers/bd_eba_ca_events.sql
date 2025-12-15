create or replace editionable trigger bd_eba_ca_events before
    delete on eba_ca_events
    for each row
begin
    eba_ca_fw.tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'EVENT',
        p_content_id   => :old.event_id
    );
end;
/

alter trigger bd_eba_ca_events enable;


-- sqlcl_snapshot {"hash":"824affb251f13caee898beeb0a9e380ceacd718b","type":"TRIGGER","name":"BD_EBA_CA_EVENTS","schemaName":"JESS_DEV_2","sxml":""}