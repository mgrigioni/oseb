/*
http://code.google.com/p/oseb/issues/detail?id=19
Mario Grigioni - 21/06/2012, mgrigioni
*/

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000490); -- Bill_Location_ID
delete from ad_field where ad_column_id = 1000490;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000529); -- lbr_BPInvoiceAddress1
delete from ad_field where ad_column_id = 1000529;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000530); -- lbr_BPInvoiceAddress2
delete from ad_field where ad_column_id = 1000530;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000531); -- lbr_BPInvoiceAddress3
delete from ad_field where ad_column_id = 1000531;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000532); -- lbr_BPInvoiceAddress4
delete from ad_field where ad_column_id = 1000532;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000534); -- lbr_BPInvoiceCity
delete from ad_field where ad_column_id = 1000534;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000533); -- lbr_BPInvoiceCNPJ
delete from ad_field where ad_column_id = 1000533;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000535); -- lbr_BPInvoiceCountry
delete from ad_field where ad_column_id = 1000535;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000536); -- lbr_BPInvoiceIE
delete from ad_field where ad_column_id = 1000536;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000562); -- lbr_BPInvoicePostal
delete from ad_field where ad_column_id = 1000562;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000537); -- lbr_BPInvoiceRegion
delete from ad_field where ad_column_id = 1000537;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000576); -- lbr_NCMReference
delete from ad_field where ad_column_id = 1000576;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000956); -- lbr_NFeNo
delete from ad_field where ad_column_id = 1000956;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000700); -- LBR_LegalMessage_ID
delete from ad_field where ad_column_id = 1000700;


-- 13/06/2012 8h42min35s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000490
;

-- 13/06/2012 8h42min35s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000490
;

-- 13/06/2012 8h46min23s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000529
;

-- 13/06/2012 8h46min23s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000529
;

-- 13/06/2012 8h47min37s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000530
;

-- 13/06/2012 8h47min37s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000530
;

-- 13/06/2012 8h48min32s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000531
;

-- 13/06/2012 8h48min32s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000531
;

-- 13/06/2012 8h49min35s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000532
;

-- 13/06/2012 8h49min35s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000532
;

-- 13/06/2012 8h50min23s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000534
;

-- 13/06/2012 8h50min23s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000534
;

-- 13/06/2012 8h56min32s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000533
;

-- 13/06/2012 8h56min32s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000533
;

-- 13/06/2012 8h57min51s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000535
;

-- 13/06/2012 8h57min51s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000535
;

-- 13/06/2012 9h0min55s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000536
;

-- 13/06/2012 9h0min55s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000536
;

-- 13/06/2012 9h2min21s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000562
;

-- 13/06/2012 9h2min21s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000562
;

-- 13/06/2012 9h3min29s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000537
;

-- 13/06/2012 9h3min29s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000537
;

-- 13/06/2012 9h5min44s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000576
;

-- 13/06/2012 9h5min44s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000576
;

-- 13/06/2012 10h13min48s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000956
;

-- 13/06/2012 10h13min48s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000956
;

-- 13/06/2012 8h42min35s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000700
;

-- 13/06/2012 8h42min35s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000700
;

-- 13/06/2012 10h26min40s BRT

INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The current status of the document',1000027,0,131,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',0,0,'Y','LBRA','Document Status',0,'N',1250002,289,'DocStatus','DR','N',TO_TIMESTAMP('2012-06-13 10:26:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-06-13 10:26:38','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 13/06/2012 10h26min40s BRT

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/06/2012 10h26min43s BRT

ALTER TABLE LBR_NotaFiscal ADD COLUMN DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL
;

-- 13/06/2012 10h28min18s BRT

INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The targeted status of the document',1000027,0,135,'You find the current status in the Document Status field. The options are listed in a popup',0,0,'Y','LBRA','Document Action',0,'N',1250003,287,'DocAction','CO','N',TO_TIMESTAMP('2012-06-13 10:28:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-06-13 10:28:17','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 13/06/2012 10h28min18s BRT

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/06/2012 10h28min20s BRT

ALTER TABLE LBR_NotaFiscal ADD COLUMN DocAction CHAR(2) DEFAULT 'CO' NOT NULL
;

-- 13/06/2012 10h29min56s BRT

INSERT INTO AD_Workflow (CreatedBy,IsActive,Description,AD_Workflow_ID,AD_Client_ID,Created,AD_WF_Node_ID,Updated,Name,UpdatedBy,AccessLevel,AD_Org_ID,WorkflowType,Author,Version,Cost,DurationUnit,WaitingTime,EntityType,PublishStatus,Duration,IsValid,WorkingTime,AD_Table_ID,Value,IsDefault,DocumentNo,IsBetaFunctionality) VALUES (100,'Y','(Standard Process Fiscal)',1250001,0,TO_TIMESTAMP('2012-06-13 10:29:54','YYYY-MM-DD HH24:MI:SS'),183,TO_TIMESTAMP('2012-06-13 10:29:54','YYYY-MM-DD HH24:MI:SS'),'Process_Nota Fiscal',100,'1',0,'P','Mario Grigioni',0,0,'D',0,'LBRA','R',1,'Y',0,1000027,'Process_Nota Fiscal','N','10000000','N')
;

-- 13/06/2012 10h29min56s BRT

INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 13/06/2012 10h30min6s BRT

INSERT INTO AD_Process (Created,AD_Workflow_ID,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Statistic_Seconds,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,IsServerProcess,AD_Process_ID,Value,IsBetaFunctionality,ShowHelp) VALUES (TO_TIMESTAMP('2012-06-13 10:30:04','YYYY-MM-DD HH24:MI:SS'),1250001,0,'Process Nota Fiscal',0,'N','Y',0,TO_TIMESTAMP('2012-06-13 10:30:04','YYYY-MM-DD HH24:MI:SS'),'N',0,'1',100,100,'U','N',1250001,'LBR_NotaFiscal Process','N','Y')
;

-- 13/06/2012 10h30min6s BRT

INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 13/06/2012 10h30min23s BRT

UPDATE AD_Column SET AD_Process_ID=1250001,Updated=TO_TIMESTAMP('2012-06-13 10:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250003
;

-- 13/06/2012 10h33min12s BRT

UPDATE AD_Workflow SET Name='Process_LBR_NotaFiscal', IsValid='Y', Value='Process_LBR_NotaFiscal',Updated=TO_TIMESTAMP('2012-06-13 10:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1250001
;

-- 13/06/2012 10h33min12s BRT

UPDATE AD_Workflow_Trl SET IsTranslated='N' WHERE AD_Workflow_ID=1250001
;

-- 13/06/2012 10h33min32s BRT

UPDATE AD_Workflow SET AD_WF_Node_ID=NULL, IsValid='N',Updated=TO_TIMESTAMP('2012-06-13 10:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1250001
;

-- 13/06/2012 10h34min16s BRT

INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,"action",Description,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,"limit",DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_TIMESTAMP('2012-06-13 10:34:15','YYYY-MM-DD HH24:MI:SS'),100,1250004,'Z','(Standard Node)','LBRA',TO_TIMESTAMP('2012-06-13 10:34:15','YYYY-MM-DD HH24:MI:SS'),1250001,'Y','Y','(Start)',0,0,0,0,'X',0,'(Start)',0,'X',0,'CO',0,0,0,0,0)
;

-- 13/06/2012 10h34min17s BRT

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/06/2012 10h34min52s BRT

INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,"action",Description,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,"limit",DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_TIMESTAMP('2012-06-13 10:34:51','YYYY-MM-DD HH24:MI:SS'),100,1250005,'D','(Standard Node)','LBRA',TO_TIMESTAMP('2012-06-13 10:34:51','YYYY-MM-DD HH24:MI:SS'),1250001,'Y','Y','(DocPrepare)',0,0,0,0,'X',0,'(DocPrepare)',0,'X',0,'PR',0,0,0,0,0)
;

-- 13/06/2012 10h34min52s BRT

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250005 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/06/2012 10h35min6s BRT

UPDATE AD_Workflow_Trl SET IsTranslated='Y',Name='Process_LBR_NotaFiscal',Updated=TO_TIMESTAMP('2012-06-13 10:35:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1250001 AND AD_Language='pt_BR'
;

-- 13/06/2012 10h35min28s BRT

INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,"action",EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,"limit",DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_TIMESTAMP('2012-06-13 10:35:26','YYYY-MM-DD HH24:MI:SS'),100,1250006,'D','LBRA',TO_TIMESTAMP('2012-06-13 10:35:26','YYYY-MM-DD HH24:MI:SS'),1250001,'Y','Y','(DocComplete)',0,0,0,0,'X',0,'(DocComplete)',0,'X',0,'CO',0,0,0,0,0)
;

-- 13/06/2012 10h35min28s BRT

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250006 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/06/2012 10h35min35s BRT

UPDATE AD_WF_Node SET Description='(Standard Node)',Updated=TO_TIMESTAMP('2012-06-13 10:35:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1250006
;

-- 13/06/2012 10h35min35s BRT

UPDATE AD_WF_Node_Trl SET IsTranslated='N' WHERE AD_WF_Node_ID=1250006
;

-- 13/06/2012 10h36min16s BRT

INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,"action",Description,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,"limit",DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_TIMESTAMP('2012-06-13 10:36:15','YYYY-MM-DD HH24:MI:SS'),100,1250007,'D','(Standard Node)','LBRA',TO_TIMESTAMP('2012-06-13 10:36:15','YYYY-MM-DD HH24:MI:SS'),1250001,'Y','Y','(DocAuto)',0,0,0,0,'X',0,'(DocAuto)',0,'X',0,'--',0,0,0,0,0)
;

-- 13/06/2012 10h36min16s BRT

INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250007 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/06/2012 10h36min57s BRT

INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,AD_WF_NodeNext_ID) VALUES (1250005,'LBRA',0,0,100,1250004,TO_TIMESTAMP('2012-06-13 10:36:56','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_TIMESTAMP('2012-06-13 10:36:56','YYYY-MM-DD HH24:MI:SS'),'N',10,1250003)
;

-- 13/06/2012 10h37min2s BRT

UPDATE AD_WF_NodeNext SET IsStdUserWorkflow='Y',Updated=TO_TIMESTAMP('2012-06-13 10:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=1250003
;

-- 13/06/2012 10h37min57s BRT

INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,Description,AD_WF_NodeNext_ID) VALUES (1250007,'LBRA',0,0,100,1250004,TO_TIMESTAMP('2012-06-13 10:37:56','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_TIMESTAMP('2012-06-13 10:37:56','YYYY-MM-DD HH24:MI:SS'),'N',100,'(Standard Transition)',1250004)
;

-- 13/06/2012 10h38min28s BRT

INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,Description,AD_WF_NodeNext_ID) VALUES (1250006,'LBRA',0,0,100,1250005,TO_TIMESTAMP('2012-06-13 10:38:27','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_TIMESTAMP('2012-06-13 10:38:27','YYYY-MM-DD HH24:MI:SS'),'N',100,'(Standard Transition)',1250005)
;

DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000013;
DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000005;
DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000004;
DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000006;
DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1100002;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000926); -- ProcReactivateNF
delete from ad_field where ad_column_id = 1000926;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000699); -- Processing2
delete from ad_field where ad_column_id = 1000699;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000575); -- Processing
delete from ad_field where ad_column_id = 1000575;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1000702); -- lbr_ProcCancelNF
delete from ad_field where ad_column_id = 1000702;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1100073); -- lbr_GenerateNFeXML
delete from ad_field where ad_column_id = 1100073;

-- 18/06/2012 10h13min6s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000926
;

-- 18/06/2012 10h13min6s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000926
;

-- 18/06/2012 10h14min29s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000013
;

-- 18/06/2012 10h14min29s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000013
;

-- 18/06/2012 10h15min12s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000320
;

-- 18/06/2012 10h15min12s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1000320
;

-- 18/06/2012 10h16min7s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000699
;

-- 18/06/2012 10h16min7s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000699
;

-- 18/06/2012 10h17min8s BRT

DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1000011
;

-- 18/06/2012 10h17min8s BRT

DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1000011
;

-- 18/06/2012 10h17min11s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000005
;

-- 18/06/2012 10h17min11s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000005
;

-- 18/06/2012 10h18min58s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000575
;

-- 18/06/2012 10h18min58s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000575
;

-- 18/06/2012 10h20min35s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000004
;

-- 18/06/2012 10h20min35s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000004
;

-- 18/06/2012 10h21min47s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000702
;

-- 18/06/2012 10h21min47s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1000702
;

-- 18/06/2012 10h22min39s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000006
;

-- 18/06/2012 10h22min39s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000006
;

-- 18/06/2012 10h24min16s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1100073
;

-- 18/06/2012 10h24min16s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1100073
;

-- 18/06/2012 10h25min22s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1100002
;

-- 18/06/2012 10h25min22s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1100002
;

-- 18/06/2012 10h26min16s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000272
;

-- 18/06/2012 10h26min16s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1000272
;

-- 18/06/2012 10h26min26s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1100021
;

-- 18/06/2012 10h26min26s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1100021
;

DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000018;
DELETE FROM AD_PINSTANCE WHERE AD_Process_ID=1000012;

-- 18/06/2012 10h36min33s BRT

DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=1000032
;

-- 18/06/2012 10h36min33s BRT

DELETE FROM AD_Menu WHERE AD_Menu_ID=1000032
;

-- 18/06/2012 10h36min33s BRT

DELETE FROM AD_TreeNodeMM WHERE Node_ID=1000032 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNodeMM.AD_Tree_ID AND t.TreeType='MM')
;

-- 18/06/2012 10h37min36s BRT

DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=1000038
;

-- 18/06/2012 10h37min36s BRT

DELETE FROM AD_Menu WHERE AD_Menu_ID=1000038
;

-- 18/06/2012 10h37min36s BRT

DELETE FROM AD_TreeNodeMM WHERE Node_ID=1000038 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNodeMM.AD_Tree_ID AND t.TreeType='MM')
;

-- 18/06/2012 10h38min20s BRT

DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1000013
;

-- 18/06/2012 10h38min20s BRT

DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1000013
;

-- 18/06/2012 10h38min20s BRT

DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1000014
;

-- 18/06/2012 10h38min20s BRT

DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1000014
;

-- 18/06/2012 10h38min24s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000018
;

-- 18/06/2012 10h38min24s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000018
;

-- 18/06/2012 10h38min49s BRT

DELETE FROM AD_Process_Trl WHERE AD_Process_ID=1000012
;

-- 18/06/2012 10h38min49s BRT

DELETE FROM AD_Process WHERE AD_Process_ID=1000012
;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1121481); -- lbr_IsRevenue
delete from ad_field where ad_column_id = 1121481;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1120115); -- lbr_IsService
delete from ad_field where ad_column_id = 1120115;

-- 18/06/2012 10h46min56s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1120115
;

-- 18/06/2012 10h46min56s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1120115
;

-- 18/06/2012 10h47min30s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1121481
;

-- 18/06/2012 10h47min30s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1121481
;

-- 18/06/2012 10h48min10s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1120329
;

-- 18/06/2012 10h48min10s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1120329
;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000020);
delete from ad_field where AD_Tab_ID=1000020;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000026);
delete from ad_field where AD_Tab_ID=1000026;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000021);
delete from ad_field where AD_Tab_ID=1000021;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000027);
delete from ad_field where AD_Tab_ID=1000027;


