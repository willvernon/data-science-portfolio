CREATE TABLE IF NOT EXISTS FrontOffice (
  FrontOfficeID uuid NOT NULL PRIMARY KEY,
  Title bigint NOT NULL,
  Department varchar(500) NOT NULL,
  Salary money NOT NULL,
  DateJoined date NOT NULL,
  Phone varchar(500),
  Email varchar(500) NOT NULL,
  OfficeLocation varchar(500) NOT NULL,
  IsActive varchar(500) NOT NULL,
  ReportsTo uuid
);

COMMENT ON COLUMN FrontOffice."IsActive" IS 'Is Loyal BOOLEAN';

CREATE TABLE IF NOT EXISTS Players (
  PlayerID uuid NOT NULL PRIMARY KEY,
  Name varchar(500) NOT NULL,
  Unit varchar(500),
  JerseyNumber bigint,
  Position bigint NOT NULL,
  DateJoined date NOT NULL,
  BirthDate date NOT NULL,
  Height bigint NOT NULL,
  Weight integer NOT NULL,
  YearsPro bigint NOT NULL,
  College varchar(500) NOT NULL,
  Drafted bigint NOT NULL,
  Phone varchar(500) NOT NULL,
  Email varchar(500) NOT NULL,
  OfficeLocation varchar(500),
  IsActive varchar(500) NOT NULL,
  ReportsTo uuid NOT NULL,
  ContractID uuid NOT NULL
);

CREATE TABLE IF NOT EXISTS PlayerContracts (
  ContractID uuid NOT NULL PRIMARY KEY,
  Unit varchar(500),
  ContractStartYear date NOT NULL,
  ContractEndYear date NOT NULL,
  AverageAnnualSalary money NOT NULL,
  TotalgGuaranteed money NOT NULL,
  Bonus bigint NOT NULL,
  BonusIncentives varchar(500),
  ContractStatus varchar(500) NOT NULL,
  ContractType varchar(500) NOT NULL,
  DeadCap money,
  PlayerID uuid NOT NULL
);

CREATE TABLE IF NOT EXISTS FootballOperations (
  FootballOperationsID uuid NOT NULL PRIMARY KEY,
  Title bigint NOT NULL,
  Department varchar(500) NOT NULL,
  Salary money NOT NULL,
  DateJoined date NOT NULL,
  Phone varchar(500),
  Email varchar(500) NOT NULL,
  OfficeLocation varchar(500) NOT NULL,
  IsActive varchar(500) NOT NULL,
  ReportsTo uuid
);

COMMENT ON COLUMN FootballOperations."IsActive" IS 'Is Loyal BOOLEAN';

CREATE TABLE IF NOT EXISTS PlayerSupport (
  PlayerSupportID uuid NOT NULL PRIMARY KEY,
  Title bigint NOT NULL,
  Department varchar(500) NOT NULL,
  Salary money NOT NULL,
  DateJoined date NOT NULL,
  Phone varchar(500),
  Email varchar(500) NOT NULL,
  OfficeLocation varchar(500) NOT NULL,
  IsActive varchar(500) NOT NULL,
  ReportsTo uuid
);

COMMENT ON COLUMN PlayerSupport."IsActive" IS 'Is Loyal BOOLEAN';

CREATE TABLE IF NOT EXISTS BusinessOperations (
  Business_OperationsID uuid NOT NULL PRIMARY KEY,
  Title bigint NOT NULL,
  Department varchar(500) NOT NULL,
  Salary money NOT NULL,
  DateJoined date NOT NULL,
  Phone varchar(500),
  Email varchar(500) NOT NULL,
  OfficeLocation varchar(500) NOT NULL,
  IsActive varchar(500) NOT NULL,
  ReportsTo uuid
);

COMMENT ON COLUMN BusinessOperations."IsActive" IS 'Is Loyal BOOLEAN';

ALTER TABLE PlayerContracts ADD CONSTRAINT Player_Contracts_ContractID_fk FOREIGN KEY (ContractID) REFERENCES Players (ContractID);
ALTER TABLE Players ADD CONSTRAINT Players_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FootballOperations (FootballOperationsID);
ALTER TABLE FootballOperations ADD CONSTRAINT FootballOperations_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FrontOffice (FrontOfficeID);
ALTER TABLE BusinessOperations ADD CONSTRAINT BusinessOperations_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FrontOffice (FrontOfficeID);
ALTER TABLE PlayerSupport ADD CONSTRAINT PlayerSupport_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FootballOperations (FootballOperationsID);
ALTER TABLE FrontOffice ADD CONSTRAINT FrontOffice_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FrontOffice (FrontOfficeID);
ALTER TABLE FootballOperations ADD CONSTRAINT FootballOperations_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES FootballOperations (FootballOperationsID);
ALTER TABLE PlayerSupport ADD CONSTRAINT PlayerSupport_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES PlayerSupport (PlayerSupportID);
ALTER TABLE BusinessOperations ADD CONSTRAINT BusinessOperations_ReportsTo_fk FOREIGN KEY (ReportsTo) REFERENCES BusinessOperations (Business_OperationsID);
