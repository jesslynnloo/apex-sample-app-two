-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789870261 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_calendars_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_calendars_biu.sql:null:bced29ddaf482b2fdc235a1b128eb7fd0583b38d:create

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