-- 18/06/2012 11h13min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:40','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000476,1250002,TO_TIMESTAMP('2012-06-18 11:13:40','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100)
;

-- 18/06/2012 11h13min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:42','YYYY-MM-DD HH24:MI:SS'),'Y','Barcode 1','First Barcode of the Nota Fiscal',0,100,1001033,1250003,TO_TIMESTAMP('2012-06-18 11:13:42','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','First Barcode of the Nota Fiscal','N',100)
;

-- 18/06/2012 11h13min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:43','YYYY-MM-DD HH24:MI:SS'),'Y','Barcode 2','Second Barcode of the Nota Fiscal',0,100,1001034,1250004,TO_TIMESTAMP('2012-06-18 11:13:43','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Second Barcode of the Nota Fiscal','N',100)
;

-- 18/06/2012 11h13min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min52s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:44','YYYY-MM-DD HH24:MI:SS'),'Y','Bill Note','Bill Note',0,100,1001052,1250005,TO_TIMESTAMP('2012-06-18 11:13:44','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Bill Note','N',100)
;

-- 18/06/2012 11h13min52s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250005 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:52','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 1','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000508,1250006,TO_TIMESTAMP('2012-06-18 11:13:52','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h13min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250006 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:53','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 2','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000509,1250007,TO_TIMESTAMP('2012-06-18 11:13:53','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h13min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250007 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min56s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:54','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 3','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000510,1250008,TO_TIMESTAMP('2012-06-18 11:13:54','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h13min56s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250008 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:56','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 4','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000511,1250009,TO_TIMESTAMP('2012-06-18 11:13:56','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h13min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250009 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h13min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:57','YYYY-MM-DD HH24:MI:SS'),'Y','BP City','BP City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000513,1250010,TO_TIMESTAMP('2012-06-18 11:13:57','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h13min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250010 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:13:58','YYYY-MM-DD HH24:MI:SS'),'Y','BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',0,100,1000512,1250011,TO_TIMESTAMP('2012-06-18 11:13:58','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250011 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:00','YYYY-MM-DD HH24:MI:SS'),'Y','BP Country','BP Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000514,1250012,TO_TIMESTAMP('2012-06-18 11:14:00','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250012 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:01','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 1','BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000519,1250013,TO_TIMESTAMP('2012-06-18 11:14:01','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250013 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:02','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 2','BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000520,1250014,TO_TIMESTAMP('2012-06-18 11:14:02','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250014 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min5s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:04','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 3','BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000521,1250015,TO_TIMESTAMP('2012-06-18 11:14:04','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min5s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250015 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min6s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:05','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 4','BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000522,1250016,TO_TIMESTAMP('2012-06-18 11:14:05','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min6s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250016 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min7s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:06','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery City','BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000524,1250017,TO_TIMESTAMP('2012-06-18 11:14:06','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250017 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:07','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery CNPJ','BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000523,1250018,TO_TIMESTAMP('2012-06-18 11:14:07','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250018 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:09','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Country','BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000525,1250019,TO_TIMESTAMP('2012-06-18 11:14:09','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250019 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:10','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery IE','BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000526,1250020,TO_TIMESTAMP('2012-06-18 11:14:10','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250020 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:11','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Postal','BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000527,1250021,TO_TIMESTAMP('2012-06-18 11:14:11','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250021 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min14s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:13','YYYY-MM-DD HH24:MI:SS'),'Y','BP DeliveryRegion','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000528,1250022,TO_TIMESTAMP('2012-06-18 11:14:13','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min14s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250022 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min15s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:14','YYYY-MM-DD HH24:MI:SS'),'Y','BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books',0,100,1000515,1250023,TO_TIMESTAMP('2012-06-18 11:14:14','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP IE - Copied from the BP into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min15s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250023 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:15','YYYY-MM-DD HH24:MI:SS'),'Y','BP Name',0,100,1000500,1250024,TO_TIMESTAMP('2012-06-18 11:14:15','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250024 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:17','YYYY-MM-DD HH24:MI:SS'),'Y','BP Phone','BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000516,1250025,TO_TIMESTAMP('2012-06-18 11:14:17','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250025 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min19s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:18','YYYY-MM-DD HH24:MI:SS'),'Y','BP Postal','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000517,1250026,TO_TIMESTAMP('2012-06-18 11:14:18','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min19s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250026 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min20s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:19','YYYY-MM-DD HH24:MI:SS'),'Y','BP Region','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000518,1250027,TO_TIMESTAMP('2012-06-18 11:14:19','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min20s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250027 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:20','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 1','BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000538,1250028,TO_TIMESTAMP('2012-06-18 11:14:20','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250028 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:22','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 2','BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000539,1250029,TO_TIMESTAMP('2012-06-18 11:14:22','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min23s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250029 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:23','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 3','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000540,1250030,TO_TIMESTAMP('2012-06-18 11:14:23','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250030 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min25s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:24','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 4','BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000541,1250031,TO_TIMESTAMP('2012-06-18 11:14:24','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min25s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250031 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:25','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper City','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000543,1250032,TO_TIMESTAMP('2012-06-18 11:14:25','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250032 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:27','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper CNPJ','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000542,1250033,TO_TIMESTAMP('2012-06-18 11:14:27','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250033 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:28','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Country','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000544,1250034,TO_TIMESTAMP('2012-06-18 11:14:28','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250034 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:29','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper IE','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000545,1250035,TO_TIMESTAMP('2012-06-18 11:14:29','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250035 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min34s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:30','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper License Plate','Defines the BP Shipper License Plate',0,100,1000730,1250036,TO_TIMESTAMP('2012-06-18 11:14:30','YYYY-MM-DD HH24:MI:SS'),8,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the BP Shipper License Plate','N',100)
;

-- 18/06/2012 11h14min34s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250036 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min36s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:34','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Postal','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000546,1250037,TO_TIMESTAMP('2012-06-18 11:14:34','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min36s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250037 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:36','YYYY-MM-DD HH24:MI:SS'),'Y','BP ShipperRegion','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000547,1250038,TO_TIMESTAMP('2012-06-18 11:14:36','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 18/06/2012 11h14min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250038 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:37','YYYY-MM-DD HH24:MI:SS'),'Y','BP Suframa','Defines the BP Suframa',0,100,1100177,1250039,TO_TIMESTAMP('2012-06-18 11:14:37','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250039 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min39s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:38','YYYY-MM-DD HH24:MI:SS'),'Y','BPShipper Name','Defines the Shipper Name',0,100,1000705,1250040,TO_TIMESTAMP('2012-06-18 11:14:38','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Shipper Name','N',100)
;

-- 18/06/2012 11h14min39s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250040 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:39','YYYY-MM-DD HH24:MI:SS'),'Y','Business Partner ','Identifies a Business Partner',0,100,1000481,1250041,TO_TIMESTAMP('2012-06-18 11:14:39','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','N',100)
;

-- 18/06/2012 11h14min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250041 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:41','YYYY-MM-DD HH24:MI:SS'),'Y','Cancelled','The transaction was cancelled',0,100,1000495,1250042,TO_TIMESTAMP('2012-06-18 11:14:41','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250042 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:42','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Note','Defines the CFOP Note',0,100,1000712,1250043,TO_TIMESTAMP('2012-06-18 11:14:42','YYYY-MM-DD HH24:MI:SS'),300,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the CFOP Note','N',100)
;

-- 18/06/2012 11h14min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250043 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:43','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Reference','Defines the CFOP Reference',0,100,1000577,1250044,TO_TIMESTAMP('2012-06-18 11:14:43','YYYY-MM-DD HH24:MI:SS'),300,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the CFOP Reference','N',100)
;

-- 18/06/2012 11h14min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250044 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:44','YYYY-MM-DD HH24:MI:SS'),'Y','CIF Total','CIF Total for all the document',0,100,1001045,1250045,TO_TIMESTAMP('2012-06-18 11:14:44','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Cost, Insurance and Freight total for all the document','N',100)
;

-- 18/06/2012 11h14min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250045 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:45','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000475,1250046,TO_TIMESTAMP('2012-06-18 11:14:45','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100)
;

-- 18/06/2012 11h14min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250046 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min48s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:47','YYYY-MM-DD HH24:MI:SS'),'Y','CNPJ','Used to identify Legal Entities in Brazil',0,100,1000563,1250047,TO_TIMESTAMP('2012-06-18 11:14:47','YYYY-MM-DD HH24:MI:SS'),18,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Used to identify Legal Entities in Brazil','N',100)
;

-- 18/06/2012 11h14min48s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250047 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:48','YYYY-MM-DD HH24:MI:SS'),'Y','Data contingência',0,100,1120455,1250048,TO_TIMESTAMP('2012-06-18 11:14:48','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250048 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min50s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:49','YYYY-MM-DD HH24:MI:SS'),'Y','Date InOut','Defines the InOut Date',0,100,1000908,1250049,TO_TIMESTAMP('2012-06-18 11:14:49','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the InOut Date','N',100)
;

-- 18/06/2012 11h14min50s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250049 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min51s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:50','YYYY-MM-DD HH24:MI:SS'),'Y','DE',0,100,1120211,1250050,TO_TIMESTAMP('2012-06-18 11:14:50','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min51s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250050 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:51','YYYY-MM-DD HH24:MI:SS'),'Y','Delivery Location','The Delivery Location ID',0,100,1001049,1250051,TO_TIMESTAMP('2012-06-18 11:14:51','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Delivery Location ID','N',100)
;

-- 18/06/2012 11h14min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250051 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:53','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1000492,1250052,TO_TIMESTAMP('2012-06-18 11:14:53','YYYY-MM-DD HH24:MI:SS'),1024,'Y','N',0,'LBRA','N','N',1000020,'N','Y','A description is limited to 255 characters.','N',100)
;

-- 18/06/2012 11h14min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250052 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:57','YYYY-MM-DD HH24:MI:SS'),'Y','Digest Value',0,100,1100082,1250053,TO_TIMESTAMP('2012-06-18 11:14:57','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h14min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250053 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h14min59s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:58','YYYY-MM-DD HH24:MI:SS'),'Y','Discount Amount','Calculated amount of discount',0,100,1120116,1250054,TO_TIMESTAMP('2012-06-18 11:14:58','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Discount Amount indicates the discount amount for a document or line.','N',100)
;

-- 18/06/2012 11h14min59s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250054 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:14:59','YYYY-MM-DD HH24:MI:SS'),'Y','Document Action','The targeted status of the document',0,100,1250003,1250055,TO_TIMESTAMP('2012-06-18 11:14:59','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','You find the current status in the Document Status field. The options are listed in a popup','N',100)
;

-- 18/06/2012 11h15min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250055 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:00','YYYY-MM-DD HH24:MI:SS'),'Y','Document Date','Date of the Document',0,100,1000565,1250056,TO_TIMESTAMP('2012-06-18 11:15:00','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','N',100)
;

-- 18/06/2012 11h15min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250056 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min3s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:02','YYYY-MM-DD HH24:MI:SS'),'Y','Document No','Document sequence number of the document',0,100,1000491,1250057,TO_TIMESTAMP('2012-06-18 11:15:02','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>". 
 
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','N',100)
;

-- 18/06/2012 11h15min3s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250057 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:03','YYYY-MM-DD HH24:MI:SS'),'Y','Document Note','Additional information for a Document',0,100,1000578,1250058,TO_TIMESTAMP('2012-06-18 11:15:03','YYYY-MM-DD HH24:MI:SS'),300,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Document Note is used for recording any additional information regarding this product.','N',100)
;

-- 18/06/2012 11h15min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250058 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min5s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:04','YYYY-MM-DD HH24:MI:SS'),'Y','Document Status','The current status of the document',0,100,1250002,1250059,TO_TIMESTAMP('2012-06-18 11:15:04','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','N',100)
;

-- 18/06/2012 11h15min5s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250059 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min7s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:05','YYYY-MM-DD HH24:MI:SS'),'Y','Document Type','Document type or rules',0,100,1000483,1250060,TO_TIMESTAMP('2012-06-18 11:15:05','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Document Type determines document sequence and processing rules','N',100)
;

-- 18/06/2012 11h15min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250060 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min8s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:07','YYYY-MM-DD HH24:MI:SS'),'Y','Finalidade NFe','Define a Finalidade da NFe',0,100,1100181,1250061,TO_TIMESTAMP('2012-06-18 11:15:07','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste','N',100)
;

-- 18/06/2012 11h15min8s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250061 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:08','YYYY-MM-DD HH24:MI:SS'),'Y','Fiscal Obs.','Fiscal Observation for the Fiscal Books',0,100,1001043,1250062,TO_TIMESTAMP('2012-06-18 11:15:08','YYYY-MM-DD HH24:MI:SS'),64,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Fiscal Observation for the Fiscal Books','N',100)
;

-- 18/06/2012 11h15min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250062 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:09','YYYY-MM-DD HH24:MI:SS'),'Y','Freight Amount','Freight Amount ',0,100,1000566,1250063,TO_TIMESTAMP('2012-06-18 11:15:09','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Freight Amount indicates the amount charged for Freight in the document currency.','N',100)
;

-- 18/06/2012 11h15min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250063 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:10','YYYY-MM-DD HH24:MI:SS'),'Y','Freight Cost Rule','Method for charging Freight',0,100,1000567,1250064,TO_TIMESTAMP('2012-06-18 11:15:10','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Freight Cost Rule indicates the method used when charging for freight.','N',100)
;

-- 18/06/2012 11h15min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250064 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:12','YYYY-MM-DD HH24:MI:SS'),'Y','Grand Total','Total amount of document',0,100,1000572,1250065,TO_TIMESTAMP('2012-06-18 11:15:12','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Grand Total displays the total amount including Tax and Freight in document currency','N',100)
;

-- 18/06/2012 11h15min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250065 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min14s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:13','YYYY-MM-DD HH24:MI:SS'),'Y','Gross Weight','Defines the Gross Weight',0,100,1000568,1250066,TO_TIMESTAMP('2012-06-18 11:15:13','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Gross Weight','N',100)
;

-- 18/06/2012 11h15min14s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250066 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min15s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:14','YYYY-MM-DD HH24:MI:SS'),'Y','IE','Used to Identify the IE (State Tax ID)',0,100,1000564,1250067,TO_TIMESTAMP('2012-06-18 11:15:14','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Used to Identify the IE (State Tax ID)','N',100)
;

-- 18/06/2012 11h15min15s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250067 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min20s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:15','YYYY-MM-DD HH24:MI:SS'),'Y','Insurance Amt','Defines the Insurance Amt',0,100,1000573,1250068,TO_TIMESTAMP('2012-06-18 11:15:15','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Insurance Amt','N',100)
;

-- 18/06/2012 11h15min20s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250068 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min21s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:20','YYYY-MM-DD HH24:MI:SS'),'Y','Invoice','Invoice Identifier',0,100,1000485,1250069,TO_TIMESTAMP('2012-06-18 11:15:20','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Invoice Document.','N',100)
;

-- 18/06/2012 11h15min21s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250069 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:21','YYYY-MM-DD HH24:MI:SS'),'Y','Is Own Document','Identifies this is an own document',0,100,1100019,1250070,TO_TIMESTAMP('2012-06-18 11:15:21','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Identifies this is an own document','N',100)
;

-- 18/06/2012 11h15min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250070 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:22','YYYY-MM-DD HH24:MI:SS'),'Y','Motivo contingência',0,100,1120454,1250071,TO_TIMESTAMP('2012-06-18 11:15:22','YYYY-MM-DD HH24:MI:SS'),256,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min23s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250071 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:23','YYYY-MM-DD HH24:MI:SS'),'Y','Motivo do Cancelamento','Motivo do Cancelamento (Entre 15 e 255 caracteres)',0,100,1100105,1250072,TO_TIMESTAMP('2012-06-18 11:15:23','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.','N',100)
;

-- 18/06/2012 11h15min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250072 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min26s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:24','YYYY-MM-DD HH24:MI:SS'),'Y','Net Weight','Defines the Net Weight',0,100,1000569,1250073,TO_TIMESTAMP('2012-06-18 11:15:24','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Net Weight','N',100)
;

-- 18/06/2012 11h15min26s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250073 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:26','YYYY-MM-DD HH24:MI:SS'),'Y','NF Model','Identifies the model of Nota Fiscal',0,100,1120112,1250074,TO_TIMESTAMP('2012-06-18 11:15:26','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250074 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:27','YYYY-MM-DD HH24:MI:SS'),'Y','NF Reference','Reference to other NF',0,100,1001047,1250075,TO_TIMESTAMP('2012-06-18 11:15:27','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Reference to other NF','N',100)
;

-- 18/06/2012 11h15min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250075 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:28','YYYY-MM-DD HH24:MI:SS'),'Y','NF Type','Nota Fiscal Type',0,100,1001042,1250076,TO_TIMESTAMP('2012-06-18 11:15:28','YYYY-MM-DD HH24:MI:SS'),6,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Nota Fiscal Type','N',100)
;

-- 18/06/2012 11h15min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250076 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min31s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:30','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Description','Description of NFe',0,100,1100080,1250077,TO_TIMESTAMP('2012-06-18 11:15:30','YYYY-MM-DD HH24:MI:SS'),512,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min31s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250077 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:31','YYYY-MM-DD HH24:MI:SS'),'Y','NFe ID','Identification of NFe',0,100,1100064,1250078,TO_TIMESTAMP('2012-06-18 11:15:31','YYYY-MM-DD HH24:MI:SS'),44,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250078 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:32','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Lot',0,100,1100071,1250079,TO_TIMESTAMP('2012-06-18 11:15:32','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250079 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min35s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:33','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Protocol',0,100,1100081,1250080,TO_TIMESTAMP('2012-06-18 11:15:33','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min35s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250080 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min36s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:35','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Status','Status of NFe',0,100,1100065,1250081,TO_TIMESTAMP('2012-06-18 11:15:35','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min36s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250081 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:36','YYYY-MM-DD HH24:MI:SS'),'Y','No Packages','Number of packages shipped',0,100,1000570,1250082,TO_TIMESTAMP('2012-06-18 11:15:36','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250082 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:37','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000473,1250083,TO_TIMESTAMP('2012-06-18 11:15:37','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000020,'N','Y','Primary key table LBR_NotaFiscal','N',100)
;

-- 18/06/2012 11h15min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250083 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min40s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:38','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Referenciada',0,100,1120465,1250084,TO_TIMESTAMP('2012-06-18 11:15:38','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min40s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250084 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:40','YYYY-MM-DD HH24:MI:SS'),'Y','Order','Order',0,100,1000486,1250085,TO_TIMESTAMP('2012-06-18 11:15:40','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','N',100)
;

-- 18/06/2012 11h15min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250085 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:41','YYYY-MM-DD HH24:MI:SS'),'Y','Org Address','Organization Location/Address',0,100,1001067,1250086,TO_TIMESTAMP('2012-06-18 11:15:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','N',100)
;

-- 18/06/2012 11h15min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250086 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:42','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000474,1250087,TO_TIMESTAMP('2012-06-18 11:15:42','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100)
;

-- 18/06/2012 11h15min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250087 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:43','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 1','The issuer organization address 1',0,100,1001056,1250088,TO_TIMESTAMP('2012-06-18 11:15:43','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The issuer organization address 1','N',100)
;

-- 18/06/2012 11h15min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250088 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:45','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 2','The issuer organization address 2',0,100,1001057,1250089,TO_TIMESTAMP('2012-06-18 11:15:45','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The issuer organization address 2','N',100)
;

-- 18/06/2012 11h15min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250089 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:46','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 3','The issuer organization address 3',0,100,1001058,1250090,TO_TIMESTAMP('2012-06-18 11:15:46','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The issuer organization address 3','N',100)
;

-- 18/06/2012 11h15min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250090 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min48s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:47','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 4','The issuer organization address 4',0,100,1001059,1250091,TO_TIMESTAMP('2012-06-18 11:15:47','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The issuer organization address 4','N',100)
;

-- 18/06/2012 11h15min48s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250091 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:48','YYYY-MM-DD HH24:MI:SS'),'Y','Organization CCM','The Organization CCM',0,100,1001064,1250092,TO_TIMESTAMP('2012-06-18 11:15:48','YYYY-MM-DD HH24:MI:SS'),30,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Organization CCM','N',100)
;

-- 18/06/2012 11h15min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250092 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min51s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:49','YYYY-MM-DD HH24:MI:SS'),'Y','Organization City','The City of the Organization',0,100,1001060,1250093,TO_TIMESTAMP('2012-06-18 11:15:49','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The City of the Organization','N',100)
;

-- 18/06/2012 11h15min51s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250093 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min52s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:51','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Country','The Country of the Organization',0,100,1001063,1250094,TO_TIMESTAMP('2012-06-18 11:15:51','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Country of the Organizarion','N',100)
;

-- 18/06/2012 11h15min52s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250094 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:52','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Name','The Name of the Organization',0,100,1001066,1250095,TO_TIMESTAMP('2012-06-18 11:15:52','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Name of the Organization','N',100)
;

-- 18/06/2012 11h15min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250095 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:53','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Phone','The Organization Phone',0,100,1001065,1250096,TO_TIMESTAMP('2012-06-18 11:15:53','YYYY-MM-DD HH24:MI:SS'),40,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Organization Phone','N',100)
;

-- 18/06/2012 11h15min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250096 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min56s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:54','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Postal Code','The Postal Code of the Organization',0,100,1001061,1250097,TO_TIMESTAMP('2012-06-18 11:15:54','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Postal Code of the Organization','N',100)
;

-- 18/06/2012 11h15min56s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250097 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:56','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Region','The Region of the Organization',0,100,1001062,1250098,TO_TIMESTAMP('2012-06-18 11:15:56','YYYY-MM-DD HH24:MI:SS'),40,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Region of the Organization','N',100)
;

-- 18/06/2012 11h15min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250098 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:57','YYYY-MM-DD HH24:MI:SS'),'Y','Packing Type','Defines the Packing Type',0,100,1000731,1250099,TO_TIMESTAMP('2012-06-18 11:15:57','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Packing Type','N',100)
;

-- 18/06/2012 11h15min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250099 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h15min59s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:58','YYYY-MM-DD HH24:MI:SS'),'Y','Partner Location','Identifies the (ship to) address for this Business Partner',0,100,1000482,1250100,TO_TIMESTAMP('2012-06-18 11:15:58','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Partner address indicates the location of a Business Partner','N',100)
;

-- 18/06/2012 11h15min59s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250100 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:15:59','YYYY-MM-DD HH24:MI:SS'),'Y','Payment Term','The terms of Payment (timing, discount)',0,100,1000487,1250101,TO_TIMESTAMP('2012-06-18 11:15:59','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Payment Terms identify the method and timing of payment.','N',100)
;

-- 18/06/2012 11h16min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250101 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:01','YYYY-MM-DD HH24:MI:SS'),'Y','Printed','Indicates if this document / line is printed',0,100,1000494,1250102,TO_TIMESTAMP('2012-06-18 11:16:01','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Printed checkbox indicates if this document or line will included when printing.','N',100)
;

-- 18/06/2012 11h16min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250102 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min3s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:02','YYYY-MM-DD HH24:MI:SS'),'Y','Processed','The document has been processed',0,100,1000574,1250103,TO_TIMESTAMP('2012-06-18 11:16:02','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Processed checkbox indicates that a document has been processed.','N',100)
;

-- 18/06/2012 11h16min3s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250103 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:03','YYYY-MM-DD HH24:MI:SS'),'Y','Sales Transaction','This is a Sales Transaction',0,100,1000493,1250104,TO_TIMESTAMP('2012-06-18 11:16:03','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','N',100)
;

-- 18/06/2012 11h16min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250104 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min6s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:04','YYYY-MM-DD HH24:MI:SS'),'Y','Service Total Amount','Defines the Service Total Amount',0,100,1000704,1250105,TO_TIMESTAMP('2012-06-18 11:16:04','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Service Total Amount','N',100)
;

-- 18/06/2012 11h16min6s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250105 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min7s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:06','YYYY-MM-DD HH24:MI:SS'),'Y','Ship Location','The Shipment Location ID',0,100,1001048,1250106,TO_TIMESTAMP('2012-06-18 11:16:06','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Shipment Location ID','N',100)
;

-- 18/06/2012 11h16min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250106 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min8s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:07','YYYY-MM-DD HH24:MI:SS'),'Y','Shipment Note','Extra Shipment Information ',0,100,1001044,1250107,TO_TIMESTAMP('2012-06-18 11:16:07','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Extra Shipment Information','N',100)
;

-- 18/06/2012 11h16min8s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250107 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:08','YYYY-MM-DD HH24:MI:SS'),'Y','Shipment/Receipt','Material Shipment Document',0,100,1000488,1250108,TO_TIMESTAMP('2012-06-18 11:16:08','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Material Shipment / Receipt ','N',100)
;

-- 18/06/2012 11h16min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250108 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:09','YYYY-MM-DD HH24:MI:SS'),'Y','Shipper','Method or manner of product delivery',0,100,1000489,1250109,TO_TIMESTAMP('2012-06-18 11:16:09','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Shipper indicates the method of delivering product','N',100)
;

-- 18/06/2012 11h16min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250109 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:11','YYYY-MM-DD HH24:MI:SS'),'Y','SISCOMEX Total','SISCOMEX Total for all the document',0,100,1001046,1250110,TO_TIMESTAMP('2012-06-18 11:16:11','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','SISCOMEX Total for all the document','N',100)
;

-- 18/06/2012 11h16min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250110 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:12','YYYY-MM-DD HH24:MI:SS'),'Y','Target Document Type','Target document type for conversing documents',0,100,1000484,1250111,TO_TIMESTAMP('2012-06-18 11:16:12','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','N',100)
;

-- 18/06/2012 11h16min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250111 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min14s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:13','YYYY-MM-DD HH24:MI:SS'),'Y','Time InOut','Defines the InOut Time',0,100,1000909,1250112,TO_TIMESTAMP('2012-06-18 11:16:13','YYYY-MM-DD HH24:MI:SS'),5,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the InOut Time','N',100)
;

-- 18/06/2012 11h16min14s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250112 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min16s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:14','YYYY-MM-DD HH24:MI:SS'),'Y','Total Lines','Total of all document lines',0,100,1000571,1250113,TO_TIMESTAMP('2012-06-18 11:16:14','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Total amount displays the total of all lines in document currency','N',100)
;

-- 18/06/2012 11h16min16s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250113 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:16','YYYY-MM-DD HH24:MI:SS'),'Y','Transaction Date','Transaction Date',0,100,1100083,1250114,TO_TIMESTAMP('2012-06-18 11:16:16','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Transaction Date indicates the date of the transaction.','N',100)
;

-- 18/06/2012 11h16min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250114 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h16min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-06-18 11:16:17','YYYY-MM-DD HH24:MI:SS'),'Y','Transaction Type','Defines the Transaction Type',0,100,1100176,1250115,TO_TIMESTAMP('2012-06-18 11:16:17','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA','N','N',1000020,'N','Y','Defines the Transaction Type','N',100)
;

-- 18/06/2012 11h16min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250115 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250002
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250003
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250004
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250045
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250047
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250042
;

-- 18/06/2012 11h24min29s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250050
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250048
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250054
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250060
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250062
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250065
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250067
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250070
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250072
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250084
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250086
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250088
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250089
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250090
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250091
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250092
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250093
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250094
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250095
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250096
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250097
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250098
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250102
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250110
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250104
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250105
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250113
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250115
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1250046
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1250087
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250057
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250076
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250103
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250112
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 11h24min30s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h24min39s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250087
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250112
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250057
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250076
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250103
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h26min17s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250076
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250103
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250057
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 11h31min1s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h31min10s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h31min15s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h31min22s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h31min25s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250049
;

-- 18/06/2012 11h31min30s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250055
;

-- 18/06/2012 11h31min39s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h31min41s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:31:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h32min58s BRT

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h32min58s BRT

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250057
;

-- 18/06/2012 11h33min9s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 11:33:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250057
;

-- 18/06/2012 11h33min10s BRT

UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2012-06-18 11:33:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250111
;

-- 18/06/2012 11h33min26s BRT

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 18/06/2012 11h33min26s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h33min26s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 18/06/2012 11h33min26s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h34min8s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-18 11:34:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h34min14s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-18 11:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250061
;

-- 18/06/2012 11h34min16s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-18 11:34:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h35min6s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:35:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250081
;

-- 18/06/2012 11h36min4s BRT

UPDATE AD_Field SET DisplayLogic='(@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'') & (@lbr_FinNFe@=''2'' | @lbr_FinNFe@=''3'')',Updated=TO_TIMESTAMP('2012-06-18 11:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h36min43s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_FinNFe@=''2'' | @lbr_FinNFe@=''3''',Updated=TO_TIMESTAMP('2012-06-18 11:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250075
;

-- 18/06/2012 11h37min23s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:37:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250059
;

-- 18/06/2012 11h37min44s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:37:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250052
;

-- 18/06/2012 11h37min50s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:37:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h37min54s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:37:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h38min0s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h38min5s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h38min11s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h38min16s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h38min26s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250069
;

-- 18/06/2012 11h38min30s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250044
;

-- 18/06/2012 11h38min35s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:38:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250043
;

-- 18/06/2012 11h38min39s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:38:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h39min53s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:39:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h39min55s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:39:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h39min57s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:39:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h39min59s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:39:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h40min2s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:40:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h40min5s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 11:40:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h40min25s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeID@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:40:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250078
;

-- 18/06/2012 11h40min31s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeID@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:40:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250077
;

-- 18/06/2012 11h41min17s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h41min17s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h41min17s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h41min17s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h41min37s BRT

UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2012-06-18 11:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h42min4s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:42:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250080
;

-- 18/06/2012 11h42min6s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:42:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250114
;

-- 18/06/2012 11h42min11s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250053
;

-- 18/06/2012 11h42min53s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeID@!''''',Updated=TO_TIMESTAMP('2012-06-18 11:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 18/06/2012 11h43min38s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 11:43:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250044
;

-- 18/06/2012 11h43min43s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 11:43:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250043
;

-- 18/06/2012 11h43min46s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 11:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h45min55s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 11h45min55s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 11h45min55s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 11h46min22s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 11h46min40s BRT

UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:46:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250101
;

-- 18/06/2012 11h46min44s BRT

UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:46:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250085
;

-- 18/06/2012 11h46min49s BRT

UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y', AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2012-06-18 11:46:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250108
;

-- 18/06/2012 11h46min53s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:46:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250101
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 11h49min34s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 11h50min7s BRT

INSERT INTO AD_FieldGroup (Created,AD_Client_ID,AD_FieldGroup_ID,Updated,EntityType,CreatedBy,AD_Org_ID,IsActive,Name,UpdatedBy,FieldGroupType,IsCollapsedByDefault) VALUES (TO_TIMESTAMP('2012-06-18 11:50:05','YYYY-MM-DD HH24:MI:SS'),0,1250000,TO_TIMESTAMP('2012-06-18 11:50:05','YYYY-MM-DD HH24:MI:SS'),'LBRA',100,0,'Y','lbr_PartnerTab',100,'T','N')
;

-- 18/06/2012 11h50min7s BRT

INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 18/06/2012 11h50min15s BRT

UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Parceiro de Negócios',Updated=TO_TIMESTAMP('2012-06-18 11:50:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1250000 AND AD_Language='pt_BR'
;

-- 18/06/2012 11h51min2s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250041
;

-- 18/06/2012 11h51min6s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250100
;

-- 18/06/2012 11h51min9s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250024
;

-- 18/06/2012 11h51min13s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250006
;

-- 18/06/2012 11h51min20s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:51:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250100
;

-- 18/06/2012 11h51min26s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 11:51:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250024
;

-- 18/06/2012 11h51min30s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 11:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250006
;

-- 18/06/2012 11h51min34s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 11:51:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250007
;

-- 18/06/2012 11h51min40s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250007
;

-- 18/06/2012 11h51min47s BRT

UPDATE AD_Field SET DisplayLength=44, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250008
;

-- 18/06/2012 11h51min59s BRT

UPDATE AD_Field SET DisplayLength=44, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:51:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250009
;

-- 18/06/2012 11h52min5s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250011
;

-- 18/06/2012 11h52min11s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250023
;

-- 18/06/2012 11h52min18s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250025
;

-- 18/06/2012 11h52min24s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250026
;

-- 18/06/2012 11h52min47s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250039
;

-- 18/06/2012 11h52min56s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:52:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250010
;

-- 18/06/2012 11h53min0s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 11:53:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250027
;

-- 18/06/2012 11h53min7s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2012-06-18 11:53:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250012
;

-- 18/06/2012 11h53min24s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250012
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 11h54min26s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 11h55min45s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 11:55:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250006
;

-- 18/06/2012 11h55min47s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:55:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250007
;

-- 18/06/2012 11h55min50s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 11:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250008
;

-- 18/06/2012 11h55min54s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 11:55:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250009
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h0min31s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 12h3min9s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h4min18s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 12:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250012
;

-- 18/06/2012 12h4min56s BRT

INSERT INTO AD_FieldGroup (Created,AD_Client_ID,AD_FieldGroup_ID,Updated,EntityType,CreatedBy,AD_Org_ID,IsActive,Name,UpdatedBy,FieldGroupType,IsCollapsedByDefault) VALUES (TO_TIMESTAMP('2012-06-18 12:04:55','YYYY-MM-DD HH24:MI:SS'),0,1250001,TO_TIMESTAMP('2012-06-18 12:04:55','YYYY-MM-DD HH24:MI:SS'),'LBRA',100,0,'Y','lbr_DeliveryTab',100,'T','N')
;

-- 18/06/2012 12h4min56s BRT

INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 18/06/2012 12h5min1s BRT

UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Entrega',Updated=TO_TIMESTAMP('2012-06-18 12:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1250001 AND AD_Language='pt_BR'
;

-- 18/06/2012 12h5min23s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h5min30s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250013
;

-- 18/06/2012 12h5min33s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h5min37s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250015
;

-- 18/06/2012 12h5min40s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h5min43s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250018
;

-- 18/06/2012 12h5min49s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h5min52s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250017
;

-- 18/06/2012 12h5min56s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:05:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h6min0s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250022
;

-- 18/06/2012 12h6min3s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h6min6s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h6min10s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250064
;

-- 18/06/2012 12h6min13s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250063
;

-- 18/06/2012 12h6min17s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h6min20s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250099
;

-- 18/06/2012 12h6min24s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h6min31s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250066
;

-- 18/06/2012 12h6min34s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250001,Updated=TO_TIMESTAMP('2012-06-18 12:06:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h8min1s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h8min7s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h8min9s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250032
;

-- 18/06/2012 12h8min12s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h8min15s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250033
;

-- 18/06/2012 12h8min18s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h8min20s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250030
;

-- 18/06/2012 12h8min23s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h8min26s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250028
;

-- 18/06/2012 12h8min31s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250040
;

-- 18/06/2012 12h8min33s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h8min37s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h8min47s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h8min54s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250099
;

-- 18/06/2012 12h8min57s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:08:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h9min8s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h9min13s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 12:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h9min18s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h9min23s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h9min26s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250017
;

-- 18/06/2012 12h9min29s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h9min31s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:09:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250018
;

-- 18/06/2012 12h9min34s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h9min36s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:09:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250015
;

-- 18/06/2012 12h9min39s BRT

UPDATE AD_Field SET DisplayLength=22, IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h9min41s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 12:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250013
;

-- 18/06/2012 12h9min46s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 12:09:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h11min22s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h11min25s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h11min30s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h11min34s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h11min37s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h11min41s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h11min45s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h11min50s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h11min54s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h11min58s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h12min5s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h12min8s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h12min12s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h12min16s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h12min20s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h12min24s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 12:12:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 12h14min12s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h14min38s BRT

INSERT INTO AD_FieldGroup (Created,AD_Client_ID,AD_FieldGroup_ID,Updated,EntityType,CreatedBy,AD_Org_ID,IsActive,Name,UpdatedBy,FieldGroupType,IsCollapsedByDefault) VALUES (TO_TIMESTAMP('2012-06-18 12:14:36','YYYY-MM-DD HH24:MI:SS'),0,1250002,TO_TIMESTAMP('2012-06-18 12:14:36','YYYY-MM-DD HH24:MI:SS'),'LBRA',100,0,'Y','lbr_ShipperTab',100,'T','N')
;

-- 18/06/2012 12h14min38s BRT

INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 18/06/2012 12h14min44s BRT

UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Transportadora',Updated=TO_TIMESTAMP('2012-06-18 12:14:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1250002 AND AD_Language='pt_BR'
;

-- 18/06/2012 12h14min50s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:14:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250109
;

-- 18/06/2012 12h14min54s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:14:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h14min57s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:14:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250040
;

-- 18/06/2012 12h15min3s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h15min6s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250028
;

-- 18/06/2012 12h15min9s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h15min13s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250030
;

-- 18/06/2012 12h15min17s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h15min20s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250033
;

-- 18/06/2012 12h15min24s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h15min28s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250032
;

-- 18/06/2012 12h15min32s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h15min35s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250038
;

-- 18/06/2012 12h15min39s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250002,Updated=TO_TIMESTAMP('2012-06-18 12:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 12h21min53s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 12h22min8s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250000,Updated=TO_TIMESTAMP('2012-06-18 12:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250084
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 13h42min37s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 13h43min15s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_FinNFe@=''2'' | @lbr_FinNFe@=''3''',Updated=TO_TIMESTAMP('2012-06-18 13:43:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250084
;

-- 18/06/2012 13h43min18s BRT

DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1250075
;

-- 18/06/2012 13h43min18s BRT

DELETE FROM AD_Field WHERE AD_Field_ID=1250075
;

-- 18/06/2012 13h44min19s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 13:44:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250084
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250084
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 13h45min43s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 18/06/2012 13h45min44s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h46min8s BRT

INSERT INTO AD_FieldGroup (Created,AD_Client_ID,AD_FieldGroup_ID,Updated,EntityType,CreatedBy,AD_Org_ID,IsActive,Name,UpdatedBy,FieldGroupType,IsCollapsedByDefault) VALUES (TO_TIMESTAMP('2012-06-18 13:46:06','YYYY-MM-DD HH24:MI:SS'),0,1250003,TO_TIMESTAMP('2012-06-18 13:46:06','YYYY-MM-DD HH24:MI:SS'),'LBRA',100,0,'Y','lbr_OrgTab',100,'T','N')
;

-- 18/06/2012 13h46min8s BRT

INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 18/06/2012 13h46min15s BRT

UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Organização',Updated=TO_TIMESTAMP('2012-06-18 13:46:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1250003 AND AD_Language='pt_BR'
;

-- 18/06/2012 13h46min29s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h46min34s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:46:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h46min39s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 13:46:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h46min42s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 13:46:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h46min46s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250047
;

-- 18/06/2012 13h46min51s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250067
;

-- 18/06/2012 13h46min57s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:46:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250092
;

-- 18/06/2012 13h47min3s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250088
;

-- 18/06/2012 13h47min8s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250089
;

-- 18/06/2012 13h47min15s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250090
;

-- 18/06/2012 13h47min20s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250091
;

-- 18/06/2012 13h47min24s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250093
;

-- 18/06/2012 13h47min32s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250097
;

-- 18/06/2012 13h47min37s BRT

UPDATE AD_Field SET DisplayLength=22, AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250098
;

-- 18/06/2012 13h47min41s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250094
;

-- 18/06/2012 13h47min45s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1250003,Updated=TO_TIMESTAMP('2012-06-18 13:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h48min23s BRT

UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-06-18 13:48:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250070
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250057
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250084
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250062
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250054
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1250065
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1250105
;

-- 18/06/2012 13h51min6s BRT

UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1250113
;

-- 18/06/2012 13h51min15s BRT

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-06-18 13:51:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250070
;

-- 18/06/2012 13h51min40s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h51min40s BRT

UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1250113
;

-- 18/06/2012 13h51min40s BRT

UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1250105
;

-- 18/06/2012 13h51min40s BRT

UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1250054
;

-- 18/06/2012 13h51min40s BRT

UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h51min47s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-06-18 13:51:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h51min51s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-06-18 13:51:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250054
;

-- 18/06/2012 13h51min53s BRT

UPDATE AD_Field SET IsFieldOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 13:51:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h51min57s BRT

UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-06-18 13:51:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250105
;

-- 18/06/2012 13h52min1s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-06-18 13:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250113
;

-- 18/06/2012 13h52min8s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-06-18 13:52:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250065
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250062
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 13h52min35s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 18/06/2012 13h52min36s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h53min5s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h53min5s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h53min5s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 13h53min26s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 18/06/2012 13h53min26s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h53min26s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h53min57s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 13:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h54min0s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-18 13:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h54min11s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-18 13:54:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250048
;

-- 18/06/2012 13h54min13s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-18 13:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250071
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250062
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250065
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1250113
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1250105
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1250054
;

-- 18/06/2012 13h54min56s BRT

UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h55min4s BRT

UPDATE AD_Field SET IsSameLine='Y', IsFieldOnly='N',Updated=TO_TIMESTAMP('2012-06-18 13:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250110
;

-- 18/06/2012 13h55min26s BRT

UPDATE AD_Field SET DisplayLength=44,Updated=TO_TIMESTAMP('2012-06-18 13:55:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250005
;

-- 18/06/2012 13h58min57s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_FinNFe@=''2''',Updated=TO_TIMESTAMP('2012-06-18 13:58:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250084
;

-- 18/06/2012 14h4min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:41','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000674,1250116,TO_TIMESTAMP('2012-06-18 14:04:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000026,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 18/06/2012 14h4min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250116 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:45','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000675,1250117,TO_TIMESTAMP('2012-06-18 14:04:45','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000026,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 18/06/2012 14h4min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250117 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:46','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000681,1250118,TO_TIMESTAMP('2012-06-18 14:04:46','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000026,'N','Y','Primary key table LBR_NotaFiscal','N',100,'N')
;

-- 18/06/2012 14h4min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250118 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:47','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000676,1250119,TO_TIMESTAMP('2012-06-18 14:04:47','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000026,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 18/06/2012 14h4min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250119 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min50s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:49','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Group','Defines the Tax Group',0,100,1000682,1250120,TO_TIMESTAMP('2012-06-18 14:04:49','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000026,'N','Y','Primary key table LBR_TaxGroup','N',100,'N')
;

-- 18/06/2012 14h4min50s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250120 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:50','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base Amount','Defines the Tax Base Amount',0,100,1000683,1250121,TO_TIMESTAMP('2012-06-18 14:04:50','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',60,'N','N',1000026,'N','Y','Defines the Tax Base Amount','N',100,'N')
;

-- 18/06/2012 14h4min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250121 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min55s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:54','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Amount','Defines the Tax Amount',0,100,1000684,1250122,TO_TIMESTAMP('2012-06-18 14:04:54','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'Y','N',1000026,'N','Y','Defines the Tax Amount','N',100,'N')
;

-- 18/06/2012 14h4min55s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250122 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h4min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:04:55','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Tax','Defines the Nota Fiscal Tax',0,100,1000673,1250123,TO_TIMESTAMP('2012-06-18 14:04:55','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000026,'N','Y','Primary key table LBR_NFTax','N',100,'N')
;

-- 18/06/2012 14h4min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250123 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min8s BRT

UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2012-06-18 14:05:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000026
;

-- 18/06/2012 14h5min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:17','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total CIF','The total CIF for the line',0,100,1001050,1250124,TO_TIMESTAMP('2012-06-18 14:05:17','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000021,'N','Y','The total Cost, Insurance and Freight for the Line','N',100,'N')
;

-- 18/06/2012 14h5min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250124 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:18','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000557,1250125,TO_TIMESTAMP('2012-06-18 14:05:18','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000021,'N','Y','Primary key table LBR_NotaFiscal','N',100,'N')
;

-- 18/06/2012 14h5min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250125 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:23','YYYY-MM-DD HH24:MI:SS'),'Y','List price Value','Valuation with List Price',0,100,1000583,1250127,TO_TIMESTAMP('2012-06-18 14:05:23','YYYY-MM-DD HH24:MI:SS'),10,'N','N',0,'LBRA',0,'N','N',1000021,'N','Y','N',100,'N')
;

-- 18/06/2012 14h5min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250127 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min25s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:24','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000550,1250128,TO_TIMESTAMP('2012-06-18 14:05:24','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000021,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 18/06/2012 14h5min26s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250128 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:26','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000549,1250129,TO_TIMESTAMP('2012-06-18 14:05:26','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000021,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 18/06/2012 14h5min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250129 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:27','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000551,1250130,TO_TIMESTAMP('2012-06-18 14:05:27','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',30,'N','N',1000021,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 18/06/2012 14h5min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250130 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:28','YYYY-MM-DD HH24:MI:SS'),'Y','Is Service','Defines if the lines is a Service',0,100,1000703,1250131,TO_TIMESTAMP('2012-06-18 14:05:28','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000021,'N','Y','Defines if the lines is a Service','N',100,'N')
;

-- 18/06/2012 14h5min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250131 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min36s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:29','YYYY-MM-DD HH24:MI:SS'),'Y','Invoice Line','Invoice Detail Line',0,100,1000556,1250132,TO_TIMESTAMP('2012-06-18 14:05:29','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000021,'N','Y','The Invoice Line uniquely identifies a single line of an Invoice.','N',100,125,'N')
;

-- 18/06/2012 14h5min36s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250132 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:36','YYYY-MM-DD HH24:MI:SS'),'Y','Line No','Unique line for this document',0,100,1000588,1250133,TO_TIMESTAMP('2012-06-18 14:05:36','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',60,'Y','N',1000021,'N','Y','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','N',100,125,'N')
;

-- 18/06/2012 14h5min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250133 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:37','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Name','Defines the CFOP Name',0,100,1000590,1250134,TO_TIMESTAMP('2012-06-18 14:05:37','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'N','N',1000021,'N','Y','Defines the CFOP Name','Y',100,125,'N')
;

-- 18/06/2012 14h5min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250134 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min40s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:38','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP','Primary key table LBR_CFOP',0,100,1000561,1250135,TO_TIMESTAMP('2012-06-18 14:05:38','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',80,'Y','N',1000021,'N','Y','Primary key table LBR_CFOP','N',100,125,'N')
;

-- 18/06/2012 14h5min40s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250135 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:40','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1000586,1250136,TO_TIMESTAMP('2012-06-18 14:05:40','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA',90,'N','N',1000021,'N','Y','A description is limited to 255 characters.','N',100,125,'N')
;

-- 18/06/2012 14h5min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250136 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:41','YYYY-MM-DD HH24:MI:SS'),'Y','Product','Product, Service, Item',0,100,1000558,1250137,TO_TIMESTAMP('2012-06-18 14:05:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',100,'N','N',1000021,'N','Y','Identifies an item which is either purchased or sold in this organization.','N',100,106,'N')
;

-- 18/06/2012 14h5min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250137 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:42','YYYY-MM-DD HH24:MI:SS'),'Y','Product Name','Name of the Product',0,100,1000579,1250138,TO_TIMESTAMP('2012-06-18 14:05:42','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA',110,'N','N',1000021,'N','Y','N',100,106,'N')
;

-- 18/06/2012 14h5min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250138 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:46','YYYY-MM-DD HH24:MI:SS'),'Y','Product Key','Key of the Product',0,100,1000580,1250139,TO_TIMESTAMP('2012-06-18 14:05:46','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',120,'N','N',1000021,'N','Y','N',100,106,'N')
;

-- 18/06/2012 14h5min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250139 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min48s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:47','YYYY-MM-DD HH24:MI:SS'),'Y','Partner Product Key','Product Key of the Business Partner',0,100,1000591,1250140,TO_TIMESTAMP('2012-06-18 14:05:47','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',130,'Y','N',1000021,'N','Y','The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','N',100,106,'N')
;

-- 18/06/2012 14h5min48s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250140 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:48','YYYY-MM-DD HH24:MI:SS'),'Y','UOM','Unit of Measure',0,100,1000559,1250141,TO_TIMESTAMP('2012-06-18 14:05:48','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',140,'N','N',1000021,'N','Y','The UOM defines a unique non monetary Unit of Measure','N',100,106,'N')
;

-- 18/06/2012 14h5min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250141 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:49','YYYY-MM-DD HH24:MI:SS'),'Y','UOM Name','Defines the UOM Name',0,100,1000585,1250142,TO_TIMESTAMP('2012-06-18 14:05:49','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',150,'Y','N',1000021,'N','Y','Defines the UOM Name','N',100,106,'N')
;

-- 18/06/2012 14h5min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250142 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min55s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:54','YYYY-MM-DD HH24:MI:SS'),'Y','NCM Name','Defines the NCM Name',0,100,1000589,1250143,TO_TIMESTAMP('2012-06-18 14:05:54','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',160,'N','N',1000021,'N','Y','Defines the NCM Name','Y',100,106,'N')
;

-- 18/06/2012 14h5min55s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250143 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h5min59s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:55','YYYY-MM-DD HH24:MI:SS'),'Y','NCM','Primary key table LBR_NCM',0,100,1000560,1250144,TO_TIMESTAMP('2012-06-18 14:05:55','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',170,'Y','N',1000021,'N','Y','Primary key table LBR_NCM','N',100,106,'N')
;

-- 18/06/2012 14h5min59s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:05:59','YYYY-MM-DD HH24:MI:SS'),'Y','Quantity','Quantity',0,100,1000584,1250145,TO_TIMESTAMP('2012-06-18 14:05:59','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',180,'N','N',1000021,'N','Y','The Quantity indicates the number of a specific product or item for this document.','N',100,103,'N')
;

-- 18/06/2012 14h6min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250145 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:00','YYYY-MM-DD HH24:MI:SS'),'Y','Price','Price',0,100,1000581,1250146,TO_TIMESTAMP('2012-06-18 14:06:00','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',190,'Y','N',1000021,'N','Y','The Price indicates the Price for a product or service.','N',100,103,'N')
;

-- 18/06/2012 14h6min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250146 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min5s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:01','YYYY-MM-DD HH24:MI:SS'),'Y','Discount %','Discount in percent',0,100,1000587,1250147,TO_TIMESTAMP('2012-06-18 14:06:01','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',200,'N','N',1000021,'N','N','The Discount indicates the discount applied or taken as a percentage.','N',100,103,'N')
;

-- 18/06/2012 14h6min5s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250147 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:05','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total','Total line amount incl. Tax',0,100,1000582,1250148,TO_TIMESTAMP('2012-06-18 14:06:05','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',210,'Y','N',1000021,'N','Y','Total line amount','N',100,103,'N')
;

-- 18/06/2012 14h6min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250148 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:10','YYYY-MM-DD HH24:MI:SS'),'Y','Service Taxes','String with all Taxes Names and Taxes Rates',0,100,1000711,1250149,TO_TIMESTAMP('2012-06-18 14:06:10','YYYY-MM-DD HH24:MI:SS'),1000,'Y','N',0,'LBRA',220,'N','N',1000021,'N','Y','String with all Taxes Names and Taxes Rates','N',100,'@lbr_IsService@=''Y''','N')
;

-- 18/06/2012 14h6min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250149 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:11','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total SISCOMEX','The total SISCOMEX for the Line',0,100,1001051,1250150,TO_TIMESTAMP('2012-06-18 14:06:11','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',230,'N','N',1000021,'N','Y','The total SISCOMEX for the Line','N',100,'N')
;

-- 18/06/2012 14h6min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250150 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:12','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status','Defines the Tax Status',0,100,1000701,1250151,TO_TIMESTAMP('2012-06-18 14:06:12','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',240,'N','N',1000021,'N','Y','Defines the Tax Status','N',100,'N')
;

-- 18/06/2012 14h6min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250151 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:13','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (IPI)','Defines the Tax Status (IPI)',0,100,1120000,1250152,TO_TIMESTAMP('2012-06-18 14:06:13','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',250,'Y','N',1000021,'N','Y','Defines the Tax Status (IPI)','N',100,'N')
;

-- 18/06/2012 14h6min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250152 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:17','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (PIS)','Defines the Tax Status (PIS)',0,100,1120267,1250153,TO_TIMESTAMP('2012-06-18 14:06:17','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',251,'N','N',1000021,'N','Y','Defines the Tax Status (PIS)','N',100,'N')
;

-- 18/06/2012 14h6min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250153 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min19s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:18','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (COFINS)','Defines the Tax Status (COFINS)',0,100,1120268,1250154,TO_TIMESTAMP('2012-06-18 14:06:18','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',252,'Y','N',1000021,'N','Y','Defines the Tax Status (COFINS)','N',100,'N')
;

-- 18/06/2012 14h6min20s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250154 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:20','YYYY-MM-DD HH24:MI:SS'),'Y','DI',0,100,1100099,1250155,TO_TIMESTAMP('2012-06-18 14:06:20','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',260,'N','N',1000021,'N','Y','N',100,1100003,'N')
;

-- 18/06/2012 14h6min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250155 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:24','YYYY-MM-DD HH24:MI:SS'),'Y','Manufacturer','Manufacturer of the Product',0,100,1100103,1250156,TO_TIMESTAMP('2012-06-18 14:06:24','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA',270,'Y','N',1000021,'N','Y','The manufacturer of the Product (used if different from the Business Partner / Vendor)','N',100,1100003,'N')
;

-- 18/06/2012 14h6min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250156 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:28','YYYY-MM-DD HH24:MI:SS'),'Y','Número da adição',0,100,1100101,1250157,TO_TIMESTAMP('2012-06-18 14:06:28','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',280,'N','N',1000021,'N','Y','N',100,'N')
;

-- 18/06/2012 14h6min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250157 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:32','YYYY-MM-DD HH24:MI:SS'),'Y','Número. Seq. Item',0,100,1100102,1250158,TO_TIMESTAMP('2012-06-18 14:06:32','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',290,'Y','N',1000021,'N','Y','N',100,'N')
;

-- 18/06/2012 14h6min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250158 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h6min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:06:33','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line','Primary key table LBR_NotaFiscalLine',0,100,1000548,1250159,TO_TIMESTAMP('2012-06-18 14:06:33','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000021,'N','Y','Primary key table LBR_NotaFiscalLine','N',100,'N')
;

-- 18/06/2012 14h6min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250159 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250155
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250156
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250158
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250157
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250153
;

-- 18/06/2012 14h8min1s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250154
;

-- 18/06/2012 14h8min19s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:09','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000686,1250160,TO_TIMESTAMP('2012-06-18 14:08:09','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000027,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 18/06/2012 14h8min19s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250160 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min20s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:19','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000687,1250161,TO_TIMESTAMP('2012-06-18 14:08:19','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000027,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 18/06/2012 14h8min20s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250161 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:20','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line','Primary key table LBR_NotaFiscalLine',0,100,1000693,1250162,TO_TIMESTAMP('2012-06-18 14:08:20','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000027,'N','Y','Primary key table LBR_NotaFiscalLine','N',100,'N')
;

-- 18/06/2012 14h8min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250162 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:22','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000688,1250163,TO_TIMESTAMP('2012-06-18 14:08:22','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000027,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 18/06/2012 14h8min23s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250163 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:23','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Group','Defines the Tax Group',0,100,1000694,1250164,TO_TIMESTAMP('2012-06-18 14:08:23','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000027,'N','Y','Primary key table LBR_TaxGroup','N',100,'N')
;

-- 18/06/2012 14h8min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250164 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min25s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:24','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Rate','Indicates the Tax Rate',0,100,1000709,1250165,TO_TIMESTAMP('2012-06-18 14:08:24','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',60,'N','N',1000027,'N','Y','Indicates the Tax Rate','N',100,'N')
;

-- 18/06/2012 14h8min25s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250165 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:25','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base','Indicates the Tax Base',0,100,1000710,1250166,TO_TIMESTAMP('2012-06-18 14:08:25','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'Y','N',1000027,'N','Y','Indicates the Tax Base','N',100,'N')
;

-- 18/06/2012 14h8min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250166 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:27','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base Amount','Defines the Tax Base Amount',0,100,1000695,1250167,TO_TIMESTAMP('2012-06-18 14:08:27','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',80,'N','N',1000027,'N','Y','Defines the Tax Base Amount','N',100,'N')
;

-- 18/06/2012 14h8min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250167 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:28','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Amount','Defines the Tax Amount',0,100,1000696,1250168,TO_TIMESTAMP('2012-06-18 14:08:28','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',90,'Y','N',1000027,'N','Y','Defines the Tax Amount','N',100,'N')
;

-- 18/06/2012 14h8min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250168 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:29','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1100178,1250169,TO_TIMESTAMP('2012-06-18 14:08:29','YYYY-MM-DD HH24:MI:SS'),40,'Y','N',0,'LBRA','N','N',1000027,'N','Y','A description is limited to 255 characters.','N',100,'N')
;

-- 18/06/2012 14h8min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250169 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h8min34s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-18 14:08:30','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line Tax','Defines the Nota Fiscal Line Tax',0,100,1000685,1250170,TO_TIMESTAMP('2012-06-18 14:08:30','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000027,'N','Y','Primary key table LBR_NFLineTax','N',100,'N')
;

-- 18/06/2012 14h8min34s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250170 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/06/2012 14h9min6s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250095
;

-- 18/06/2012 14h9min7s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250086
;

-- 18/06/2012 14h9min9s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250047
;

-- 18/06/2012 14h9min11s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250067
;

-- 18/06/2012 14h9min13s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250092
;

-- 18/06/2012 14h9min15s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250088
;

-- 18/06/2012 14h9min17s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250089
;

-- 18/06/2012 14h9min19s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250090
;

-- 18/06/2012 14h9min20s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250091
;

-- 18/06/2012 14h9min22s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250093
;

-- 18/06/2012 14h9min24s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250097
;

-- 18/06/2012 14h9min26s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250098
;

-- 18/06/2012 14h9min28s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250094
;

-- 18/06/2012 14h9min30s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250096
;

-- 18/06/2012 14h9min32s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250065
;

-- 18/06/2012 14h9min34s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250113
;

-- 18/06/2012 14h9min37s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:09:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250105
;

-- 18/06/2012 14h9min42s BRT

UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2012-06-18 14:09:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250065
;

-- 18/06/2012 14h9min44s BRT

UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2012-06-18 14:09:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250113
;

-- 18/06/2012 14h9min47s BRT

UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2012-06-18 14:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250105
;

-- 18/06/2012 14h10min58s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-18 14:10:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250070
;

-- 18/06/2012 14h32min14s BRT

UPDATE AD_Workflow SET AD_WF_Node_ID=1250004, IsValid='Y',Updated=TO_TIMESTAMP('2012-06-18 14:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1250001
;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1001047); -- lbr_NFReference
delete from ad_field where ad_column_id = 1001047;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1001042); -- lbr_NFType (LBR_NotaFiscal)
delete from ad_field where ad_column_id = 1001042;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where ad_column_id = 1001068); -- lbr_NFType (C_Invoice)
delete from ad_field where ad_column_id = 1001068;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000028);
delete from ad_field where AD_Tab_ID=1000028;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000029);
delete from ad_field where AD_Tab_ID=1000029;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000030);
delete from ad_field where AD_Tab_ID=1000030;

