create or replace editionable trigger eba_ca_preferences_biu before
    insert or update on eba_ca_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        :new.id := eba_ca.gen_id();
    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := current_timestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := current_timestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger eba_ca_preferences_biu enable;


-- sqlcl_snapshot {"hash":"25be2491202092b75d160803d514688b16fe5251","type":"TRIGGER","name":"EBA_CA_PREFERENCES_BIU","schemaName":"JESS_DEV_2","sxml":""}