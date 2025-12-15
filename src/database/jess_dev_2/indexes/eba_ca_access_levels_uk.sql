create unique index eba_ca_access_levels_uk on
    eba_ca_access_levels (
        access_level
    );


-- sqlcl_snapshot {"hash":"df6f5f7d02d94fe0d5f2132cd53b68f9a8839116","type":"INDEX","name":"EBA_CA_ACCESS_LEVELS_UK","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_ACCESS_LEVELS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_ACCESS_LEVELS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}