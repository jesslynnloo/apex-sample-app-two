-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789862448 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\package_specs\eba_ca_sample_data.sql
-- sqlcl_snapshot src/database/jess_dev_2/package_specs/eba_ca_sample_data.sql:null:1f227d7b84f473ef1862ce51daae52af958499b3:create

create or replace package eba_ca_sample_data as
    procedure load;

    procedure remove;

    function is_loaded return boolean;

end eba_ca_sample_data;
/

