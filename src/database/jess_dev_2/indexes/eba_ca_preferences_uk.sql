create unique index eba_ca_preferences_uk on
    eba_ca_preferences (
        preference_name
    );


-- sqlcl_snapshot {"hash":"b91f750da9fdf45bf46be606a61e7455129e0fda","type":"INDEX","name":"EBA_CA_PREFERENCES_UK","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_PREFERENCES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_PREFERENCES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PREFERENCE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}