delete from ad_field_trl where ad_field_id in (select ad_field_id from ad_field where AD_Tab_ID=1000031);
delete from ad_field where AD_Tab_ID=1000031;

-- 19/06/2012 14h19min48s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1001047
;

-- 19/06/2012 14h19min48s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1001047
;

-- 19/06/2012 14h27min13s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000357
;

-- 19/06/2012 14h27min13s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1000357
;

-- 19/06/2012 14h27min51s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1001042
;

-- 19/06/2012 14h27min51s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1001042
;

-- 19/06/2012 14h29min8s BRT

DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1001068
;

-- 19/06/2012 14h29min8s BRT

DELETE FROM AD_Column WHERE AD_Column_ID=1001068
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000077
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000077
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000078
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000078
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000079
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000079
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000080
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000080
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000081
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000081
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000082
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000082
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000083
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000083
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000084
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000084
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000085
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000085
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000086
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000086
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000087
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000087
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000088
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000088
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000089
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000089
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000090
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000090
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000091
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000091
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000092
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000092
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000093
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000093
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000094
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000094
;

-- 19/06/2012 14h32min13s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000095
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000095
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000096
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000096
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000097
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000097
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000098
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000098
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000099
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000099
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000100
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000100
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000101
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000101
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000102
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000102
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000103
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000103
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000104
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000104
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000105
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000105
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000106
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000106
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000107
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000107
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000108
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000108
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000109
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000109
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000110
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000110
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000111
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000111
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000112
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000112
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000113
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000113
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000114
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000114
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000115
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000115
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000116
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000116
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000117
;

