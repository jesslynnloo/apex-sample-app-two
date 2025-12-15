-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789870564 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_email_groups_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_email_groups_biu.sql:null:5e75e318394f40191d0ba8efa92ef9a872ac2329:create

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

