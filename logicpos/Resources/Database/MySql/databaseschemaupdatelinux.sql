
UPDATE cfg_configurationpreferenceparameter SET `Value` = 'True' WHERE (`Oid` = '9c13f51b-8321-4bca-a20f-fcbf38a6e073');

INSERT IGNORE INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('fecd4dbb-99cd-4adf-9f29-f8fbacce5fd1',1860,1860,'BACKOFFICE_MAN_SYSTEM_EXPORT_ARTICLES_MENU','BackOffice :: System :: Export Articles :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);

INSERT IGNORE INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('e959719b-6328-4b86-b642-1d39586df693',1870,1870,'BACKOFFICE_MAN_SYSTEM_EXPORT_COSTUMERS_MENU','BackOffice :: System :: Export Costumers :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);

INSERT IGNORE INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('f4a0d9ff-4ee8-4788-a9f3-1e42be16de19',1880,1880,'BACKOFFICE_MAN_SYSTEM_IMPORT_ARTICLES_MENU','BackOffice :: System :: Import Articles :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);

INSERT IGNORE INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('c2e40369-19af-47a4-b1dd-5eab3e3867ed',1890,1890,'BACKOFFICE_MAN_SYSTEM_IMPORT_COSTUMERS_MENU','BackOffice :: System :: Import Costumers :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);

INSERT IGNORE INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('4109bc91-d406-4bda-b60f-d90d1bbdd098',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','fecd4dbb-99cd-4adf-9f29-f8fbacce5fd1');

INSERT IGNORE INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('fc530f50-9717-4bd1-a551-0722fde18979',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','e959719b-6328-4b86-b642-1d39586df693');

INSERT IGNORE INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('9496781a-28d4-4489-96bd-d639ea9731ac',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','f4a0d9ff-4ee8-4788-a9f3-1e42be16de19');

INSERT IGNORE INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('ce5b2994-42d7-45b2-9f16-14d0b0f440ea',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','c2e40369-19af-47a4-b1dd-5eab3e3867ed');

--ALTER IGNORE TABLE pos_configurationplaceterminal MODIFY HardwareId VARCHAR(120);
--ALTER IGNORE TABLE pos_configurationplaceterminal ADD ThermalPrinter VARCHAR(36);

UPDATE cfg_configurationpreferenceparameter SET inputtype = '4' WHERE token = 'CULTURE';

alter table [sys_configurationpoledisplay] ADD [COM] nvarchar(10);

INSERT IGNORE INTO cfg_configurationpreferenceparameter (Oid,Disabled,Ord,Code,Token,Value,ValueTip,Required,RegEx,ResourceString,ResourceStringInfo,FormType,FormPageNo,InputType) VALUES ('bc0bc5df-4c01-462a-81b7-9051a7869574',NULL,590,590,'USE_CC_DAILY_TICKET','False','true | false',1,'RegexBoolean','prefparam_use_ccdailyticket',NULL,2,1,3)