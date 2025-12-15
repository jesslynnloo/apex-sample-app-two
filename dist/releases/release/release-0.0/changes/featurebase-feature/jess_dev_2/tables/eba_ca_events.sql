-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789865662 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_events.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_events.sql:null:27018c3790680fbe343d7ffe9ccb564e25f80110:create

create table eba_ca_events (
    event_id           number not null enable,
    row_version_number number(*, 0),
    row_key            varchar2(30 byte),
    event_name         varchar2(255 byte) not null enable,
    type_id            number,
    calendar_id        number,
    event_date_time    timestamp(6) with time zone not null enable,
    duration           number not null enable,
    event_desc         varchar2(4000 byte),
    contact_person     varchar2(255 byte),
    contact_email      varchar2(255 byte),
    display_time       varchar2(1 byte) not null enable,
    location           varchar2(255 byte),
    link_name_1        varchar2(255 byte),
    link_url_1         varchar2(4000 byte),
    link_name_2        varchar2(255 byte),
    link_url_2         varchar2(4000 byte),
    link_name_3        varchar2(255 byte),
    link_url_3         varchar2(4000 byte),
    link_name_4        varchar2(255 byte),
    link_url_4         varchar2(4000 byte),
    tags               varchar2(4000 byte),
    series_id          number,
    created_on         timestamp(6) with time zone not null enable,
    created_by         varchar2(255 byte) not null enable,
    last_updated_on    timestamp(6) with time zone,
    last_updated_by    varchar2(255 byte)
);

alter table eba_ca_events
    add constraint eba_ca_events_pk primary key ( event_id )
        using index enable;

alter table eba_ca_events
    add constraint eba_ca_event_cc1
        check ( display_time in ( 'Y', 'N' ) ) enable;

