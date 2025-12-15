create index eba_ca_notes_i1 on
    eba_ca_notes (
        event_id
    );


-- sqlcl_snapshot {"hash":"f055676b00b7eebe3b110a6fffba12b04189a418","type":"INDEX","name":"EBA_CA_NOTES_I1","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_NOTES_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_NOTES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EVENT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}