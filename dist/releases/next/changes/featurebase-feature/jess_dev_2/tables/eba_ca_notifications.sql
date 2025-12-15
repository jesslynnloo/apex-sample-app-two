-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789866367 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_notifications.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_notifications.sql:null:54131c986d34b9205118d76dd5e690bb106443c3:create

create table eba_ca_notifications (
    id                       number not null enable,
    row_version_number       number,
    notification_name        varchar2(255 byte) not null enable,
    notification_description varchar2(4000 byte),
    notification_type        varchar2(30 byte) not null enable,
    display_sequence         number,
    display_from             timestamp(6) with time zone,
    display_until            timestamp(6) with time zone,
    created_by               varchar2(255 byte) not null enable,
    created                  timestamp(6) with time zone,
    updated_by               varchar2(255 byte) not null enable,
    updated                  timestamp(6) with time zone
);

alter table eba_ca_notifications
    add constraint eba_ca_note_pk primary key ( id )
        using index enable;

alter table eba_ca_notifications
    add constraint eba_ca_note_tp_cc
        check ( notification_type in ( 'RED', 'YELLOW' ) ) enable;

