-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789867854 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_users.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_users.sql:null:ed1564a652cef0ebb778809ccb6b5687e55fc4a1:create

create table eba_ca_users (
    id              number not null enable,
    username        varchar2(255 byte) not null enable,
    access_level_id number not null enable,
    account_locked  varchar2(1 byte) not null enable,
    restricted_to   varchar2(4000 byte),
    row_version     number,
    created_by      varchar2(255 byte) not null enable,
    created         timestamp(6) with time zone,
    updated_by      varchar2(255 byte),
    updated         timestamp(6) with time zone
);

alter table eba_ca_users
    add constraint eba_ca_users_acc_locked_ck
        check ( account_locked in ( 'Y', 'N' ) ) enable;

alter table eba_ca_users
    add constraint eba_ca_users_pk primary key ( id )
        using index enable;

alter table eba_ca_users
    add constraint eba_ca_users_username_ck check ( upper(username) = username ) enable;

