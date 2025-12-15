-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789865272 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_errors.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_errors.sql:null:df2900343c04c3d0c80c95c51ac2c7f761008cda:create

create table eba_ca_errors (
    id              number not null enable,
    err_time        timestamp(6) with time zone default current_timestamp not null enable,
    app_id          number,
    app_page_id     number,
    app_user        varchar2(512 byte),
    user_agent      varchar2(4000 byte),
    ip_address      varchar2(512 byte),
    ip_address2     varchar2(512 byte),
    message         varchar2(4000 byte),
    page_item_name  varchar2(255 byte),
    region_id       number,
    column_alias    varchar2(255 byte),
    row_num         number,
    apex_error_code varchar2(255 byte),
    ora_sqlcode     number,
    ora_sqlerrm     varchar2(4000 byte),
    error_backtrace varchar2(4000 byte)
);

alter table eba_ca_errors
    add constraint eba_ca_errors_pk primary key ( id )
        using index enable;

