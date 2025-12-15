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


-- sqlcl_snapshot {"hash":"e427fb3becca095b82e006a0cc5041fc332c9b2c","type":"TRIGGER","name":"AD_EBA_CA_EVENTS","schemaName":"JESS_DEV_2","sxml":""}