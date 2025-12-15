-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789866196 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_notes.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_notes.sql:null:cd63f8c3d09c75b088dd66a41bac02960d3070f7:create

create table eba_ca_notes (
    id                 number,
    row_version_number number not null enable,
    event_id           number,
    note               clob,
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_ca_notes
    add constraint eba_ca_notes_pk primary key ( id )
        using index enable;

