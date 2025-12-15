-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789865421 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_event_types.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_event_types.sql:null:4a2b7436d85dcf2752ea58f87ed9fe96893a6059:create

create table eba_ca_event_types (
    type_id         number not null enable,
    type_name       varchar2(60 byte) not null enable,
    display_color   varchar2(60 byte),
    border_color    varchar2(30 byte),
    text_color      varchar2(30 byte),
    internal_yn     varchar2(1 byte),
    is_active_yn    varchar2(1 byte),
    color_pref_id   number,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_event_types
    add constraint eba_ca_event_types_pk primary key ( type_id )
        using index enable;

alter table eba_ca_event_types add constraint eba_ca_event_types_uk unique ( type_name )
    using index enable;

