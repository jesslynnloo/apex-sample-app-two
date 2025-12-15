-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789864649 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_email_group_mbrs.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_email_group_mbrs.sql:null:8c0c1b66b9d77b780a09bbd75f11b07235c0b86f:create

create table eba_ca_email_group_mbrs (
    mbr_id          number not null enable,
    group_id        number not null enable,
    email_address   varchar2(255 byte) not null enable,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_email_group_mbrs
    add constraint eba_ca_email_group_mbrs_pk primary key ( mbr_id )
        using index enable;

alter table eba_ca_email_group_mbrs
    add constraint eba_ca_email_group_mbrs_uk unique ( group_id,
                                                       email_address )
        using index enable;

