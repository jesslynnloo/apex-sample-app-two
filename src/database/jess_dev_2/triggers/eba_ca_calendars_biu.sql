create or replace editionable trigger eba_ca_calendars_biu before
    insert or update on eba_ca_calendars
    for each row
begin
    if inserting then
        if :new.calendar_id is null then
            :new.calendar_id := eba_ca_api.gen_id;
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

end;
/

alter trigger eba_ca_calendars_biu enable;


-- sqlcl_snapshot {"hash":"7821ac60ee626bf4b25dc2056fc310f35ab34969","type":"TRIGGER","name":"EBA_CA_CALENDARS_BIU","schemaName":"JESS_DEV_2","sxml":""}