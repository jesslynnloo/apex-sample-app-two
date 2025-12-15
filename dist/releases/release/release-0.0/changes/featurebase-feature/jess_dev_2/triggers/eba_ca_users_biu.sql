-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789871829 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_users_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_users_biu.sql:null:951e80e374f11290235c88d0cc4a4383707c8f87:create

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

