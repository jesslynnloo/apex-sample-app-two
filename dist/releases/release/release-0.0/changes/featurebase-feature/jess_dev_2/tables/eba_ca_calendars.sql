-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863935 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_calendars.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_calendars.sql:null:0542b24ab1ee644391f2a17fc3586ad9982aff09:create

create table eba_ca_calendars (
    calendar_id     number not null enable,
    short_name      varchar2(10 byte) not null enable,
    calendar_name   varchar2(60 byte) not null enable,
    public_view_yn  varchar2(1 byte) default 'Y',
    description     varchar2(4000 byte),
    is_active_yn    varchar2(1 byte) default 'Y',
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_calendars
    add constraint eba_ca_calendars_pk primary key ( calendar_id )
        using index enable;

alter table eba_ca_calendars add constraint eba_ca_calendars_uk1 unique ( short_name )
    using index enable;

alter table eba_ca_calendars add constraint eba_ca_calendars_uk2 unique ( calendar_name )
    using index enable;

alter table eba_ca_calendars
    add constraint eba_ca_calendar_cc1
        check ( public_view_yn in ( 'Y', 'N' ) ) enable;

alter table eba_ca_calendars
    add constraint eba_ca_calendar_cc2
        check ( is_active_yn in ( 'Y', 'N' ) ) enable;

