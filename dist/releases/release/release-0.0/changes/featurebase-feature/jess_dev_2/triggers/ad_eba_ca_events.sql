-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789868184 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\ad_eba_ca_events.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/ad_eba_ca_events.sql:null:b116867798863732d1b8d79cc7ce39fe667e59f5:create

create or replace editionable trigger ad_eba_ca_events after
    delete on eba_ca_events
    for each row
begin
    insert into eba_ca_history (
        table_name,
        component_rowkey,
        component_id,
        column_name,
        old_value,
        new_value
    ) values ( 'EVENTS',
               :old.row_key,
               :old.event_id,
               'DELETE',
               null,
               'Removed event ' || :old.event_name );

end ad_eba_ca_events;
/

alter trigger ad_eba_ca_events enable;

