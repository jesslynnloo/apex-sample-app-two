create or replace editionable trigger eba_ca_event_types_biu before
    insert or update on eba_ca_event_types
    for each row
begin
    if inserting then
        if :new.type_id is null then
            :new.type_id := eba_ca_api.gen_id;
        end if;

        :new.created_on := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.last_updated_on := current_timestamp;
        :new.last_updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if :new.is_active_yn is null then
        if :new.type_name is null then
            :new.is_active_yn := 'N';
        else
            :new.is_active_yn := 'Y';
        end if;
    end if;

end;
/

alter trigger eba_ca_event_types_biu enable;


-- sqlcl_snapshot {"hash":"8eb8bfd206c8b84e6c2c9fd16209e40a836a0a07","type":"TRIGGER","name":"EBA_CA_EVENT_TYPES_BIU","schemaName":"JESS_DEV_2","sxml":""}