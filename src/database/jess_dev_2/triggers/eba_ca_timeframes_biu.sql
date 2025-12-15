create or replace editionable trigger eba_ca_timeframes_biu before
    insert or update on eba_ca_timeframes
    for each row
begin
    if inserting then
        if :new.tf_id is null then
            :new.tf_id := eba_ca_api.gen_id;
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

alter trigger eba_ca_timeframes_biu enable;


-- sqlcl_snapshot {"hash":"5d832558e293eb97733c79440a878b03c74ecaf3","type":"TRIGGER","name":"EBA_CA_TIMEFRAMES_BIU","schemaName":"JESS_DEV_2","sxml":""}