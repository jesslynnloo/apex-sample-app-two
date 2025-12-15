create or replace package eba_ca_sample_data as
    procedure load;

    procedure remove;

    function is_loaded return boolean;

end eba_ca_sample_data;
/


-- sqlcl_snapshot {"hash":"1f227d7b84f473ef1862ce51daae52af958499b3","type":"PACKAGE_SPEC","name":"EBA_CA_SAMPLE_DATA","schemaName":"JESS_DEV_2","sxml":""}