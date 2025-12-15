create or replace editionable trigger eba_ca_series_biu before
    insert or update on eba_ca_series
    for each row
begin
    if inserting then
        if :new.series_id is null then
            :new.series_id := eba_ca_api.gen_id;
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

alter trigger eba_ca_series_biu enable;


-- sqlcl_snapshot {"hash":"2ce869da834da0271ed4d220843e9a34e9ad5998","type":"TRIGGER","name":"EBA_CA_SERIES_BIU","schemaName":"JESS_DEV_2","sxml":""}