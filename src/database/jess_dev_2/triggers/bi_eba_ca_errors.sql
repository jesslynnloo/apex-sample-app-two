create or replace editionable trigger bi_eba_ca_errors before
    insert or update on eba_ca_errors
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;
end;
/

alter trigger bi_eba_ca_errors enable;


-- sqlcl_snapshot {"hash":"be87f2d39ac7b7cc005a74954cb34e40ed335281","type":"TRIGGER","name":"BI_EBA_CA_ERRORS","schemaName":"JESS_DEV_2","sxml":""}