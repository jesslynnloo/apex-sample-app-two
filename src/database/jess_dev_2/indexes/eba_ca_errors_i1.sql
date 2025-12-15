create index eba_ca_errors_i1 on
    eba_ca_errors ( sys_extract_utc(err_time) );


-- sqlcl_snapshot {"hash":"6a7b7bbd6f719f1e7aff918346ab10827d429700","type":"INDEX","name":"EBA_CA_ERRORS_I1","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_ERRORS_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_ERRORS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>SYS_EXTRACT_UTC(\"ERR_TIME\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}