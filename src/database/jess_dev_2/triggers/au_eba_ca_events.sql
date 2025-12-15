create or replace editionable trigger au_eba_ca_events after
    update on eba_ca_events
    for each row
declare
    ov varchar2(4000) := null;
    nv varchar2(4000) := null;
begin
   -- FK
    if
        updating
        and :old.type_id != :new.type_id
    then
        ov := null;
        nv := null;
        for c1 in (
            select
                type_name
            from
                eba_ca_event_types t
            where
                t.type_id = :old.type_id
        ) loop
            ov := c1.type_name;
        end loop;

        for c1 in (
            select
                type_name
            from
                eba_ca_event_types t
            where
                t.type_id = :new.type_id
        ) loop
            nv := c1.type_name;
        end loop;

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
                   'TYPE_ID',
                   ov,
                   nv );

    end if;
   --
    if nvl(:old.series_id,
           '0') != nvl(:new.series_id,
                       '0') then
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
                   'SERIES_ID',
                   :old.series_id,
                   :new.series_id );

    end if;

    if nvl(:old.event_name,
           '0') != nvl(:new.event_name,
                       '0') then
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
                   'EVENT_NAME',
                   :old.event_name,
                   :new.event_name );

    end if;

    if nvl(:old.duration,
           '0') != nvl(:new.duration,
                       '0') then
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
                   'DURATION',
                   :old.duration,
                   :new.duration );

    end if;

    if nvl(:old.event_desc,
           '0') != nvl(:new.event_desc,
                       '0') then
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
                   'EVENT_DESC',
                   :old.event_desc,
                   :new.event_desc );

    end if;

    if nvl(:old.contact_person,
           '0') != nvl(:new.contact_person,
                       '0') then
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
                   'CONTACT_PERSON',
                   :old.contact_person,
                   :new.contact_person );

    end if;

    if nvl(:old.contact_email,
           '0') != nvl(:new.contact_email,
                       '0') then
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
                   'CONTACT_EMAIL',
                   :old.contact_email,
                   :new.contact_email );

    end if;

    if nvl(:old.display_time,
           '0') != nvl(:new.display_time,
                       '0') then
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
                   'DISPLAY_TIME',
                   :old.display_time,
                   :new.display_time );

    end if;

    if nvl(:old.location,
           '0') != nvl(:new.location,
                       '0') then
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
                   'LOCATION',
                   :old.location,
                   :new.location );

    end if;

    if nvl(:old.link_name_1,
           '0') != nvl(:new.link_name_1,
                       '0') then
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
                   'LINK_NAME_1',
                   :old.link_name_1,
                   :new.link_name_1 );

    end if;

    if nvl(:old.link_url_1,
           '0') != nvl(:new.link_url_1,
                       '0') then
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
                   'LINK_URL_1',
                   :old.link_url_1,
                   :new.link_url_1 );

    end if;

    if nvl(:old.link_name_2,
           '0') != nvl(:new.link_name_2,
                       '0') then
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
                   'LINK_NAME_2',
                   :old.link_name_2,
                   :new.link_name_2 );

    end if;

    if nvl(:old.link_url_2,
           '0') != nvl(:new.link_url_2,
                       '0') then
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
                   'LINK_URL_2',
                   :old.link_url_2,
                   :new.link_url_2 );

    end if;

    if nvl(:old.link_name_3,
           '0') != nvl(:new.link_name_3,
                       '0') then
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
                   'LINK_NAME_3',
                   :old.link_name_3,
                   :new.link_name_3 );

    end if;

    if nvl(:old.link_url_3,
           '0') != nvl(:new.link_url_3,
                       '0') then
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
                   'LINK_URL_3',
                   :old.link_url_3,
                   :new.link_url_3 );

    end if;

    if nvl(:old.link_name_4,
           '0') != nvl(:new.link_name_4,
                       '0') then
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
                   'LINK_NAME_4',
                   :old.link_name_4,
                   :new.link_name_4 );

    end if;

    if nvl(:old.link_url_4,
           '0') != nvl(:new.link_url_4,
                       '0') then
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
                   'LINK_URL_4',
                   :old.link_url_4,
                   :new.link_url_4 );

    end if;

    if nvl(:old.tags,
           '0') != nvl(:new.tags,
                       '0') then
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
                   'TAGS',
                   :old.tags,
                   :new.tags );

    end if;
   -- timestamp columns
    if (
        :old.event_date_time is null
        and :new.event_date_time is not null
    )
    or (
        :old.event_date_time is not null
        and :new.event_date_time is null
    )
    or ( :old.event_date_time != :new.event_date_time ) then
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
                   'EVENT_DATE_TIME',
                   :old.event_date_time,
                   :new.event_date_time );

    end if;

end au_eba_ca_events;
/

alter trigger au_eba_ca_events enable;


-- sqlcl_snapshot {"hash":"31d5aeb22077aef82d7291420ab27db16a8506ef","type":"TRIGGER","name":"AU_EBA_CA_EVENTS","schemaName":"JESS_DEV_2","sxml":""}