-- 19/06/2012 14h32min14s BRT

DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000117
;

-- 19/06/2012 14h32min29s BRT

DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000044
;

-- 19/06/2012 14h32min29s BRT

DELETE FROM AD_Reference WHERE AD_Reference_ID=1000044
;

-- 19/06/2012 14h32min43s BRT

DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000352
;

-- 19/06/2012 14h32min43s BRT

DELETE FROM AD_Element WHERE AD_Element_ID=1000352
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 19/06/2012 14h56min25s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 19/06/2012 14h57min0s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 19/06/2012 14h57min0s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 19/06/2012 14h57min0s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 19/06/2012 14h57min0s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 19/06/2012 14h57min0s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 19/06/2012 14h57min57s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:57:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250048
;

-- 19/06/2012 14h58min10s BRT

UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250071
;

-- 19/06/2012 14h58min19s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250078
;

-- 19/06/2012 14h58min27s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250077
;

-- 19/06/2012 14h58min34s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250079
;

-- 19/06/2012 14h58min46s BRT

UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250053
;

-- 19/06/2012 14h58min52s BRT

UPDATE AD_Field SET IsSameLine='N', AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250080
;

-- 19/06/2012 14h58min58s BRT

UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 14:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250114
;

-- 19/06/2012 14h59min5s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250069
;

