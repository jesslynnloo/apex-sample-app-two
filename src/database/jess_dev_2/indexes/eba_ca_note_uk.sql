create unique index eba_ca_note_uk on
    eba_ca_notifications (
        notification_name
    );


-- sqlcl_snapshot {"hash":"c70ef5f5fa94589e44949d882db741d6b4cb6a75","type":"INDEX","name":"EBA_CA_NOTE_UK","schemaName":"JESS_DEV_2","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>JESS_DEV_2</SCHEMA>\n   <NAME>EBA_CA_NOTE_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>JESS_DEV_2</SCHEMA>\n         <NAME>EBA_CA_NOTIFICATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>NOTIFICATION_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}