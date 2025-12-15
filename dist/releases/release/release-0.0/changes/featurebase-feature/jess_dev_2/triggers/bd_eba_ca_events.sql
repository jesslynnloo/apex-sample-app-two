-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789868829 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\bd_eba_ca_events.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/bd_eba_ca_events.sql:null:8b92ac56014ed5c65b4a66a5a9eb6ea14a794b7b:create

create or replace editionable trigger bd_eba_ca_events before
    delete on eba_ca_events
    for each row
begin
    eba_ca_fw.tag_sync(
        p_new_tags     => null,
        p_old_tags     => :old.tags,
        p_content_type => 'EVENT',
        p_content_id   => :old.event_id
    );
end;
/

alter trigger bd_eba_ca_events enable;