-- 19/06/2012 14h59min9s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250101
;

-- 19/06/2012 14h59min14s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250085
;

-- 19/06/2012 14h59min18s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250108
;

-- 19/06/2012 14h59min24s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250044
;

-- 19/06/2012 14h59min28s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250043
;

-- 19/06/2012 14h59min34s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2012-06-19 14:59:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250058
;

-- 19/06/2012 14h59min39s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-19 14:59:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250043
;

-- 19/06/2012 14h59min42s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-19 14:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250044
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250042
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250074
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250081
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250061
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250084
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250056
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1250049
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1250059
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250055
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250048
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250071
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1250065
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1250113
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1250105
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1250054
;

-- 19/06/2012 15h0min59s BRT

UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1250110
;

-- 19/06/2012 15h1min6s BRT

UPDATE AD_Field SET IsSameLine='Y', IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-19 15:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250042
;

-- 19/06/2012 15h1min38s BRT

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250130
;

-- 19/06/2012 15h1min38s BRT

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250125
;

-- 19/06/2012 15h1min43s BRT

UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-06-19 15:01:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250125
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250072
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250078
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1250077
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1250079
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1250053
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1250080
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1250114
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250069
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250101
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250085
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250108
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250052
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250044
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250043
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250058
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250005
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1250041
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1250100
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1250024
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1250006
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1250007
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1250008
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1250009
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1250011
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1250023
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1250039
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1250010
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1250026
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1250027
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1250012
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1250025
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1250107
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1250051
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1250013
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1250014
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1250015
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1250016
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1250018
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1250020
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1250017
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1250021
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1250022
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1250019
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1250064
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1250063
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1250068
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1250099
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1250082
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1250066
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1250073
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1250109
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1250106
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1250040
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1250036
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1250028
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1250029
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1250030
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1250031
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1250033
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1250035
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1250032
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1250037
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1250038
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1250034
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1250095
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1250086
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1250047
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1250067
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1250092
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1250088
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1250089
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1250090
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1250091
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1250093
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1250097
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1250098
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1250094
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1250096
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1250065
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1250113
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1250105
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1250054
;

-- 19/06/2012 15h5min13s BRT

UPDATE AD_Field SET SeqNo=990,IsDisplayed='Y' WHERE AD_Field_ID=1250110
;

-- 19/06/2012 15h5min23s BRT

UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-06-19 15:05:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250072
;

-- 19/06/2012 15h5min48s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!''''',Updated=TO_TIMESTAMP('2012-06-19 15:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250072
;

-- 19/06/2012 15h21min38s BRT

UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.docType',Updated=TO_TIMESTAMP('2012-06-19 15:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

-- 19/06/2012 15h21min50s BRT

UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2012-06-19 15:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000560
;

-- 19/06/2012 15h21min52s BRT

UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.setNCM',Updated=TO_TIMESTAMP('2012-06-19 15:21:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000560
;

-- 19/06/2012 15h22min3s BRT

UPDATE AD_Column SET Callout=NULL,Updated=TO_TIMESTAMP('2012-06-19 15:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000561
;

-- 19/06/2012 15h22min6s BRT

UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.setCFOP',Updated=TO_TIMESTAMP('2012-06-19 15:22:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000561
;

-- 19/06/2012 15h32min31s BRT

UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2012-06-19 15:32:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000473
;

-- 19/06/2012 15h32min40s BRT

UPDATE AD_Column SET SeqNo=1, IsIdentifier='Y',Updated=TO_TIMESTAMP('2012-06-19 15:32:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000491
;

-- 19/06/2012 15h47min35s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:34','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000476,1250171,TO_TIMESTAMP('2012-06-19 15:47:34','YYYY-MM-DD HH24:MI:SS'),1,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 19/06/2012 15h47min35s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250171 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:35','YYYY-MM-DD HH24:MI:SS'),'Y','Document Type','Document type or rules',0,100,1000483,1250172,TO_TIMESTAMP('2012-06-19 15:47:35','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','The Document Type determines document sequence and processing rules','N',100,'N')
;

-- 19/06/2012 15h47min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250172 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:37','YYYY-MM-DD HH24:MI:SS'),'Y','Sales Transaction','This is a Sales Transaction',0,100,1000493,1250173,TO_TIMESTAMP('2012-06-19 15:47:37','YYYY-MM-DD HH24:MI:SS'),1,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','N',100,'N')
;

-- 19/06/2012 15h47min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250173 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min39s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:38','YYYY-MM-DD HH24:MI:SS'),'Y','Printed','Indicates if this document / line is printed',0,100,1000494,1250174,TO_TIMESTAMP('2012-06-19 15:47:38','YYYY-MM-DD HH24:MI:SS'),1,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','The Printed checkbox indicates if this document or line will included when printing.','N',100,'N')
;

-- 19/06/2012 15h47min39s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250174 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min40s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:39','YYYY-MM-DD HH24:MI:SS'),'Y','Processed','The document has been processed',0,100,1000574,1250175,TO_TIMESTAMP('2012-06-19 15:47:39','YYYY-MM-DD HH24:MI:SS'),1,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','The Processed checkbox indicates that a document has been processed.','N',100,'N')
;

-- 19/06/2012 15h47min40s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250175 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:40','YYYY-MM-DD HH24:MI:SS'),'Y','Time InOut','Defines the InOut Time',0,100,1000909,1250176,TO_TIMESTAMP('2012-06-19 15:47:40','YYYY-MM-DD HH24:MI:SS'),5,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','Defines the InOut Time','N',100,'N')
;

-- 19/06/2012 15h47min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250176 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:42','YYYY-MM-DD HH24:MI:SS'),'Y','Barcode 1','First Barcode of the Nota Fiscal',0,100,1001033,1250177,TO_TIMESTAMP('2012-06-19 15:47:42','YYYY-MM-DD HH24:MI:SS'),255,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','First Barcode of the Nota Fiscal','N',100,'N')
;

-- 19/06/2012 15h47min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250177 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:43','YYYY-MM-DD HH24:MI:SS'),'Y','Barcode 2','Second Barcode of the Nota Fiscal',0,100,1001034,1250178,TO_TIMESTAMP('2012-06-19 15:47:43','YYYY-MM-DD HH24:MI:SS'),255,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','Second Barcode of the Nota Fiscal','N',100,'N')
;

-- 19/06/2012 15h47min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250178 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:44','YYYY-MM-DD HH24:MI:SS'),'Y','Fiscal Obs.','Fiscal Observation for the Fiscal Books',0,100,1001043,1250179,TO_TIMESTAMP('2012-06-19 15:47:44','YYYY-MM-DD HH24:MI:SS'),64,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','Fiscal Observation for the Fiscal Books','N',100,'N')
;

-- 19/06/2012 15h47min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250179 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:45','YYYY-MM-DD HH24:MI:SS'),'Y','CIF Total','CIF Total for all the document',0,100,1001045,1250180,TO_TIMESTAMP('2012-06-19 15:47:45','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','Cost, Insurance and Freight total for all the document','N',100,'N')
;

-- 19/06/2012 15h47min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250180 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:46','YYYY-MM-DD HH24:MI:SS'),'Y','Transaction Type','Defines the Transaction Type',0,100,1100176,1250181,TO_TIMESTAMP('2012-06-19 15:47:46','YYYY-MM-DD HH24:MI:SS'),3,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','Defines the Transaction Type','N',100,'N')
;

-- 19/06/2012 15h47min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250181 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:47','YYYY-MM-DD HH24:MI:SS'),'Y','DE',0,100,1120211,1250182,TO_TIMESTAMP('2012-06-19 15:47:47','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000028,'N','Y','N',100,'N')
;

-- 19/06/2012 15h47min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250182 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min50s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:49','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000475,1250183,TO_TIMESTAMP('2012-06-19 15:47:49','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000028,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 19/06/2012 15h47min50s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250183 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min51s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:50','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000474,1250184,TO_TIMESTAMP('2012-06-19 15:47:50','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000028,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 19/06/2012 15h47min51s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250184 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min52s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:51','YYYY-MM-DD HH24:MI:SS'),'Y','Target Document Type','Target document type for conversing documents',0,100,1000484,1250185,TO_TIMESTAMP('2012-06-19 15:47:51','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000028,'N','Y','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','N',100,'N')
;

-- 19/06/2012 15h47min52s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250185 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:52','YYYY-MM-DD HH24:MI:SS'),'Y','Is Own Document','Identifies this is an own document',0,100,1100019,1250186,TO_TIMESTAMP('2012-06-19 15:47:52','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000028,'N','Y','Identifies this is an own document','Y',100,'N')
;

-- 19/06/2012 15h47min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250186 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:53','YYYY-MM-DD HH24:MI:SS'),'Y','Document No','Document sequence number of the document',0,100,1000491,1250187,TO_TIMESTAMP('2012-06-19 15:47:53','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000028,'N','Y','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>". 
 
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','N',100,'N')
;

-- 19/06/2012 15h47min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250187 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min56s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:54','YYYY-MM-DD HH24:MI:SS'),'Y','Cancelled','The transaction was cancelled',0,100,1000495,1250188,TO_TIMESTAMP('2012-06-19 15:47:54','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',60,'Y','N',1000028,'N','Y','Y',100,'N')
;

-- 19/06/2012 15h47min56s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250188 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:56','YYYY-MM-DD HH24:MI:SS'),'Y','NF Model','Identifies the model of Nota Fiscal',0,100,1120112,1250189,TO_TIMESTAMP('2012-06-19 15:47:56','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',70,'N','N',1000028,'N','Y','N',100,'N')
;

-- 19/06/2012 15h47min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250189 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:57','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Status','Status of NFe',0,100,1100065,1250190,TO_TIMESTAMP('2012-06-19 15:47:57','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',80,'Y','N',1000028,'N','Y','Y',100,'@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''','N')
;

