-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789871491 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_timeframes_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_timeframes_biu.sql:null:7b85dfbbcec1010d5df7f231975665aa4a9bb8ca:create

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

