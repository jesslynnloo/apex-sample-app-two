-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863479 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_access_levels.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_access_levels.sql:null:b182e5ef8e03b2fe2cc093370e23815ff2a3173b:create

create table eba_ca_access_levels (
    id           number not null enable,
    access_level varchar2(30 byte) not null enable,
    row_version  number
);

alter table eba_ca_access_levels
    add constraint eba_ca_access_levels_pk primary key ( id )
        using index enable;

alter table eba_ca_access_levels
    add constraint eba_ca_acc_lvl_acc_lvl_ck
        check ( access_level in ( 'Administrator', 'Contributor', 'Reader' ) ) enable;

