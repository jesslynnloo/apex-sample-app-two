-- liquibase formatted sql
-- changeset JESS_DEV_2:1765789863400 stripComments:false  logicalFilePath:featurebase-feature\jess_dev_2\sequences\eba_ca_seq.sql
-- sqlcl_snapshot src/database/jess_dev_2/sequences/eba_ca_seq.sql:null:a1386d213fc1ab1974d61342675bbc6f5819e15b:create

create sequence eba_ca_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder nocycle
nokeep noscale global;

