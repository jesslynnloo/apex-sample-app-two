-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789866039 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_history.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_history.sql:null:2639b56cf94c9475386fc34349a7933dc3b5fe35:create

create table eba_ca_history (
    id                 number,
    row_version_number number,
    component_id       number,
    component_rowkey   varchar2(30 byte),
    table_name         varchar2(60 byte) not null enable,
    column_name        varchar2(60 byte) not null enable,
    old_value          varchar2(4000 byte),
    new_value          varchar2(4000 byte),
    change_date        timestamp(6) with time zone,
    changed_by         varchar2(255 byte)
);

alter table eba_ca_history
    add constraint eba_ca_history_pk primary key ( id )
        using index enable;

