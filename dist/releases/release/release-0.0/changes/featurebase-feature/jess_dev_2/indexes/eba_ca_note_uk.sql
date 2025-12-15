-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789859484 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\indexes\eba_ca_note_uk.sql
-- sqlcl_snapshot src/database/jess_dev_2/indexes/eba_ca_note_uk.sql:null:c70ef5f5fa94589e44949d882db741d6b4cb6a75:create

create unique index eba_ca_note_uk on
    eba_ca_notifications (
        notification_name
    );

