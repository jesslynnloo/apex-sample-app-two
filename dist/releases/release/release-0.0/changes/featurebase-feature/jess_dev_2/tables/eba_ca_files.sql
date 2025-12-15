-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789865888 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_files.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_files.sql:null:a8d1dfed6e209ea2169faf01ac9adab12d091efb:create

create table eba_ca_files (
    id                 number,
    row_version_number number,
    event_id           number,
    filename           varchar2(4000 byte),
    file_mimetype      varchar2(512 byte),
    file_charset       varchar2(512 byte),
    file_blob          blob,
    file_comments      varchar2(4000 byte),
    tags               varchar2(4000 byte),
    created            timestamp(6) with time zone,
    created_by         varchar2(255 byte),
    updated            timestamp(6) with time zone,
    updated_by         varchar2(255 byte)
);

alter table eba_ca_files
    add constraint eba_ca_files_pk primary key ( id )
        using index enable;

