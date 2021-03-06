/*  Scripts update MS SQL */

--Verificar se tabela existe
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[tablename]') AND type in (N'U')) 

--Verificar se dados existem
--if not exists (select * from tablename WHERE [nomecampo] = 'valor')

--Verificar colunas
--if not exists (select * from sys.columns where Name = N'nomecoluna' and Object_ID = Object_ID(N'nometabela'))

--Alterar nome de tabelas
--EXEC sp_rename 'old_table_name', 'new_table_name'

-- #1
GO
GO
if not exists (select * from sys_userpermissionitem WHERE [Oid] = 'fecd4dbb-99cd-4adf-9f29-f8fbacce5fd1')
INSERT INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('fecd4dbb-99cd-4adf-9f29-f8fbacce5fd1',1860,1860,'BACKOFFICE_MAN_SYSTEM_EXPORT_ARTICLES_MENU','BackOffice :: System :: Export Articles :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);
GO
if not exists (select * from sys_userpermissionitem WHERE [Oid] = 'e959719b-6328-4b86-b642-1d39586df693')
INSERT INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('e959719b-6328-4b86-b642-1d39586df693',1870,1870,'BACKOFFICE_MAN_SYSTEM_EXPORT_COSTUMERS_MENU','BackOffice :: System :: Export Costumers :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);
GO
if not exists (select * from sys_userpermissionitem WHERE [Oid] = 'f4a0d9ff-4ee8-4788-a9f3-1e42be16de19')
INSERT INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('f4a0d9ff-4ee8-4788-a9f3-1e42be16de19',1880,1880,'BACKOFFICE_MAN_SYSTEM_IMPORT_ARTICLES_MENU','BackOffice :: System :: Import Articles :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);
GO
if not exists (select * from sys_userpermissionitem WHERE [Oid] = 'c2e40369-19af-47a4-b1dd-5eab3e3867ed')
INSERT INTO sys_userpermissionitem (Oid,Ord,Code,Token,Designation,PermissionGroup,Disabled) VALUES ('c2e40369-19af-47a4-b1dd-5eab3e3867ed',1890,1890,'BACKOFFICE_MAN_SYSTEM_IMPORT_COSTUMERS_MENU','BackOffice :: System :: Import Costumers :: Menu','4c047b35-8fe5-4a4b-ac6e-59c87e0f760a',NULL);
GO
if not exists (select * from sys_userpermissionprofile WHERE [Oid] = '4109bc91-d406-4bda-b60f-d90d1bbdd098')
INSERT INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('4109bc91-d406-4bda-b60f-d90d1bbdd098',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','fecd4dbb-99cd-4adf-9f29-f8fbacce5fd1');
GO
if not exists (select * from sys_userpermissionprofile WHERE [Oid] = 'fc530f50-9717-4bd1-a551-0722fde18979')
INSERT INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('fc530f50-9717-4bd1-a551-0722fde18979',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','e959719b-6328-4b86-b642-1d39586df693');
GO
if not exists (select * from sys_userpermissionprofile WHERE [Oid] = '9496781a-28d4-4489-96bd-d639ea9731ac')
INSERT INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('9496781a-28d4-4489-96bd-d639ea9731ac',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','f4a0d9ff-4ee8-4788-a9f3-1e42be16de19');
GO
if not exists (select * from sys_userpermissionprofile WHERE [Oid] = 'ce5b2994-42d7-45b2-9f16-14d0b0f440ea')
INSERT INTO sys_userpermissionprofile (Oid,Granted,userprofile,PermissionItem) VALUES ('ce5b2994-42d7-45b2-9f16-14d0b0f440ea',1,'1626e21f-75e6-429e-b0ac-edb755e733c2','c2e40369-19af-47a4-b1dd-5eab3e3867ed');
GO

EXEC sp_rename 'CFG_ConfigurationCountry', 'cfg_configurationcountry'
EXEC sp_rename 'CFG_ConfigurationCurrency', 'cfg_configurationcurrency'
EXEC sp_rename 'CFG_ConfigurationHolidays', 'cfg_configurationholidays'
EXEC sp_rename 'CFG_ConfigurationPreferenceParameter', 'cfg_configurationpreferenceparameter'
EXEC sp_rename 'CFG_ConfigurationUnitMeasure', 'cfg_configurationunitmeasure'
EXEC sp_rename 'CFG_ConfigurationUnitSize', 'cfg_configurationunitsize'
EXEC sp_rename 'ERP_Customer', 'erp_customer'
EXEC sp_rename 'ERP_CustomerDiscountGroup', 'erp_customerdiscountgroup'
EXEC sp_rename 'ERP_CustomerType', 'erp_customertype'
EXEC sp_rename 'FIN_Article', 'fin_article'
EXEC sp_rename 'FIN_ArticleClass', 'fin_articleclass'
EXEC sp_rename 'FIN_ArticleFamily', 'fin_articlefamily'
EXEC sp_rename 'FIN_ArticleStock', 'fin_articlestock'
EXEC sp_rename 'FIN_ArticleSubFamily', 'fin_articlesubfamily'
EXEC sp_rename 'FIN_ArticleType', 'fin_articletype'
EXEC sp_rename 'FIN_ConfigurationPaymentCondition', 'fin_configurationpaymentcondition'
EXEC sp_rename 'FIN_ConfigurationPaymentMethod', 'fin_configurationpaymentmethod'
EXEC sp_rename 'FIN_ConfigurationPriceType', 'fin_configurationpricetype'
EXEC sp_rename 'FIN_ConfigurationVatExemptionReason', 'fin_configurationvatexemptionreason'
EXEC sp_rename 'FIN_ConfigurationVatRate', 'fin_configurationvatrate'
EXEC sp_rename 'FIN_DocumentFinanceCommission', 'fin_documentfinancecommission'
EXEC sp_rename 'FIN_DocumentFinanceDetail', 'fin_documentfinancedetail'
EXEC sp_rename 'FIN_DocumentFinanceDetailOrderReference', 'fin_documentfinancedetailorderreference'
EXEC sp_rename 'FIN_DocumentFinanceDetailReference', 'fin_documentfinancedetailreference'
EXEC sp_rename 'FIN_DocumentFinanceMaster', 'fin_documentfinancemaster'
EXEC sp_rename 'FIN_DocumentFinanceMasterPayment', 'fin_documentfinancemasterpayment'
EXEC sp_rename 'FIN_DocumentFinanceMasterTotal', 'fin_documentfinancemastertotal'
EXEC sp_rename 'FIN_DocumentFinancePayment', 'fin_documentfinancepayment'
EXEC sp_rename 'FIN_DocumentFinanceSeries', 'fin_documentfinanceseries'
EXEC sp_rename 'FIN_DocumentFinanceType', 'fin_documentfinancetype'
EXEC sp_rename 'FIN_DocumentFinanceYears', 'fin_documentfinanceyears'
EXEC sp_rename 'FIN_DocumentFinanceYearSerieTerminal', 'fin_documentfinanceyearserieterminal'
EXEC sp_rename 'FIN_DocumentOrderDetail', 'fin_documentorderdetail'
EXEC sp_rename 'FIN_DocumentOrderMain', 'fin_documentordermain'
EXEC sp_rename 'FIN_DocumentOrderTicket', 'fin_documentorderticket'
EXEC sp_rename 'POS_ConfigurationCashRegister', 'pos_configurationcashregister'
EXEC sp_rename 'POS_ConfigurationDevice', 'pos_configurationdevice'
EXEC sp_rename 'POS_ConfigurationKeyboard', 'pos_configurationkeyboard'
EXEC sp_rename 'POS_ConfigurationMaintenance', 'pos_configurationmaintenance'
EXEC sp_rename 'POS_ConfigurationPlace', 'pos_configurationplace'
EXEC sp_rename 'POS_ConfigurationPlaceMovementType', 'pos_configurationplacemovementtype'
EXEC sp_rename 'POS_ConfigurationPlaceTable', 'pos_configurationplacetable'
EXEC sp_rename 'POS_ConfigurationPlaceTerminal', 'pos_configurationplaceterminal'
EXEC sp_rename 'POS_UserCommissionGroup', 'pos_usercommissiongroup'
EXEC sp_rename 'POS_WorkSessionMovement', 'pos_worksessionmovement'
EXEC sp_rename 'POS_WorkSessionMovementType', 'pos_worksessionmovementtype'
EXEC sp_rename 'POS_WorkSessionPeriod', 'pos_worksessionperiod'
EXEC sp_rename 'POS_WorkSessionPeriodTotal', 'pos_worksessionperiodtotal'
EXEC sp_rename 'RPT_Report', 'rpt_report'
EXEC sp_rename 'RPT_ReportType', 'rpt_reporttype'
EXEC sp_rename 'SYS_ConfigurationInputReader', 'sys_configurationinputreader'
EXEC sp_rename 'SYS_ConfigurationPoleDisplay ', 'sys_configurationpoledisplay'
EXEC sp_rename 'SYS_ConfigurationPrinters', 'sys_configurationprinters'
EXEC sp_rename 'SYS_ConfigurationPrintersTemplates', 'sys_configurationprinterstemplates'
EXEC sp_rename 'SYS_ConfigurationPrintersType', 'sys_configurationprinterstype'
EXEC sp_rename 'SYS_ConfigurationWeighingMachine', 'sys_configurationweighingmachine'
EXEC sp_rename 'SYS_DatabaseVersion', 'sys_databaseversion'
EXEC sp_rename 'SYS_SystemAudit', 'sys_systemaudit'
EXEC sp_rename 'SYS_SystemAuditAT', 'sys_systemauditat'
EXEC sp_rename 'SYS_SystemAuditType', 'sys_systemaudittype'
EXEC sp_rename 'SYS_SystemBackup', 'sys_systembackup'
EXEC sp_rename 'SYS_SystemNotification', 'sys_systemnotification'
EXEC sp_rename 'SYS_SystemNotificationDocumentMaster', 'sys_systemnotificationdocumentmaster'
EXEC sp_rename 'SYS_SystemNotificationType', 'sys_systemnotificationtype'
EXEC sp_rename 'SYS_SystemPrint', 'sys_systemprint'
EXEC sp_rename 'SYS_UserDetail', 'sys_userdetail'
EXEC sp_rename 'SYS_UserPermissionGroup', 'sys_userpermissiongroup'
EXEC sp_rename 'SYS_UserPermissionItem', 'sys_userpermissionitem'
EXEC sp_rename 'SYS_UserPermissionProfile', 'sys_userpermissionprofile'
EXEC sp_rename 'SYS_UserProfile', 'sys_userprofile'
EXEC sp_rename 'ViewDocumentFinancePaymentTotals', 'viewdocumentfinancepaymenttotals'

GO
alter table [pos_configurationplaceterminal] ALTER COLUMN [HardwareID] nvarchar(120);
GO
UPDATE cfg_configurationpreferenceparameter SET inputtype = '4' WHERE token = 'CULTURE';
GO

GO
if not exists (select * from cfg_configurationpreferenceparameter WHERE [Oid] = 'bc0bc5df-4c01-462a-81b7-9051a7869574')
INSERT INTO cfg_configurationpreferenceparameter (Oid,Disabled,Ord,Code,Token,Value,ValueTip,Required,RegEx,ResourceString,ResourceStringInfo,FormType,FormPageNo,InputType) VALUES ('bc0bc5df-4c01-462a-81b7-9051a7869574',NULL,590,590,'USE_CC_DAILY_TICKET','False','true | false',1,'RegexBoolean','prefparam_use_ccdailyticket',NULL,2,1,3);
GO
if not exists (select ThermalPrinter from [pos_configurationplaceterminal])
alter table [pos_configurationplaceterminal] ADD [ThermalPrinter] nvarchar(120);
GO
if exists (select HardwareID from [pos_configurationplaceterminal])
alter table [pos_configurationplaceterminal] ALTER COLUMN [HardwareID] nvarchar(120);
GO
if exists (select * from [cfg_configurationpreferenceparameter])
UPDATE cfg_configurationpreferenceparameter SET inputtype = '4' WHERE token = 'CULTURE';
GO

INSERT INTO cfg_configurationpreferenceparameter (Oid,Disabled,Ord,Code,Token,Value,ValueTip,Required,RegEx,ResourceString,ResourceStringInfo,FormType,FormPageNo,InputType) VALUES ('9C13F51B-8321-4BCA-A20F-FCBF38A6E073',NULL,580, 580,'USE_POS_PDF_VIEWER',	'True',	'true | false',	1,	'RegexBoolean',	'prefparam_use_pdfviewer',NULL,	2,	1,	3);

GO
IF NOT EXISTS (
  SELECT * 
  FROM   sys.columns 
  WHERE  object_id = OBJECT_ID(N'[logicposdb].[sys_configurationpoledisplay]') 
         AND name = 'COM'
)
alter table [sys_configurationpoledisplay] ADD [COM] nvarchar(10);
GO
