create or replace editionable trigger biu_eba_ca_color_prefs before
    insert or update on eba_ca_color_prefs
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
        :new.row_version_number := 1;
    end if;

    if updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated := current_timestamp;
    end if;

    if :new.display_sequence is null then
        :new.display_sequence := 10;
    end if;

end;
/

alter trigger biu_eba_ca_color_prefs enable;


-- sqlcl_snapshot {"hash":"ce1e539e81aac5dd83520f35a0647dc7bcacd781","type":"TRIGGER","name":"BIU_EBA_CA_COLOR_PREFS","schemaName":"JESS_DEV_2","sxml":""}