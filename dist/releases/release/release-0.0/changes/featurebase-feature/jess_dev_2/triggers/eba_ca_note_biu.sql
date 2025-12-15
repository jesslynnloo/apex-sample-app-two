-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789871042 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_note_biu.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_note_biu.sql:null:af6d30e84ae81306df07aa6593be92b4dee48bbb:create

create or replace editionable trigger eba_ca_note_biu before
    insert or update on eba_ca_notifications
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

    if :new.notification_type is null then
        :new.notification_type := 'MANUAL';
    end if;

    if :new.display_sequence is null then
        :new.display_sequence := 10;
    end if;

end;
/

alter trigger eba_ca_note_biu enable;

