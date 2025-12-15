-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789868981 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\bi_eba_ca_errors.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/bi_eba_ca_errors.sql:null:b29aa4d6da5bf29e450e8b03134732e78b79608e:create

create or replace editionable trigger bi_eba_ca_errors before
    insert or update on eba_ca_errors
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger bi_eba_ca_errors enable;