-- 19/06/2012 15h47min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250190 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h47min59s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:58','YYYY-MM-DD HH24:MI:SS'),'Y','Finalidade NFe','Define a Finalidade da NFe',0,100,1100181,1250191,TO_TIMESTAMP('2012-06-19 15:47:58','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',90,'N','N',1000028,'N','Y','1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste','N',100,'@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''','N')
;

-- 19/06/2012 15h47min59s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250191 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:47:59','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Referenciada',0,100,1120465,1250192,TO_TIMESTAMP('2012-06-19 15:47:59','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',100,'Y','N',1000028,'N','Y','N',100,'@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_FinNFe@=''2''','N')
;

-- 19/06/2012 15h48min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250192 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:00','YYYY-MM-DD HH24:MI:SS'),'Y','Document Date','Date of the Document',0,100,1000565,1250193,TO_TIMESTAMP('2012-06-19 15:48:00','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA',110,'N','N',1000028,'N','Y','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','N',100,'N')
;

-- 19/06/2012 15h48min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250193 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:01','YYYY-MM-DD HH24:MI:SS'),'Y','Date InOut','Defines the InOut Date',0,100,1000908,1250194,TO_TIMESTAMP('2012-06-19 15:48:01','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA',120,'Y','N',1000028,'N','Y','Defines the InOut Date','N',100,'N')
;

-- 19/06/2012 15h48min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250194 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min3s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:02','YYYY-MM-DD HH24:MI:SS'),'Y','Document Status','The current status of the document',0,100,1250002,1250195,TO_TIMESTAMP('2012-06-19 15:48:02','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',130,'N','N',1000028,'N','Y','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y',100,'N')
;

-- 19/06/2012 15h48min3s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250195 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:03','YYYY-MM-DD HH24:MI:SS'),'Y','Document Action','The targeted status of the document',0,100,1250003,1250196,TO_TIMESTAMP('2012-06-19 15:48:03','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',140,'Y','N',1000028,'N','Y','You find the current status in the Document Status field. The options are listed in a popup','N',100,'N')
;

-- 19/06/2012 15h48min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250196 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min5s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:04','YYYY-MM-DD HH24:MI:SS'),'Y','Data contingência',0,100,1120455,1250197,TO_TIMESTAMP('2012-06-19 15:48:04','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA',150,'N','N',1000028,'N','Y','N',100,1100002,'@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''','N')
;

-- 19/06/2012 15h48min5s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250197 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min7s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:05','YYYY-MM-DD HH24:MI:SS'),'Y','Motivo contingência',0,100,1120454,1250198,TO_TIMESTAMP('2012-06-19 15:48:05','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',160,'Y','N',1000028,'N','Y','N',100,1100002,'@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''','N')
;

-- 19/06/2012 15h48min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250198 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min8s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:07','YYYY-MM-DD HH24:MI:SS'),'Y','Motivo do Cancelamento','Motivo do Cancelamento (Entre 15 e 255 caracteres)',0,100,1100105,1250199,TO_TIMESTAMP('2012-06-19 15:48:07','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA',170,'N','N',1000028,'N','Y','Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.','N',100,1100002,'@lbr_NFeProt@!''''','N')
;

-- 19/06/2012 15h48min8s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250199 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:08','YYYY-MM-DD HH24:MI:SS'),'Y','NFe ID','Identification of NFe',0,100,1100064,1250200,TO_TIMESTAMP('2012-06-19 15:48:08','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',180,'N','N',1000028,'N','Y','Y',100,1100002,'@lbr_NFeID@!''''','N')
;

-- 19/06/2012 15h48min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250200 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:09','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Description','Description of NFe',0,100,1100080,1250201,TO_TIMESTAMP('2012-06-19 15:48:09','YYYY-MM-DD HH24:MI:SS'),512,'Y','N',0,'LBRA',190,'N','N',1000028,'N','Y','Y',100,1100002,'@lbr_NFeID@!''''','N')
;

-- 19/06/2012 15h48min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250201 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:10','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Lot',0,100,1100071,1250202,TO_TIMESTAMP('2012-06-19 15:48:10','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',200,'N','N',1000028,'N','Y','Y',100,1100002,'@lbr_NFeID@!''''','N')
;

-- 19/06/2012 15h48min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250202 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:11','YYYY-MM-DD HH24:MI:SS'),'Y','Digest Value',0,100,1100082,1250203,TO_TIMESTAMP('2012-06-19 15:48:11','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',210,'Y','N',1000028,'N','Y','Y',100,1100002,'@lbr_NFeProt@!''''','N')
;

-- 19/06/2012 15h48min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250203 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:12','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Protocol',0,100,1100081,1250204,TO_TIMESTAMP('2012-06-19 15:48:12','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',220,'N','N',1000028,'N','Y','Y',100,1100002,'@lbr_NFeProt@!''''','N')
;

