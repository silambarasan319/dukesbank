// Drop tables for the Duke's Bank online banking sample application.

ALTER TABLE TX DROP CONSTRAINT fk_tx_account_id;
ALTER TABLE CUSTOMER_ACCOUNT_XREF DROP CONSTRAINT fk_customer_id;
ALTER TABLE CUSTOMER_ACCOUNT_XREF DROP CONSTRAINT fk_account_id;
ALTER TABLE ACCOUNT DROP CONSTRAINT pk_account;
ALTER TABLE CUSTOMER DROP CONSTRAINT pk_customer;
ALTER TABLE TX DROP CONSTRAINT pk_tx;
ALTER TABLE NEXT_ID DROP CONSTRAINT pk_next_id;

DROP TABLE TX;
DROP TABLE CUSTOMER_ACCOUNT_XREF;
DROP TABLE ACCOUNT;
DROP TABLE CUSTOMER;
DROP TABLE NEXT_ID;
