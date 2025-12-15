-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789869456 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\biu_eba_ca_history.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/biu_eba_ca_history.sql:null:4f5bf8f4c7d2bbced964fa72a0bedd2530efbec9:create

create or replace editionable trigger biu_eba_ca_history before
    insert or update on eba_ca_history
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.change_date := current_timestamp;
        :new.changed_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := :new.row_version_number + 1;
    end if;

end;
/

alter trigger biu_eba_ca_history enable;