-- 19/06/2012 15h48min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250204 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min14s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:13','YYYY-MM-DD HH24:MI:SS'),'Y','Transaction Date','Transaction Date',0,100,1100083,1250205,TO_TIMESTAMP('2012-06-19 15:48:13','YYYY-MM-DD HH24:MI:SS'),7,'Y','N',0,'LBRA',230,'Y','N',1000028,'N','Y','The Transaction Date indicates the date of the transaction.','Y',100,1100002,'@lbr_NFeProt@!''''','N')
;

-- 19/06/2012 15h48min14s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250205 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min15s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:14','YYYY-MM-DD HH24:MI:SS'),'Y','Invoice','Invoice Identifier',0,100,1000485,1250206,TO_TIMESTAMP('2012-06-19 15:48:14','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',240,'N','N',1000028,'N','Y','The Invoice Document.','N',100,125,'N')
;

-- 19/06/2012 15h48min15s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250206 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),'Y','Payment Term','The terms of Payment (timing, discount)',0,100,1000487,1250207,TO_TIMESTAMP('2012-06-19 15:48:15','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',250,'Y','N',1000028,'N','Y','Payment Terms identify the method and timing of payment.','Y',100,125,'N')
;

-- 19/06/2012 15h48min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250207 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:17','YYYY-MM-DD HH24:MI:SS'),'Y','Order','Order',0,100,1000486,1250208,TO_TIMESTAMP('2012-06-19 15:48:17','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',260,'N','N',1000028,'N','Y','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y',100,125,'N')
;

-- 19/06/2012 15h48min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250208 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min19s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:18','YYYY-MM-DD HH24:MI:SS'),'Y','Shipment/Receipt','Material Shipment Document',0,100,1000488,1250209,TO_TIMESTAMP('2012-06-19 15:48:18','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',270,'Y','N',1000028,'N','Y','The Material Shipment / Receipt ','Y',100,125,'N')
;

-- 19/06/2012 15h48min19s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250209 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min20s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:19','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1000492,1250210,TO_TIMESTAMP('2012-06-19 15:48:19','YYYY-MM-DD HH24:MI:SS'),1024,'Y','N',0,'LBRA',280,'N','N',1000028,'N','Y','A description is limited to 255 characters.','N',100,125,'N')
;

-- 19/06/2012 15h48min20s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250210 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min21s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:20','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Reference','Defines the CFOP Reference',0,100,1000577,1250211,TO_TIMESTAMP('2012-06-19 15:48:20','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',290,'N','N',1000028,'N','Y','Defines the CFOP Reference','Y',100,125,'N')
;

-- 19/06/2012 15h48min21s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250211 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:21','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Note','Defines the CFOP Note',0,100,1000712,1250212,TO_TIMESTAMP('2012-06-19 15:48:21','YYYY-MM-DD HH24:MI:SS'),44,'Y','N',0,'LBRA',300,'N','N',1000028,'N','Y','Defines the CFOP Note','Y',100,125,'N')
;

-- 19/06/2012 15h48min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250212 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:22','YYYY-MM-DD HH24:MI:SS'),'Y','Document Note','Additional information for a Document',0,100,1000578,1250213,TO_TIMESTAMP('2012-06-19 15:48:22','YYYY-MM-DD HH24:MI:SS'),44,'Y','N',0,'LBRA',310,'N','N',1000028,'N','Y','The Document Note is used for recording any additional information regarding this product.','N',100,125,'N')
;

-- 19/06/2012 15h48min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250213 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min25s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:24','YYYY-MM-DD HH24:MI:SS'),'Y','Bill Note','Bill Note',0,100,1001052,1250214,TO_TIMESTAMP('2012-06-19 15:48:24','YYYY-MM-DD HH24:MI:SS'),44,'Y','N',0,'LBRA',320,'N','N',1000028,'N','Y','Bill Note','N',100,1250000,'N')
;

-- 19/06/2012 15h48min25s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250214 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min26s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:25','YYYY-MM-DD HH24:MI:SS'),'Y','Business Partner ','Identifies a Business Partner',0,100,1000481,1250215,TO_TIMESTAMP('2012-06-19 15:48:25','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',330,'N','N',1000028,'N','Y','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','N',100,1250000,'N')
;

-- 19/06/2012 15h48min26s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250215 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:26','YYYY-MM-DD HH24:MI:SS'),'Y','Partner Location','Identifies the (ship to) address for this Business Partner',0,100,1000482,1250216,TO_TIMESTAMP('2012-06-19 15:48:26','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',340,'Y','N',1000028,'N','Y','The Partner address indicates the location of a Business Partner','N',100,1250000,'N')
;

-- 19/06/2012 15h48min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250216 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:27','YYYY-MM-DD HH24:MI:SS'),'Y','BP Name',0,100,1000500,1250217,TO_TIMESTAMP('2012-06-19 15:48:27','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',350,'N','N',1000028,'N','Y','N',100,1250000,'N')
;

-- 19/06/2012 15h48min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250217 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:28','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 1','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000508,1250218,TO_TIMESTAMP('2012-06-19 15:48:28','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',360,'N','N',1000028,'N','Y','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250218 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:29','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 2','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000509,1250219,TO_TIMESTAMP('2012-06-19 15:48:29','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',370,'Y','N',1000028,'N','Y','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250219 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min31s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:30','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 3','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000510,1250220,TO_TIMESTAMP('2012-06-19 15:48:30','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',380,'N','N',1000028,'N','Y','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min31s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250220 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:31','YYYY-MM-DD HH24:MI:SS'),'Y','BP Address 4','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000511,1250221,TO_TIMESTAMP('2012-06-19 15:48:31','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',390,'Y','N',1000028,'N','Y','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250221 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:32','YYYY-MM-DD HH24:MI:SS'),'Y','BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',0,100,1000512,1250222,TO_TIMESTAMP('2012-06-19 15:48:32','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',400,'N','N',1000028,'N','Y','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250222 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min34s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:33','YYYY-MM-DD HH24:MI:SS'),'Y','BP IE','BP IE - Copied from the BP into Brazilan Legal and Tax Books',0,100,1000515,1250223,TO_TIMESTAMP('2012-06-19 15:48:33','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',410,'Y','N',1000028,'N','Y','BP IE - Copied from the BP into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min34s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250223 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min36s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:34','YYYY-MM-DD HH24:MI:SS'),'Y','BP Suframa','Defines the BP Suframa',0,100,1100177,1250224,TO_TIMESTAMP('2012-06-19 15:48:34','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',420,'N','N',1000028,'N','Y','N',100,1250000,'N')
;

-- 19/06/2012 15h48min36s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250224 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:36','YYYY-MM-DD HH24:MI:SS'),'Y','BP City','BP City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000513,1250225,TO_TIMESTAMP('2012-06-19 15:48:36','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',430,'N','N',1000028,'N','Y','BP City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250225 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min39s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:37','YYYY-MM-DD HH24:MI:SS'),'Y','BP Postal','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000517,1250226,TO_TIMESTAMP('2012-06-19 15:48:37','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',440,'Y','N',1000028,'N','Y','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min39s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250226 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min40s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:39','YYYY-MM-DD HH24:MI:SS'),'Y','BP Region','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000518,1250227,TO_TIMESTAMP('2012-06-19 15:48:39','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',450,'N','N',1000028,'N','Y','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min40s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250227 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:40','YYYY-MM-DD HH24:MI:SS'),'Y','BP Country','BP Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000514,1250228,TO_TIMESTAMP('2012-06-19 15:48:40','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',460,'Y','N',1000028,'N','Y','BP Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250228 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:41','YYYY-MM-DD HH24:MI:SS'),'Y','BP Phone','BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000516,1250229,TO_TIMESTAMP('2012-06-19 15:48:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',470,'N','N',1000028,'N','Y','BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250000,'N')
;

-- 19/06/2012 15h48min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250229 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:43','YYYY-MM-DD HH24:MI:SS'),'Y','Shipment Note','Extra Shipment Information ',0,100,1001044,1250230,TO_TIMESTAMP('2012-06-19 15:48:43','YYYY-MM-DD HH24:MI:SS'),44,'Y','N',0,'LBRA',480,'N','N',1000028,'N','Y','Extra Shipment Information','N',100,1250001,'N')
;

-- 19/06/2012 15h48min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250230 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:44','YYYY-MM-DD HH24:MI:SS'),'Y','Delivery Location','The Delivery Location ID',0,100,1001049,1250231,TO_TIMESTAMP('2012-06-19 15:48:44','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',490,'Y','N',1000028,'N','Y','The Delivery Location ID','N',100,1250001,'N')
;

-- 19/06/2012 15h48min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250231 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:45','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 1','BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000519,1250232,TO_TIMESTAMP('2012-06-19 15:48:45','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',500,'N','N',1000028,'N','Y','BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250232 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min48s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:46','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 2','BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000520,1250233,TO_TIMESTAMP('2012-06-19 15:48:46','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',510,'Y','N',1000028,'N','Y','BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min48s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250233 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:48','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 3','BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000521,1250234,TO_TIMESTAMP('2012-06-19 15:48:48','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',520,'N','N',1000028,'N','Y','BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250234 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min50s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:49','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Address 4','BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000522,1250235,TO_TIMESTAMP('2012-06-19 15:48:49','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',530,'Y','N',1000028,'N','Y','BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min50s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250235 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min52s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:50','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery CNPJ','BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000523,1250236,TO_TIMESTAMP('2012-06-19 15:48:50','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',540,'N','N',1000028,'N','Y','BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min52s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250236 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:52','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery IE','BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000526,1250237,TO_TIMESTAMP('2012-06-19 15:48:52','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',550,'Y','N',1000028,'N','Y','BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250237 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:53','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery City','BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000524,1250238,TO_TIMESTAMP('2012-06-19 15:48:53','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',560,'N','N',1000028,'N','Y','BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min55s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250238 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min56s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:55','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Postal','BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000527,1250239,TO_TIMESTAMP('2012-06-19 15:48:55','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',570,'Y','N',1000028,'N','Y','BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min56s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250239 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:56','YYYY-MM-DD HH24:MI:SS'),'Y','BP DeliveryRegion','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000528,1250240,TO_TIMESTAMP('2012-06-19 15:48:56','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',580,'N','N',1000028,'N','Y','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250240 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:57','YYYY-MM-DD HH24:MI:SS'),'Y','BP Delivery Country','BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000525,1250241,TO_TIMESTAMP('2012-06-19 15:48:57','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',590,'Y','N',1000028,'N','Y','BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250001,'N')
;

-- 19/06/2012 15h48min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250241 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h48min59s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:58','YYYY-MM-DD HH24:MI:SS'),'Y','Freight Cost Rule','Method for charging Freight',0,100,1000567,1250242,TO_TIMESTAMP('2012-06-19 15:48:58','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',600,'N','N',1000028,'N','Y','The Freight Cost Rule indicates the method used when charging for freight.','N',100,1250001,'N')
;

-- 19/06/2012 15h48min59s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250242 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:48:59','YYYY-MM-DD HH24:MI:SS'),'Y','Freight Amount','Freight Amount ',0,100,1000566,1250243,TO_TIMESTAMP('2012-06-19 15:48:59','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',610,'N','N',1000028,'N','Y','The Freight Amount indicates the amount charged for Freight in the document currency.','N',100,1250001,'N')
;

-- 19/06/2012 15h49min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250243 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:00','YYYY-MM-DD HH24:MI:SS'),'Y','Insurance Amt','Defines the Insurance Amt',0,100,1000573,1250244,TO_TIMESTAMP('2012-06-19 15:49:00','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',620,'Y','N',1000028,'N','Y','Defines the Insurance Amt','N',100,1250001,'N')
;

-- 19/06/2012 15h49min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250244 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:01','YYYY-MM-DD HH24:MI:SS'),'Y','Packing Type','Defines the Packing Type',0,100,1000731,1250245,TO_TIMESTAMP('2012-06-19 15:49:01','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',630,'N','N',1000028,'N','Y','Defines the Packing Type','N',100,1250001,'N')
;

-- 19/06/2012 15h49min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250245 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min3s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:02','YYYY-MM-DD HH24:MI:SS'),'Y','No Packages','Number of packages shipped',0,100,1000570,1250246,TO_TIMESTAMP('2012-06-19 15:49:02','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',640,'Y','N',1000028,'N','Y','N',100,1250001,'N')
;

-- 19/06/2012 15h49min3s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250246 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:03','YYYY-MM-DD HH24:MI:SS'),'Y','Gross Weight','Defines the Gross Weight',0,100,1000568,1250247,TO_TIMESTAMP('2012-06-19 15:49:03','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',650,'N','N',1000028,'N','Y','Defines the Gross Weight','N',100,1250001,'N')
;

-- 19/06/2012 15h49min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250247 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min5s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:04','YYYY-MM-DD HH24:MI:SS'),'Y','Net Weight','Defines the Net Weight',0,100,1000569,1250248,TO_TIMESTAMP('2012-06-19 15:49:04','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',660,'Y','N',1000028,'N','Y','Defines the Net Weight','N',100,1250001,'N')
;

-- 19/06/2012 15h49min5s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250248 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min6s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:05','YYYY-MM-DD HH24:MI:SS'),'Y','Shipper','Method or manner of product delivery',0,100,1000489,1250249,TO_TIMESTAMP('2012-06-19 15:49:05','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',670,'N','N',1000028,'N','Y','The Shipper indicates the method of delivering product','N',100,1250002,'N')
;

-- 19/06/2012 15h49min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250249 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min8s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:07','YYYY-MM-DD HH24:MI:SS'),'Y','Ship Location','The Shipment Location ID',0,100,1001048,1250250,TO_TIMESTAMP('2012-06-19 15:49:07','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',680,'Y','N',1000028,'N','Y','The Shipment Location ID','N',100,1250002,'N')
;

-- 19/06/2012 15h49min8s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250250 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:08','YYYY-MM-DD HH24:MI:SS'),'Y','BPShipper Name','Defines the Shipper Name',0,100,1000705,1250251,TO_TIMESTAMP('2012-06-19 15:49:08','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',690,'N','N',1000028,'N','Y','Defines the Shipper Name','N',100,1250002,'N')
;

-- 19/06/2012 15h49min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250251 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:09','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper License Plate','Defines the BP Shipper License Plate',0,100,1000730,1250252,TO_TIMESTAMP('2012-06-19 15:49:09','YYYY-MM-DD HH24:MI:SS'),8,'Y','N',0,'LBRA',700,'Y','N',1000028,'N','Y','Defines the BP Shipper License Plate','N',100,1250002,'N')
;

-- 19/06/2012 15h49min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250252 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:10','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 1','BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000538,1250253,TO_TIMESTAMP('2012-06-19 15:49:10','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',710,'N','N',1000028,'N','Y','BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250253 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:11','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 2','BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000539,1250254,TO_TIMESTAMP('2012-06-19 15:49:11','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',720,'Y','N',1000028,'N','Y','BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250254 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:12','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 3','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000540,1250255,TO_TIMESTAMP('2012-06-19 15:49:12','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',730,'N','N',1000028,'N','Y','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250255 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min15s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:13','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Address 4','BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000541,1250256,TO_TIMESTAMP('2012-06-19 15:49:13','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',740,'Y','N',1000028,'N','Y','BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min15s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250256 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min16s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:15','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper CNPJ','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000542,1250257,TO_TIMESTAMP('2012-06-19 15:49:15','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',750,'N','N',1000028,'N','Y','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min16s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250257 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:16','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper IE','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000545,1250258,TO_TIMESTAMP('2012-06-19 15:49:16','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',760,'Y','N',1000028,'N','Y','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250258 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:17','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper City','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000543,1250259,TO_TIMESTAMP('2012-06-19 15:49:17','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',770,'N','N',1000028,'N','Y','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250259 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min19s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:18','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Postal','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000546,1250260,TO_TIMESTAMP('2012-06-19 15:49:18','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',780,'Y','N',1000028,'N','Y','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min19s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250260 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min21s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:19','YYYY-MM-DD HH24:MI:SS'),'Y','BP ShipperRegion','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000547,1250261,TO_TIMESTAMP('2012-06-19 15:49:19','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',790,'N','N',1000028,'N','Y','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min21s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250261 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min22s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:21','YYYY-MM-DD HH24:MI:SS'),'Y','BP Shipper Country','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1000544,1250262,TO_TIMESTAMP('2012-06-19 15:49:21','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',800,'Y','N',1000028,'N','Y','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books','N',100,1250002,'N')
;

-- 19/06/2012 15h49min22s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250262 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:22','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Name','The Name of the Organization',0,100,1001066,1250263,TO_TIMESTAMP('2012-06-19 15:49:22','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',810,'N','N',1000028,'N','Y','The Name of the Organization','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min23s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250263 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min25s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:23','YYYY-MM-DD HH24:MI:SS'),'Y','Org Address','Organization Location/Address',0,100,1001067,1250264,TO_TIMESTAMP('2012-06-19 15:49:23','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',820,'Y','N',1000028,'N','Y','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min25s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250264 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min26s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:25','YYYY-MM-DD HH24:MI:SS'),'Y','CNPJ','Used to identify Legal Entities in Brazil',0,100,1000563,1250265,TO_TIMESTAMP('2012-06-19 15:49:25','YYYY-MM-DD HH24:MI:SS'),18,'Y','N',0,'LBRA',830,'N','N',1000028,'N','Y','Used to identify Legal Entities in Brazil','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min26s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250265 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:26','YYYY-MM-DD HH24:MI:SS'),'Y','IE','Used to Identify the IE (State Tax ID)',0,100,1000564,1250266,TO_TIMESTAMP('2012-06-19 15:49:26','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',840,'Y','N',1000028,'N','Y','Used to Identify the IE (State Tax ID)','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250266 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:27','YYYY-MM-DD HH24:MI:SS'),'Y','Organization CCM','The Organization CCM',0,100,1001064,1250267,TO_TIMESTAMP('2012-06-19 15:49:27','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',850,'N','N',1000028,'N','Y','The Organization CCM','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250267 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:29','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 1','The issuer organization address 1',0,100,1001056,1250268,TO_TIMESTAMP('2012-06-19 15:49:29','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',860,'N','N',1000028,'N','Y','The issuer organization address 1','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250268 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min31s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:30','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 2','The issuer organization address 2',0,100,1001057,1250269,TO_TIMESTAMP('2012-06-19 15:49:30','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',870,'Y','N',1000028,'N','Y','The issuer organization address 2','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min31s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250269 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:31','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 3','The issuer organization address 3',0,100,1001058,1250270,TO_TIMESTAMP('2012-06-19 15:49:31','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',880,'N','N',1000028,'N','Y','The issuer organization address 3','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250270 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:32','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Address 4','The issuer organization address 4',0,100,1001059,1250271,TO_TIMESTAMP('2012-06-19 15:49:32','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',890,'Y','N',1000028,'N','Y','The issuer organization address 4','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250271 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min34s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:33','YYYY-MM-DD HH24:MI:SS'),'Y','Organization City','The City of the Organization',0,100,1001060,1250272,TO_TIMESTAMP('2012-06-19 15:49:33','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',900,'N','N',1000028,'N','Y','The City of the Organization','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min34s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250272 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min35s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:34','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Postal Code','The Postal Code of the Organization',0,100,1001061,1250273,TO_TIMESTAMP('2012-06-19 15:49:34','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',910,'Y','N',1000028,'N','Y','The Postal Code of the Organization','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min35s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250273 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min36s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:35','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Region','The Region of the Organization',0,100,1001062,1250274,TO_TIMESTAMP('2012-06-19 15:49:35','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',920,'N','N',1000028,'N','Y','The Region of the Organization','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min36s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250274 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:36','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Country','The Country of the Organization',0,100,1001063,1250275,TO_TIMESTAMP('2012-06-19 15:49:36','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',930,'Y','N',1000028,'N','Y','The Country of the Organizarion','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250275 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:37','YYYY-MM-DD HH24:MI:SS'),'Y','Organization Phone','The Organization Phone',0,100,1001065,1250276,TO_TIMESTAMP('2012-06-19 15:49:37','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',940,'N','N',1000028,'N','Y','The Organization Phone','Y',100,1250003,'N')
;

-- 19/06/2012 15h49min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250276 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min39s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:38','YYYY-MM-DD HH24:MI:SS'),'Y','Grand Total','Total amount of document',0,100,1000572,1250277,TO_TIMESTAMP('2012-06-19 15:49:38','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',950,'N','N',1000028,'N','Y','The Grand Total displays the total amount including Tax and Freight in document currency','N',100,103,'N')
;

-- 19/06/2012 15h49min39s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250277 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:39','YYYY-MM-DD HH24:MI:SS'),'Y','Total Lines','Total of all document lines',0,100,1000571,1250278,TO_TIMESTAMP('2012-06-19 15:49:39','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',960,'N','N',1000028,'N','Y','The Total amount displays the total of all lines in document currency','N',100,103,'N')
;

-- 19/06/2012 15h49min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250278 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:41','YYYY-MM-DD HH24:MI:SS'),'Y','Service Total Amount','Defines the Service Total Amount',0,100,1000704,1250279,TO_TIMESTAMP('2012-06-19 15:49:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',970,'Y','N',1000028,'N','Y','Defines the Service Total Amount','N',100,103,'N')
;

-- 19/06/2012 15h49min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250279 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min43s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:42','YYYY-MM-DD HH24:MI:SS'),'Y','Discount Amount','Calculated amount of discount',0,100,1120116,1250280,TO_TIMESTAMP('2012-06-19 15:49:42','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',980,'N','N',1000028,'N','Y','The Discount Amount indicates the discount amount for a document or line.','N',100,103,'N')
;

-- 19/06/2012 15h49min43s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250280 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:43','YYYY-MM-DD HH24:MI:SS'),'Y','SISCOMEX Total','SISCOMEX Total for all the document',0,100,1001046,1250281,TO_TIMESTAMP('2012-06-19 15:49:43','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',990,'Y','N',1000028,'N','Y','SISCOMEX Total for all the document','N',100,103,'N')
;

-- 19/06/2012 15h49min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250281 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h49min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:49:44','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000473,1250282,TO_TIMESTAMP('2012-06-19 15:49:44','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000028,'N','Y','Primary key table LBR_NotaFiscal','N',100,'N')
;

-- 19/06/2012 15h49min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250282 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min4s BRT

UPDATE AD_Tab SET IsReadOnly='Y', IsInsertRecord='N',Updated=TO_TIMESTAMP('2012-06-19 15:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000029
;

-- 19/06/2012 15h50min10s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:08','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000674,1250283,TO_TIMESTAMP('2012-06-19 15:50:08','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000029,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 19/06/2012 15h50min10s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250283 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min11s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:10','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000675,1250284,TO_TIMESTAMP('2012-06-19 15:50:10','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000029,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 19/06/2012 15h50min11s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250284 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min12s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:11','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000681,1250285,TO_TIMESTAMP('2012-06-19 15:50:11','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000029,'N','Y','Primary key table LBR_NotaFiscal','N',100,'N')
;

-- 19/06/2012 15h50min12s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250285 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min13s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:12','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000676,1250286,TO_TIMESTAMP('2012-06-19 15:50:12','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000029,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 19/06/2012 15h50min13s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250286 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min15s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:13','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Group','Defines the Tax Group',0,100,1000682,1250287,TO_TIMESTAMP('2012-06-19 15:50:13','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000029,'N','Y','Primary key table LBR_TaxGroup','N',100,'N')
;

-- 19/06/2012 15h50min15s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250287 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min16s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:15','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base Amount','Defines the Tax Base Amount',0,100,1000683,1250288,TO_TIMESTAMP('2012-06-19 15:50:15','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',60,'N','N',1000029,'N','Y','Defines the Tax Base Amount','N',100,'N')
;

-- 19/06/2012 15h50min16s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250288 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min17s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:16','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Amount','Defines the Tax Amount',0,100,1000684,1250289,TO_TIMESTAMP('2012-06-19 15:50:16','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'Y','N',1000029,'N','Y','Defines the Tax Amount','N',100,'N')
;

-- 19/06/2012 15h50min17s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250289 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min18s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:17','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Tax','Defines the Nota Fiscal Tax',0,100,1000673,1250290,TO_TIMESTAMP('2012-06-19 15:50:17','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000029,'N','Y','Primary key table LBR_NFTax','N',100,'N')
;

-- 19/06/2012 15h50min18s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250290 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:28','YYYY-MM-DD HH24:MI:SS'),'Y','Manufacturer','Manufacturer of the Product',0,100,1100103,1250291,TO_TIMESTAMP('2012-06-19 15:50:28','YYYY-MM-DD HH24:MI:SS'),60,'N','N',0,'LBRA',0,'Y','N',1000030,'N','Y','The manufacturer of the Product (used if different from the Business Partner / Vendor)','N',100,1100003,'N')
;

-- 19/06/2012 15h50min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250291 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:29','YYYY-MM-DD HH24:MI:SS'),'Y','Número da adição',0,100,1100101,1250292,TO_TIMESTAMP('2012-06-19 15:50:29','YYYY-MM-DD HH24:MI:SS'),3,'N','N',0,'LBRA',0,'N','N',1000030,'N','Y','N',100,'N')
;

-- 19/06/2012 15h50min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250292 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min31s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:30','YYYY-MM-DD HH24:MI:SS'),'Y','List price Value','Valuation with List Price',0,100,1000583,1250293,TO_TIMESTAMP('2012-06-19 15:50:30','YYYY-MM-DD HH24:MI:SS'),10,'N','N',0,'LBRA',0,'N','N',1000030,'N','Y','N',100,'N')
;

-- 19/06/2012 15h50min31s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250293 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:31','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total CIF','The total CIF for the line',0,100,1001050,1250294,TO_TIMESTAMP('2012-06-19 15:50:31','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA',0,'N','N',1000030,'N','Y','The total Cost, Insurance and Freight for the Line','N',100,'N')
;

-- 19/06/2012 15h50min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250294 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:32','YYYY-MM-DD HH24:MI:SS'),'Y','DI',0,100,1100099,1250295,TO_TIMESTAMP('2012-06-19 15:50:32','YYYY-MM-DD HH24:MI:SS'),10,'N','N',0,'LBRA',0,'N','N',1000030,'N','Y','N',100,1100003,'N')
;

-- 19/06/2012 15h50min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250295 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min35s BRT

INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:34','YYYY-MM-DD HH24:MI:SS'),'Y','Número. Seq. Item',0,100,1100102,1250297,TO_TIMESTAMP('2012-06-19 15:50:34','YYYY-MM-DD HH24:MI:SS'),3,'N','N',0,'LBRA',0,'Y','N',1000030,'N','Y','N',100,'N')
;

-- 19/06/2012 15h50min35s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250297 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min37s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:35','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000551,1250298,TO_TIMESTAMP('2012-06-19 15:50:35','YYYY-MM-DD HH24:MI:SS'),1,'N','N',0,'LBRA',0,'N','N',1000030,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 19/06/2012 15h50min37s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250298 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min38s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:37','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000550,1250299,TO_TIMESTAMP('2012-06-19 15:50:37','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000030,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 19/06/2012 15h50min38s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min39s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:38','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000549,1250300,TO_TIMESTAMP('2012-06-19 15:50:38','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000030,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 19/06/2012 15h50min39s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250300 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min40s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:39','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal','Primary key table LBR_NotaFiscal',0,100,1000557,1250301,TO_TIMESTAMP('2012-06-19 15:50:39','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000030,'N','Y','Primary key table LBR_NotaFiscal','Y',100,'N')
;

-- 19/06/2012 15h50min40s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250301 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min41s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:40','YYYY-MM-DD HH24:MI:SS'),'Y','Is Service','Defines if the lines is a Service',0,100,1000703,1250302,TO_TIMESTAMP('2012-06-19 15:50:40','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000030,'N','Y','Defines if the lines is a Service','N',100,'N')
;

-- 19/06/2012 15h50min41s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250302 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min42s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:41','YYYY-MM-DD HH24:MI:SS'),'Y','Invoice Line','Invoice Detail Line',0,100,1000556,1250303,TO_TIMESTAMP('2012-06-19 15:50:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000030,'N','Y','The Invoice Line uniquely identifies a single line of an Invoice.','N',100,125,'N')
;

-- 19/06/2012 15h50min42s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250303 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min44s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:42','YYYY-MM-DD HH24:MI:SS'),'Y','Line No','Unique line for this document',0,100,1000588,1250304,TO_TIMESTAMP('2012-06-19 15:50:42','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',60,'Y','N',1000030,'N','Y','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','N',100,125,'N')
;

-- 19/06/2012 15h50min44s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250304 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min45s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:44','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP Name','Defines the CFOP Name',0,100,1000590,1250305,TO_TIMESTAMP('2012-06-19 15:50:44','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'N','N',1000030,'N','Y','Defines the CFOP Name','Y',100,125,'N')
;

-- 19/06/2012 15h50min45s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250305 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min46s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:45','YYYY-MM-DD HH24:MI:SS'),'Y','CFOP','Primary key table LBR_CFOP',0,100,1000561,1250306,TO_TIMESTAMP('2012-06-19 15:50:45','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',80,'Y','N',1000030,'N','Y','Primary key table LBR_CFOP','N',100,125,'N')
;

-- 19/06/2012 15h50min46s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250306 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min47s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:46','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1000586,1250307,TO_TIMESTAMP('2012-06-19 15:50:46','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA',90,'N','N',1000030,'N','Y','A description is limited to 255 characters.','N',100,125,'N')
;

-- 19/06/2012 15h50min47s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250307 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min48s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:47','YYYY-MM-DD HH24:MI:SS'),'Y','Product','Product, Service, Item',0,100,1000558,1250308,TO_TIMESTAMP('2012-06-19 15:50:47','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',100,'N','N',1000030,'N','Y','Identifies an item which is either purchased or sold in this organization.','N',100,106,'N')
;

-- 19/06/2012 15h50min48s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250308 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min49s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:48','YYYY-MM-DD HH24:MI:SS'),'Y','Product Name','Name of the Product',0,100,1000579,1250309,TO_TIMESTAMP('2012-06-19 15:50:48','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA',110,'N','N',1000030,'N','Y','N',100,106,'N')
;

-- 19/06/2012 15h50min49s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250309 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min51s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:49','YYYY-MM-DD HH24:MI:SS'),'Y','Product Key','Key of the Product',0,100,1000580,1250310,TO_TIMESTAMP('2012-06-19 15:50:49','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',120,'N','N',1000030,'N','Y','N',100,106,'N')
;

-- 19/06/2012 15h50min51s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250310 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min52s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:51','YYYY-MM-DD HH24:MI:SS'),'Y','Partner Product Key','Product Key of the Business Partner',0,100,1000591,1250311,TO_TIMESTAMP('2012-06-19 15:50:51','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',130,'Y','N',1000030,'N','Y','The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','N',100,106,'N')
;

-- 19/06/2012 15h50min52s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250311 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min53s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:52','YYYY-MM-DD HH24:MI:SS'),'Y','UOM','Unit of Measure',0,100,1000559,1250312,TO_TIMESTAMP('2012-06-19 15:50:52','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',140,'N','N',1000030,'N','Y','The UOM defines a unique non monetary Unit of Measure','N',100,106,'N')
;

-- 19/06/2012 15h50min53s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250312 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min54s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:53','YYYY-MM-DD HH24:MI:SS'),'Y','UOM Name','Defines the UOM Name',0,100,1000585,1250313,TO_TIMESTAMP('2012-06-19 15:50:53','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',150,'Y','N',1000030,'N','Y','Defines the UOM Name','N',100,106,'N')
;

-- 19/06/2012 15h50min54s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250313 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min55s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:54','YYYY-MM-DD HH24:MI:SS'),'Y','NCM Name','Defines the NCM Name',0,100,1000589,1250314,TO_TIMESTAMP('2012-06-19 15:50:54','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',160,'N','N',1000030,'N','Y','Defines the NCM Name','Y',100,106,'N')
;

-- 19/06/2012 15h50min55s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250314 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min56s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:55','YYYY-MM-DD HH24:MI:SS'),'Y','NCM','Primary key table LBR_NCM',0,100,1000560,1250315,TO_TIMESTAMP('2012-06-19 15:50:55','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',170,'Y','N',1000030,'N','Y','Primary key table LBR_NCM','N',100,106,'N')
;

-- 19/06/2012 15h50min56s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250315 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min57s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:56','YYYY-MM-DD HH24:MI:SS'),'Y','Quantity','Quantity',0,100,1000584,1250316,TO_TIMESTAMP('2012-06-19 15:50:56','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',180,'N','N',1000030,'N','Y','The Quantity indicates the number of a specific product or item for this document.','N',100,103,'N')
;

-- 19/06/2012 15h50min57s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250316 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h50min58s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:57','YYYY-MM-DD HH24:MI:SS'),'Y','Price','Price',0,100,1000581,1250317,TO_TIMESTAMP('2012-06-19 15:50:57','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',190,'Y','N',1000030,'N','Y','The Price indicates the Price for a product or service.','N',100,103,'N')
;

-- 19/06/2012 15h50min58s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250317 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min0s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:50:58','YYYY-MM-DD HH24:MI:SS'),'Y','Discount %','Discount in percent',0,100,1000587,1250318,TO_TIMESTAMP('2012-06-19 15:50:58','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',200,'N','N',1000030,'N','N','The Discount indicates the discount applied or taken as a percentage.','N',100,103,'N')
;

-- 19/06/2012 15h51min0s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250318 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min1s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_FieldGroup_ID,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:00','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total','Total line amount incl. Tax',0,100,1000582,1250319,TO_TIMESTAMP('2012-06-19 15:51:00','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA',210,'Y','N',1000030,'N','Y','Total line amount','N',100,103,'N')
;

-- 19/06/2012 15h51min1s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250319 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min2s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,DisplayLogic,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:01','YYYY-MM-DD HH24:MI:SS'),'Y','Service Taxes','String with all Taxes Names and Taxes Rates',0,100,1000711,1250320,TO_TIMESTAMP('2012-06-19 15:51:01','YYYY-MM-DD HH24:MI:SS'),1000,'Y','N',0,'LBRA',220,'N','N',1000030,'N','Y','String with all Taxes Names and Taxes Rates','N',100,'@lbr_IsService@=''Y''','N')
;

