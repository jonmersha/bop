
CREATE TABLE Document(
  documentID INT PRIMARY KEY auto_increment,
  documentName VARCHAR(200),
  docuemntDescription VARCHAR(500),
  documentImagePath VARCHAR(50),
  isPublic BOOLEAN,
  docuemntCategory varchar(50),
  uploadDate DATE
);
create table DocuemntSection(
  docuemntID int,
  sectionId int,
  sectionName varchar(200),
  sectionDescription varchar(200);
  docuemntPath VARCHAR(50)
)

CREATE TABLE DocuemntToBranchOperationLink(
  docuemntID INT,
  serviceID  INT
);


CREATE TABLE branch_operation(
serviceID INT PRIMARY KEY auto_increment,
serviceName VARCHAR(100),
serviceDescritpyion VARCHAR(100),
serviceIconPath VARCHAR(50),
serviceCreateTime TIMESTAMP,
serviceCreator INT
);



CREATE TABLE ServiceDetail(
serviceID INT PRIMARY KEY auto_increment,
parentServcieID INT, 
servieName VARCHAR(100),
seviceVARCHAR(1000),
LOAN_DESC VARCHAR(500)

);

CREATE TABLE LOAN_DOC(
	REQ_ID INT PRIMARY KEY,
  LOAN_TYPE INT,
	DOC_NAME VARCHAR(100),
	DOC_DESC VARCHAR(500)
    
);

CREATE TABLE OU_TYPE(
  ORG_TYPE_ID INT PRIMARY KEY auto_increment,
  ORGAN_NAME VARCHAR(200),
  ORG_TYPE_DESC VARCHAR(200)
);

CREATE TABLE OU(
  ORGAN_ID INT PRIMARY KEY auto_increment,
  ORGAN_TYPE INT,
  ORGAN_NAME VARCHAR(200),
  LAT_LANG VARCHAR(100)
);

CREATE TABLE BOP_OPERATOR(
  ID INT PRIMARY KEY auto_increment,
  FIRST_NAME VARCHAR(100),
  MIDLE_NAME VARCHAR(100),
  LAST_NAME VARCHAR(100),
  UNIT_ID INT,
  AUTHRIZED BOOLEAN,
  OU INT,
  AUTHORIZER INT,
  AUTH_TIME timestamp
);

CREATE TABLE POST_DOC_REQ(
	ID INT PRIMARY KEY auto_increment,
    DOC_NAME VARCHAR(200),
    PUPSE_DESC VARCHAR(500)
)


INSERT INTO `branch_operation` (`serviceName`, `serviceDescritpyion`, `serviceIconPath`, `serviceCreateTime`, `serviceCreator`) VALUES ('credit Operations', 'credit Operation description @ Branch', 'service/loan.png', current_timestamp(), '12');
INSERT INTO `Document`( `documentName`, `docuemntDescription`, `docuemntPath`, `documentImagePath`, `isPublic`, `docuemntCategory`, `uploadDate` ) VALUES( 'CAO', 'Customer Account Operations', 'bank/cao.pd', 'coop.jpg', '1', 'bank', '2022-08-30' )