create or replace editionable trigger eba_ca_email_group_mbrs_biu before
    insert or update on eba_ca_email_group_mbrs
    for each row
begin
    if inserting then
        if :new.mbr_id is null then
            :new.mbr_id := eba_ca_api.gen_id;
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

alter trigger eba_ca_email_group_mbrs_biu enable;


-- sqlcl_snapshot {"hash":"3eb5bb6818c5988b9f6d12affdb9919a45fc2136","type":"TRIGGER","name":"EBA_CA_EMAIL_GROUP_MBRS_BIU","schemaName":"JESS_DEV_2","sxml":""}