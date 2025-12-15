-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789871347 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_series_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_series_biu.sql:null:dca96c79396b987df5e30fbee05de7ff6475fe7d:create

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

