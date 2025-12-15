create unique index eba_ca_users_uk on
    eba_ca_users (
        username
    );


-- sqlcl_snapshot {"hash":"37947bbaec396eab930a5570481e4cc53e4e435a","type":"INDEX","name":"EBA_CA_USERS_UK","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_USERS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>USERNAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}