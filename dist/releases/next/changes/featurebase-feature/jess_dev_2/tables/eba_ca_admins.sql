-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863701 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_admins.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_admins.sql:null:f8ca1f1dfa10e67e9593da37f9b7f80a28dd4ae7:create

create table eba_ca_admins (
    admin_id        number not null enable,
    admin_username  varchar2(255 byte) not null enable,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_admins
    add constraint eba_ca_admins_pk primary key ( admin_id )
        using index enable;

alter table eba_ca_admins add constraint eba_ca_admins_uk unique ( admin_username )
    using index enable;

