create index eba_ca_users_acc_lvl_idx on
    eba_ca_users (
        access_level_id
    );


-- sqlcl_snapshot {"hash":"613a6eb698c7de37e62dd1fc70dab5aa233e98f3","type":"INDEX","name":"EBA_CA_USERS_ACC_LVL_IDX","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_USERS_ACC_LVL_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_USERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCESS_LEVEL_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}