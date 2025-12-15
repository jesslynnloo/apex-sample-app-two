create or replace editionable trigger ai_eba_ca_events after
    insert on eba_ca_events
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
               :new.row_key,
               :new.event_id,
               'Event Name ',
               null,
               :new.event_name );

end ai_eba_ca_events;
/

alter trigger ai_eba_ca_events enable;


-- sqlcl_snapshot {"hash":"c8db40f702cc10a0660b7543e800f08517e0ef8b","type":"TRIGGER","name":"AI_EBA_CA_EVENTS","schemaName":"JESS_DEV_2","sxml":""}