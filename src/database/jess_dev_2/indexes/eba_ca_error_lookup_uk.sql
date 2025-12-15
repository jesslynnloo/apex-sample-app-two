create unique index eba_ca_error_lookup_uk on
    eba_ca_error_lookup (
        constraint_name,
        language_code
    );


-- sqlcl_snapshot {"hash":"54fd5e5208d7a5fd7eefc89010ceab33f71c9ddd","type":"INDEX","name":"EBA_CA_ERROR_LOOKUP_UK","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_ERROR_LOOKUP_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_ERROR_LOOKUP</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CONSTRAINT_NAME</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LANGUAGE_CODE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}