-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789871655 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\triggers\eba_ca_users_bd.sql
-- sqlcl_snapshot src/database/jess_dev_2/triggers/eba_ca_users_bd.sql:null:9246de26786fd3de5539ea22d368f0049bf67b9a:create

create or replace editionable trigger eba_ca_users_bd before
    delete on eba_ca_users
    for each row
declare
    pragma autonomous_transaction;
begin
    -- Disallow deletes to a user's own record unless last one.
    if v('APP_USER') = upper(:old.username) then
        for c1 in (
            select
                count(*) cnt
            from
                eba_ca_users
            where
                id != :old.id
        ) loop
            if c1.cnt > 0 then
                raise_application_error(-20002, 'Delete disallowed, you cannot delete your own access control details.');
            end if;
        end loop;

    end if;
end;
/

alter trigger eba_ca_users_bd enable;

