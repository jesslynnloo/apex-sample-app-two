-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789864884 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_email_groups.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_email_groups.sql:null:a2f99b6d88f05baddaf94d9c37248fab72186509:create

create table eba_ca_email_groups (
    group_id        number not null enable,
    group_name      varchar2(255 byte) not null enable,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_email_groups
    add constraint eba_ca_email_groups_pk primary key ( group_id )
        using index enable;

alter table eba_ca_email_groups add constraint eba_ca_email_groups_uk unique ( group_name )
    using index enable;

