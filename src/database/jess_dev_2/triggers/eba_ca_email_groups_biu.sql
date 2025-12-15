create or replace editionable trigger eba_ca_email_groups_biu before
    insert or update on eba_ca_email_groups
    for each row
begin
    if inserting then
        if :new.group_id is null then
            :new.group_id := eba_ca_api.gen_id;
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

alter trigger eba_ca_email_groups_biu enable;


-- sqlcl_snapshot {"hash":"d6b4789fcd095b6e8bee1250b99e4844a6ca555c","type":"TRIGGER","name":"EBA_CA_EMAIL_GROUPS_BIU","schemaName":"JESS_DEV_2","sxml":""}