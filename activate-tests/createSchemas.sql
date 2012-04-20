-- POSTGRES

CREATE TABLE ENTITYWITHOUTATTRIBUTE(
  ID VARCHAR(200) PRIMARY KEY
);

CREATE TABLE CaseClassEntity (
	ID VARCHAR(200) PRIMARY KEY,
	STRINGVALUE VARCHAR(200),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200) REFERENCES ENTITYWITHOUTATTRIBUTE(ID)
);

CREATE TABLE ACTIVATETESTENTITY (
	ID VARCHAR(200) PRIMARY KEY,
	DUMMY BOOLEAN,
	INTVALUE INTEGER,
	BOOLEANVALUE BOOLEAN,
	CHARVALUE CHAR,
	STRINGVALUE VARCHAR(200),
	FLOATVALUE DOUBLE PRECISION,
	DOUBLEVALUE DOUBLE PRECISION,
	BIGDECIMALVALUE DECIMAL,
	DATEVALUE TIMESTAMP,
	JODAINSTANTVALUE TIMESTAMP,
	CALENDARVALUE TIMESTAMP,
	BYTEARRAYVALUE bytea,
  SERIALIZABLEENTITYVALUE bytea,
	ENTITYVALUE VARCHAR(200) REFERENCES ACTIVATETESTENTITY(ID),
	TRAITVALUE1 VARCHAR(200),
	TRAITVALUE2 VARCHAR(200),
	LAZYVALUE VARCHAR(200),
	ENUMERATIONVALUE VARCHAR(200),
  OPTIONVALUE VARCHAR(200),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200) REFERENCES ENTITYWITHOUTATTRIBUTE(ID),
  CASECLASSENTITYVALUE VARCHAR(200) REFERENCES CaseClassEntity(ID)
);

ALTER TABLE CASECLASSENTITY ADD ENTITYVALUE VARCHAR(200) REFERENCES ACTIVATETESTENTITY(ID);

CREATE TABLE TRAITATTRIBUTE1 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE TRAITATTRIBUTE2 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE LOOPENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

CREATE TABLE LOOPENTITY2(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

/*
CREATE TABLE ABSTRACTENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200)
);*/

CREATE TABLE CONCRETEENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);

CREATE TABLE CONCRETESUBCLASSENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);




-- MYSQL

CREATE TABLE ENTITYWITHOUTATTRIBUTE(
  ID VARCHAR(200) PRIMARY KEY
);

CREATE TABLE CaseClassEntity (
	ID VARCHAR(200) PRIMARY KEY,
	STRINGVALUE VARCHAR(200),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200) REFERENCES ENTITYWITHOUTATTRIBUTE(ID)
);

CREATE TABLE ACTIVATETESTENTITY (
	ID VARCHAR(200) PRIMARY KEY,
	DUMMY BOOLEAN,
	INTVALUE INTEGER,
	BOOLEANVALUE BOOLEAN,
	CHARVALUE CHAR,
	STRINGVALUE VARCHAR(200),
	FLOATVALUE DOUBLE,
	DOUBLEVALUE DOUBLE,
	BIGDECIMALVALUE DECIMAL,
	DATEVALUE LONG,
	JODAINSTANTVALUE LONG,
	CALENDARVALUE LONG,
	BYTEARRAYVALUE BLOB,
	ENTITYVALUE VARCHAR(200) REFERENCES ACTIVATETESTENTITY(ID),
	TRAITVALUE1 VARCHAR(200),
	TRAITVALUE2 VARCHAR(200),
	LAZYVALUE VARCHAR(200),
	ENUMERATIONVALUE VARCHAR(200),
  OPTIONVALUE VARCHAR(200),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200) REFERENCES ENTITYWITHOUTATTRIBUTE(ID),
  CASECLASSENTITYVALUE VARCHAR(200) REFERENCES CaseClassEntity(ID),
  SERIALIZABLEENTITYVALUE BLOB
);

ALTER TABLE CASECLASSENTITY ADD ENTITYVALUE VARCHAR(200) REFERENCES ACTIVATETESTENTITY(ID);

CREATE TABLE TRAITATTRIBUTE1 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE TRAITATTRIBUTE2 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE LOOPENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

