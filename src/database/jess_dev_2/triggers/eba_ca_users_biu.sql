create or replace editionable trigger eba_ca_users_biu before
    insert or update on eba_ca_users
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := eba_ca.gen_id();
        end if;

        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.row_version := 1;
        if :new.account_locked is null then
            :new.account_locked := 'N';
        end if;

    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version := nvl(:old.row_version,
                                1) + 1;
    end if;
    -- Always store username as upper case
    :new.username := upper(:new.username);
end;
/

alter trigger eba_ca_users_biu enable;


-- sqlcl_snapshot {"hash":"7283bc6ed1b0069f68bc4cd04a31ccd89f6e36b0","type":"TRIGGER","name":"EBA_CA_USERS_BIU","schemaName":"JESS_DEV_2","sxml":""}