-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789870411 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_email_group_mbrs_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_email_group_mbrs_biu.sql:null:3b41aa35815390227c4d86d1b08d1bd12e017910:create

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