CREATE TABLE LOOPENTITY2(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID)
);

/*
CREATE TABLE ABSTRACTENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200)
);*/

CREATE TABLE CONCRETEENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);

CREATE TABLE CONCRETESUBCLASSENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200) REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);


-- ORACLE

DROP USER ACTIVATE_TEST CASCADE;
CREATE USER ACTIVATE_TEST IDENTIFIED BY ACTIVATE_TEST;
GRANT DBA TO ACTIVATE_TEST;

DROP TABLE ACTIVATETESTENTITY;
DROP TABLE TRAITATTRIBUTE1;
DROP TABLE TRAITATTRIBUTE2;
DROP TABLE ENTITYWITHOUTATTRIBUTE;
DROP TABLE CONCRETESUBCLASSENTITY;
DROP TABLE ABSTRACTENTITY;
DROP TABLE LOOPENTITY;
DROP TABLE LOOPENTITY2;
DROP TABLE CONCRETEENTITY;
DROP TABLE ABSTRACTENTITY;
DROP TABLE CONCRETEENTITY;
DROP TABLE CONCRETESUBCLASSENTITY;

CREATE TABLE ACTIVATETESTENTITY (
	ID VARCHAR(200) PRIMARY KEY,
	DUMMY NUMBER(1),
	INTVALUE INTEGER,
	BOOLEANVALUE NUMBER(1),
	CHARVALUE CHAR,
	STRINGVALUE VARCHAR(200),
	FLOATVALUE REAL,
	DOUBLEVALUE DOUBLE PRECISION,
	BIGDECIMALVALUE DECIMAL,
	DATEVALUE TIMESTAMP,
	CALENDARVALUE TIMESTAMP,
	BYTEARRAYVALUE BLOB,
	ENTITYVALUE VARCHAR(200),-- REFERENCES ACTIVATETESTENTITY(ID),
	TRAITVALUE1 VARCHAR(200),
	TRAITVALUE2 VARCHAR(200),
	LAZYVALUE VARCHAR(200),
	JODAINSTANTVALUE TIMESTAMP,
	ENUMERATIONVALUE VARCHAR(200),
  OPTIONVALUE VARCHAR(200),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200), -- REFERENCES ENTITYWITHOUTATTRIBUTE(ID),
  CASECLASSENTITYVALUE VARCHAR(200),-- REFERENCES CASECLASSENTITY(ID)
  SERIALIZABLEENTITYVALUE BLOB
);

CREATE TABLE TRAITATTRIBUTE1 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE TRAITATTRIBUTE2 (
	ID VARCHAR(200) PRIMARY KEY,
	ATTRIBUTE VARCHAR(200)
);

CREATE TABLE LOOPENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200)-- REFERENCES LOOPENTITY(ID)
);

CREATE TABLE LOOPENTITY2(
  ID VARCHAR(200) PRIMARY KEY,
  LOOPENTITY VARCHAR(200)-- REFERENCES LOOPENTITY(ID)
);

CREATE TABLE ABSTRACTENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200)
);

CREATE TABLE CONCRETEENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);

CREATE TABLE CONCRETESUBCLASSENTITY(
  ID VARCHAR(200) PRIMARY KEY,
  COMPLEXTRAIT VARCHAR(200),
  LOOPENTITY VARCHAR(200),-- REFERENCES LOOPENTITY(ID),
  STRING1 VARCHAR(200),
  STRING2 VARCHAR(200),
  STRING3 VARCHAR(200),
  STRING4 VARCHAR(200),
  STRING5 VARCHAR(200)
);

CREATE TABLE ENTITYWITHOUTATTRIBUTE(
  ID VARCHAR(200) PRIMARY KEY
);

CREATE TABLE CaseClassEntity (
	ID VARCHAR(200) PRIMARY KEY,
	STRINGVALUE VARCHAR(200),
	ENTITYVALUE VARCHAR(200),-- REFERENCES ACTIVATETESTENTITY(ID),
  ENTITYWITHOUTATTRIBUTEVALUE VARCHAR(200)-- REFERENCES ENTITYWITHOUTATTRIBUTE(ID)
);