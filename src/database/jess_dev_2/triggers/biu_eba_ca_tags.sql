create or replace editionable trigger biu_eba_ca_tags before
    insert or update on eba_ca_tags
    for each row
begin
    if inserting then
        if :new.id is null then
            select
                to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
            into :new.id
            from
                dual;

        end if;

        :new.created := current_timestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

    if updating then
        :new.updated := current_timestamp;
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger biu_eba_ca_tags enable;


-- sqlcl_snapshot {"hash":"4f69d6d51d99b114a629cd8e7328536cc2b84cc0","type":"TRIGGER","name":"BIU_EBA_CA_TAGS","schemaName":"JESS_DEV_2","sxml":""}