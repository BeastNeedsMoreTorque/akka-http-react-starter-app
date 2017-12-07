CREATE TABLE IF NOT EXISTS USER(ID BIGINT auto_increment primary key, EMAIL VARCHAR(255), PASSWORD VARCHAR(255));

CREATE TABLE IF NOT EXISTS WALLET(ID BIGINT primary key, BALANCE DECIMAL);


INSERT INTO USER(EMAIL, PASSWORD) SELECT 'adam@cpuheater.com', 'pass' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM USER WHERE id = 1);
INSERT INTO USER(EMAIL, PASSWORD) SELECT 'ewa@cpuheater.com', 'pass' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM USER WHERE id = 2);


INSERT INTO WALLET(ID, BALANCE) SELECT 1, 500 FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM WALLET WHERE id = 1);
INSERT INTO WALLET(ID, BALANCE) SELECT 2, 2000 FROM DUAL WHERE NOT EXISTS (SELECT 2 FROM WALLET WHERE id = 2);
