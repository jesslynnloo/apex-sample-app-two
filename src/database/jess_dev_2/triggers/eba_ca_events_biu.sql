create or replace editionable trigger eba_ca_events_biu before
    insert or update on eba_ca_events
    for each row
begin
    if inserting then
        if :new.event_id is null then
            :new.event_id := eba_ca_api.gen_id;
        end if;

        :new.created_on := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := 1;
    end if;

    if updating then
        :new.last_updated_on := current_timestamp;
        :new.last_updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    if :new.row_key is null then
        select
            eba_ca_fw.compress_int(eba_ca_seq.nextval)
        into :new.row_key
        from
            dual;

    end if;

    eba_ca_fw.tag_sync(
        p_new_tags     => :new.tags,
        p_old_tags     => :old.tags,
        p_content_type => 'EVENT',
        p_content_id   => :new.event_id
    );

end;
/

alter trigger eba_ca_events_biu enable;


-- sqlcl_snapshot {"hash":"1ea8f02e53da63ae5319fe10b9bccadd611ee7f3","type":"TRIGGER","name":"EBA_CA_EVENTS_BIU","schemaName":"JESS_DEV_2","sxml":""}