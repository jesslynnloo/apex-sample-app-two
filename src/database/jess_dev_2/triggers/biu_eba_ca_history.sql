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


-- sqlcl_snapshot {"hash":"935ba06897b523ff87d2b53db67ec23535b12f06","type":"TRIGGER","name":"BIU_EBA_CA_HISTORY","schemaName":"JESS_DEV_2","sxml":""}