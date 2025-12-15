-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789867301 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\tables\eba_ca_tags_type_sum.sql
-- sqlcl_snapshot src/database/jess_dev_2/tables/eba_ca_tags_type_sum.sql:null:317538b27d1a1f6602c1119439be19e8bef910bb:create

create table eba_ca_tags_type_sum (
    tag          varchar2(255 byte),
    content_type varchar2(30 byte),
    tag_count    number
);

alter table eba_ca_tags_type_sum
    add constraint eba_ca_tags_type_sum_pk primary key ( tag,
                                                         content_type )
        using index enable;

