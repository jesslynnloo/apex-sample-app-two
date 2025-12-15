-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789865104 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_error_lookup.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_error_lookup.sql:null:8b8fb6a42b6f4855ca8fbd4a9655794e1eeaaa8c:create

create table eba_ca_error_lookup (
    constraint_name varchar2(30 byte) not null enable,
    message         varchar2(4000 byte) not null enable,
    language_code   varchar2(30 byte) not null enable
);

alter table eba_ca_error_lookup
    add constraint eba_ca_error_lookup_pk primary key ( constraint_name )
        using index enable;

