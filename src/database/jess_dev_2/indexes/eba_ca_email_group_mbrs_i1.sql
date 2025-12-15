create index eba_ca_email_group_mbrs_i1 on
    eba_ca_email_group_mbrs (
        group_id
    );


-- sqlcl_snapshot {"hash":"c47f557553fb30d9692090173b95e1fc4a672bf5","type":"INDEX","name":"EBA_CA_EMAIL_GROUP_MBRS_I1","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_EMAIL_GROUP_MBRS_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_EMAIL_GROUP_MBRS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>GROUP_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}