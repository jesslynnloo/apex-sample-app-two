-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789866941 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_tags.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_tags.sql:null:c57bcdf5bbbbc19ce6908223e483a1b56db01337:create

create table eba_ca_tags (
    id           number,
    tag          varchar2(255 byte) not null enable,
    content_id   number,
    content_type varchar2(30 byte),
    created      timestamp(6) with time zone,
    created_by   varchar2(255 byte),
    updated      timestamp(6) with time zone,
    updated_by   varchar2(255 byte)
);

alter table eba_ca_tags
    add constraint eba_ca_tags_ck
        check ( content_type in ( 'EVENT', 'NOTES', 'FILE' ) ) enable;

alter table eba_ca_tags add primary key ( id )
    using index enable;

