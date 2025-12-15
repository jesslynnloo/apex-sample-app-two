-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789869768 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\biu_eba_ca_tags.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/biu_eba_ca_tags.sql:null:35918c5fb9b11dfc7e1d31876e268026bdc86876:create

create or replace editionable trigger biu_eba_ca_tags before
    insert or update on eba_ca_tags
    for each row
begin
    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger biu_eba_ca_tags enable;