-- 19/06/2012 15h51min2s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250320 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min3s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:02','YYYY-MM-DD HH24:MI:SS'),'Y','Line Total SISCOMEX','The total SISCOMEX for the Line',0,100,1001051,1250321,TO_TIMESTAMP('2012-06-19 15:51:02','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',230,'N','N',1000030,'N','Y','The total SISCOMEX for the Line','N',100,'N')
;

-- 19/06/2012 15h51min3s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250321 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min4s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:03','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status','Defines the Tax Status',0,100,1000701,1250322,TO_TIMESTAMP('2012-06-19 15:51:03','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA',240,'N','N',1000030,'N','Y','Defines the Tax Status','N',100,'N')
;

-- 19/06/2012 15h51min4s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250322 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min6s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:04','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (IPI)','Defines the Tax Status (IPI)',0,100,1120000,1250323,TO_TIMESTAMP('2012-06-19 15:51:04','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',250,'Y','N',1000030,'N','Y','Defines the Tax Status (IPI)','N',100,'N')
;

-- 19/06/2012 15h51min6s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250323 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min7s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:06','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (PIS)','Defines the Tax Status (PIS)',0,100,1120267,1250324,TO_TIMESTAMP('2012-06-19 15:51:06','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',260,'N','N',1000030,'N','Y','Defines the Tax Status (PIS)','N',100,'N')
;

-- 19/06/2012 15h51min7s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250324 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min8s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:07','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Status (COFINS)','Defines the Tax Status (COFINS)',0,100,1120268,1250325,TO_TIMESTAMP('2012-06-19 15:51:07','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA',270,'Y','N',1000030,'N','Y','Defines the Tax Status (COFINS)','N',100,'N')
;

-- 19/06/2012 15h51min8s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250325 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min9s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:08','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line','Primary key table LBR_NotaFiscalLine',0,100,1000548,1250326,TO_TIMESTAMP('2012-06-19 15:51:08','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000030,'N','Y','Primary key table LBR_NotaFiscalLine','N',100,'N')
;

-- 19/06/2012 15h51min9s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250326 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min23s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:22','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1000686,1250327,TO_TIMESTAMP('2012-06-19 15:51:22','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',10,'N','N',1000031,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100,'N')
;

-- 19/06/2012 15h51min23s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250327 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min24s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:23','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1000687,1250328,TO_TIMESTAMP('2012-06-19 15:51:23','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',20,'Y','N',1000031,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100,'N')
;

-- 19/06/2012 15h51min24s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250328 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min26s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:24','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line','Primary key table LBR_NotaFiscalLine',0,100,1000693,1250329,TO_TIMESTAMP('2012-06-19 15:51:24','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',30,'N','N',1000031,'N','Y','Primary key table LBR_NotaFiscalLine','N',100,'N')
;

-- 19/06/2012 15h51min26s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250329 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min27s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:26','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1000688,1250330,TO_TIMESTAMP('2012-06-19 15:51:26','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA',40,'Y','N',1000031,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100,'N')
;

-- 19/06/2012 15h51min27s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250330 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min28s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:27','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Group','Defines the Tax Group',0,100,1000694,1250331,TO_TIMESTAMP('2012-06-19 15:51:27','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',50,'N','N',1000031,'N','Y','Primary key table LBR_TaxGroup','N',100,'N')
;

-- 19/06/2012 15h51min28s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250331 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min29s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:28','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Rate','Indicates the Tax Rate',0,100,1000709,1250332,TO_TIMESTAMP('2012-06-19 15:51:28','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',60,'N','N',1000031,'N','Y','Indicates the Tax Rate','N',100,'N')
;

-- 19/06/2012 15h51min29s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250332 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min30s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:29','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base','Indicates the Tax Base',0,100,1000710,1250333,TO_TIMESTAMP('2012-06-19 15:51:29','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',70,'Y','N',1000031,'N','Y','Indicates the Tax Base','N',100,'N')
;

-- 19/06/2012 15h51min30s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250333 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min31s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:30','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Base Amount','Defines the Tax Base Amount',0,100,1000695,1250334,TO_TIMESTAMP('2012-06-19 15:51:30','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',80,'N','N',1000031,'N','Y','Defines the Tax Base Amount','N',100,'N')
;

-- 19/06/2012 15h51min31s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250334 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min32s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:31','YYYY-MM-DD HH24:MI:SS'),'Y','Tax Amount','Defines the Tax Amount',0,100,1000696,1250335,TO_TIMESTAMP('2012-06-19 15:51:31','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',90,'Y','N',1000031,'N','Y','Defines the Tax Amount','N',100,'N')
;

-- 19/06/2012 15h51min32s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250335 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min33s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:32','YYYY-MM-DD HH24:MI:SS'),'Y','Description','Optional short description of the record',0,100,1100178,1250336,TO_TIMESTAMP('2012-06-19 15:51:32','YYYY-MM-DD HH24:MI:SS'),40,'Y','N',0,'LBRA','N','N',1000031,'N','Y','A description is limited to 255 characters.','N',100,'N')
;

-- 19/06/2012 15h51min33s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250336 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h51min34s BRT

INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_TIMESTAMP('2012-06-19 15:51:33','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line Tax','Defines the Nota Fiscal Line Tax',0,100,1000685,1250337,TO_TIMESTAMP('2012-06-19 15:51:33','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1000031,'N','Y','Primary key table LBR_NFLineTax','N',100,'N')
;

-- 19/06/2012 15h51min34s BRT

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250337 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/06/2012 15h54min57s BRT

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250295
;

-- 19/06/2012 15h54min57s BRT

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250291
;

-- 19/06/2012 15h54min57s BRT

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250292
;

-- 19/06/2012 15h54min57s BRT

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250297
;

-- 19/06/2012 15h56min20s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:56:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250191
;

-- 19/06/2012 15h56min37s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_FinNFe@=''2'' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:56:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250192
;

-- 19/06/2012 15h56min45s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:56:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250197
;

-- 19/06/2012 15h56min47s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57'' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:56:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250198
;

-- 19/06/2012 15h56min51s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!'''' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:56:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250199
;

-- 19/06/2012 15h57min52s BRT

UPDATE AD_Column SET ReadOnlyLogic='@lbr_IsOwnDocument@=''Y'' | @lbr_NFeStatus@=''100''',Updated=TO_TIMESTAMP('2012-06-19 15:57:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100064
;

-- 19/06/2012 15h58min2s BRT

UPDATE AD_Field SET IsReadOnly='N', DisplayLogic=NULL,Updated=TO_TIMESTAMP('2012-06-19 15:58:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250200
;

-- 19/06/2012 15h58min17s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeID@!'''' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:58:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250202
;

-- 19/06/2012 15h58min21s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!'''' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:58:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250203
;

-- 19/06/2012 15h58min24s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!'''' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250204
;

-- 19/06/2012 15h58min26s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!'''' & @lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-19 15:58:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250205
;

ALTER TABLE LBR_NotaFiscal DROP COLUMN Bill_Location_ID;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceAddress1;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceAddress2;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceAddress3;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceAddress4;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceCity;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceCNPJ;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceCountry;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceIE;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoicePostal;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_BPInvoiceRegion;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_NCMReference;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_NFeNo;
ALTER TABLE LBR_NotaFiscal DROP COLUMN ProcReactivateNF;
ALTER TABLE LBR_NotaFiscal DROP COLUMN Processing2;
ALTER TABLE LBR_NotaFiscal DROP COLUMN Processing;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_ProcCancelNF;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_GenerateNFeXML;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_NFReference;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_NFType;

ALTER TABLE LBR_NotaFiscalLine DROP COLUMN LBR_LegalMessage_ID;

ALTER TABLE C_Invoice DROP COLUMN lbr_NFType;

ALTER TABLE LBR_CFOP DROP COLUMN lbr_IsRevenue;
ALTER TABLE LBR_CFOP DROP COLUMN lbr_IsService;

-- 20/06/2012 15h57min6s BRT

UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''55'' | @lbr_NFModel@=''57''',Updated=TO_TIMESTAMP('2012-06-20 15:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250200
;

-- 21/06/2012 9h0min36s BRT

UPDATE AD_Tab SET OrderByClause='DateDoc DESC, DocumentNo DESC',Updated=TO_TIMESTAMP('2012-06-21 09:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000020
;

-- 21/06/2012 9h0min57s BRT

UPDATE AD_Tab SET OrderByClause='COALESCE(lbr_DateInOut,DateDoc) DESC, DocumentNo DESC',Updated=TO_TIMESTAMP('2012-06-21 09:00:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000028
;

-- 21/06/2012 9h11min13s BRT

INSERT INTO AD_Val_Rule (AD_Org_ID,Updated,AD_Client_ID,IsActive,Name,Type,Code,UpdatedBy,CreatedBy,Created,EntityType,AD_Val_Rule_ID) VALUES (0,TO_TIMESTAMP('2012-06-21 09:11:11','YYYY-MM-DD HH24:MI:SS'),0,'Y','lbr_NF Shipper Location','S','C_BPartner_Location.C_BPartner_ID IN (SELECT s.C_BPartner_ID FROM M_Shipper s WHERE s.M_Shipper_ID = @M_Shipper_ID@)',100,100,TO_TIMESTAMP('2012-06-21 09:11:11','YYYY-MM-DD HH24:MI:SS'),'LBRA',1250000)
;

-- 21/06/2012 9h11min31s BRT

UPDATE AD_Column SET AD_Val_Rule_ID=1250000,Updated=TO_TIMESTAMP('2012-06-21 09:11:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001048
;

-- 21/06/2012 9h21min17s BRT

UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.shipperLocation',Updated=TO_TIMESTAMP('2012-06-21 09:21:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001048
;

-- 21/06/2012 14h28min14s BRT

UPDATE AD_Table SET IsHighVolume='N',Updated=TO_TIMESTAMP('2012-06-21 14:28:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000027
;

-- 21/06/2012 14h28min16s BRT

UPDATE AD_Table SET IsHighVolume='Y',Updated=TO_TIMESTAMP('2012-06-21 14:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000027
;

-- 21/06/2012 14h28min23s BRT

UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2012-06-21 14:28:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

-- 21/06/2012 14h33min0s BRT

UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@lbr_IsOwnDocument@=''Y''',Updated=TO_TIMESTAMP('2012-06-21 14:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

-- 21/06/2012 14h34min10s BRT

UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2012-06-21 14:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250186
;

-- 21/06/2012 14h34min28s BRT

UPDATE AD_Field SET DefaultValue='''Y''',Updated=TO_TIMESTAMP('2012-06-21 14:34:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250070
;

-- 21/06/2012 14h45min0s BRT

UPDATE AD_Column SET IsMandatory='Y', AD_Reference_Value_ID=1000026, IsParent='Y', AD_Reference_ID=18, IsUpdateable='N',Updated=TO_TIMESTAMP('2012-06-21 14:45:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000557
;

-- 21/06/2012 14h45min24s BRT

UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2012-06-21 14:45:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000681
;

-- 21/06/2012 16h33min38s BRT

UPDATE AD_Column SET ReadOnlyLogic='@DocStatus=''VO''',Updated=TO_TIMESTAMP('2012-06-21 16:33:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100105
;

UPDATE LBR_NotaFiscal SET Processed = 'Y' where Processed='N';
UPDATE LBR_NotaFiscal SET DocStatus='CO', DocAction='RE' WHERE Processed = 'Y';
UPDATE LBR_NotaFiscal SET DocStatus='VO', DocAction='--' WHERE IsCancelled = 'Y';

UPDATE AD_SysConfig SET Value='370-trunk/007-FR-Issue19.sql' WHERE AD_SysConfig_ID=1100006;