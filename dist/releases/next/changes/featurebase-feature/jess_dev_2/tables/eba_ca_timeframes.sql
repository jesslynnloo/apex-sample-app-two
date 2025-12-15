-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789867446 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_timeframes.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_timeframes.sql:null:b70f414c3046c17dca4eaaad7a031dfea1510c88:create

create table eba_ca_timeframes (
    tf_id           number not null enable,
    tf_name         varchar2(255 byte) not null enable,
    start_date      date not null enable,
    end_date        date not null enable,
    created_on      timestamp(6) with time zone not null enable,
    created_by      varchar2(255 byte) not null enable,
    last_updated_on timestamp(6) with time zone,
    last_updated_by varchar2(255 byte)
);

alter table eba_ca_timeframes
    add constraint eba_ca_timeframes_pk primary key ( tf_id )
        using index enable;

alter table eba_ca_timeframes add constraint eba_ca_timeframes_uk unique ( tf_name )
    using index enable;

