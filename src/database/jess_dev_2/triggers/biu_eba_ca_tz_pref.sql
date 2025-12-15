create or replace editionable trigger biu_eba_ca_tz_pref before
    insert or update on eba_ca_tz_pref
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
        :new.created := current_timestamp;
        :new.created_by := nvl(wwv_flow.g_user, user);
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    if inserting
    or updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(wwv_flow.g_user, user);
    end if;

    if :new.timezone_preference is null then
        :new.timezone_preference := 'UTC';
    end if;

end;
/

alter trigger biu_eba_ca_tz_pref enable;


-- sqlcl_snapshot {"hash":"b12e52018971693b1f81bd69aa293d102ed15661","type":"TRIGGER","name":"BIU_EBA_CA_TZ_PREF","schemaName":"JESS_DEV_2","sxml":""}