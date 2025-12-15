-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789864416 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_color_prefs.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_color_prefs.sql:null:0ff12482ee9268ae4f22beea1d61498d482f5b02:create

create table eba_ca_color_prefs (
    id                 number not null enable,
    row_version_number number,
    color_name         varchar2(255 byte) not null enable,
    bg_color           varchar2(255 byte),
    text_color         varchar2(255 byte),
    attr_01            varchar2(255 byte),
    attr_02            varchar2(255 byte),
    display_sequence   number,
    created_by         varchar2(255 byte) not null enable,
    created            timestamp(6) with time zone,
    updated_by         varchar2(255 byte) not null enable,
    updated            timestamp(6) with time zone
);

alter table eba_ca_color_prefs
    add constraint eba_ca_colorpref_pk primary key ( id )
        using index enable;

alter table eba_ca_color_prefs add constraint eba_ca_color_prefs_uk unique ( color_name )
    using index enable;

