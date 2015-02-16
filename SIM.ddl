-- Generated by Oracle SQL Developer Data Modeler 4.0.3.853
--   at:        2015-02-13 12:57:53 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE SIM_Person CASCADE CONSTRAINTS ;

DROP TABLE SIM_dept CASCADE CONSTRAINTS ;

DROP TABLE SIM_participant CASCADE CONSTRAINTS ;

DROP TABLE SIM_project CASCADE CONSTRAINTS ;

CREATE TABLE SIM_Person
  (
    person_id        INTEGER NOT NULL ,
    name             VARCHAR2 (255) ,
    ssnum            INTEGER ,
    gender           VARCHAR2 (255) ,
    birth_date       DATE ,
    address          VARCHAR2 (255) ,
    city             VARCHAR2 (255) ,
    state            VARCHAR2 (255) ,
    zip              INTEGER ,
    title            VARCHAR2 (255) ,
    rating           VARCHAR2 (255) ,
    SIM_dept_dept_id INTEGER ,
    emp_id           INTEGER ,
    hire_date        DATE ,
    salary           INTEGER ,
    status           VARCHAR2 (255) ,
    bonus            INTEGER ,
    type             VARCHAR2 (255)
  ) ;
ALTER TABLE SIM_Person ADD CONSTRAINT SIM_Person_PK PRIMARY KEY ( person_id ) ;

CREATE TABLE SIM_dept
  (
    dept_id           INTEGER NOT NULL ,
    name              VARCHAR2 (255) ,
    location          VARCHAR2 (255) ,
    SIM_Person_emp_id INTEGER
  ) ;
ALTER TABLE SIM_dept ADD CONSTRAINT SIM_dept_PK PRIMARY KEY ( dept_id ) ;

CREATE TABLE SIM_participant
  (
    SIM_Person_person_id   INTEGER NOT NULL ,
    SIM_project_project_id INTEGER NOT NULL
  ) ;
ALTER TABLE SIM_participant ADD CONSTRAINT R3_PK PRIMARY KEY ( SIM_Person_person_id, SIM_project_project_id ) ;

CREATE TABLE SIM_project
  (
    project_id       INTEGER NOT NULL ,
    name             VARCHAR2 (255) ,
    SIM_dept_dept_id INTEGER
  ) ;
ALTER TABLE SIM_project ADD CONSTRAINT SIM_project_PK PRIMARY KEY ( project_id ) ;

ALTER TABLE SIM_participant ADD CONSTRAINT FK_ASS_12 FOREIGN KEY ( SIM_Person_person_id ) REFERENCES SIM_Person ( person_id ) ;

ALTER TABLE SIM_participant ADD CONSTRAINT FK_ASS_13 FOREIGN KEY ( SIM_project_project_id ) REFERENCES SIM_project ( project_id ) ;

ALTER TABLE SIM_Person ADD CONSTRAINT SIM_Person_SIM_dept_FK FOREIGN KEY ( SIM_dept_dept_id ) REFERENCES SIM_dept ( dept_id ) ;

ALTER TABLE SIM_project ADD CONSTRAINT SIM_project_SIM_dept_FK FOREIGN KEY ( SIM_dept_dept_id ) REFERENCES SIM_dept ( dept_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   1
-- WARNINGS                                 0