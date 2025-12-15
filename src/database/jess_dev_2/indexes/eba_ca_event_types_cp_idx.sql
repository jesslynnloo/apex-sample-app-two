create index eba_ca_event_types_cp_idx on
    eba_ca_event_types (
        color_pref_id
    );


-- sqlcl_snapshot {"hash":"d17b3ea964d38fcb12c1e806aa9164fbeeb5a869","type":"INDEX","name":"EBA_CA_EVENT_TYPES_CP_IDX","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_EVENT_TYPES_CP_IDX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_EVENT_TYPES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>COLOR_PREF_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}