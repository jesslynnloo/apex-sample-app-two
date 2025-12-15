-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789867682 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_tz_pref.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_tz_pref.sql:null:35fdd6875acd1f0c0658c353997b5901975be0b9:create

create table eba_ca_tz_pref (
    id                  number not null enable,
    row_version_number  number(*, 0),
    userid              varchar2(255 byte) not null enable,
    timezone_preference varchar2(255 byte) not null enable,
    created             timestamp(6) with time zone,
    created_by          varchar2(255 byte),
    updated             timestamp(6) with time zone,
    updated_by          varchar2(255 byte)
);

alter table eba_ca_tz_pref
    add constraint eba_ca_tz_pref_pk primary key ( id )
        using index enable;

