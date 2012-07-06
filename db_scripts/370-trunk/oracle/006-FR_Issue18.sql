/*
http://code.google.com/p/oseb/issues/detail?id=18
Mario Grigioni - 30/05/2012, mgrigioni
*/

UPDATE LBR_NFeLot SET DateTrx = DateFinish, lbr_NFestatus = lbr_NFeAnswerStatus
WHERE Processed = 'Y';

UPDATE LBR_NFeLot Set Processed = 'Y'
WHERE IsActive = 'N'; -- Marca como processado para não apagar inativos

UPDATE LBR_NotaFiscal SET LBR_NFeLot_ID=null
WHERE LBR_NFeLot_ID IN
(SELECT LBR_NFeLot_ID FROM LBR_NFeLot WHERE Processed = 'N');

DELETE FROM AD_Attachment WHERE AD_Table_ID=1100001 AND RECORD_ID IN (SELECT LBR_NFeLot_ID FROM LBR_NFeLot WHERE Processed='N' AND lbr_NFeRecID IS NULL);

DELETE FROM LBR_NFeLot WHERE Processed='N' AND lbr_NFeRecID IS NULL;

DELETE FROM AD_PInstance WHERE AD_Process_ID=1100001;
DELETE FROM AD_Process_Access WHERE AD_Process_ID=1100001;

DELETE FROM AD_PInstance WHERE AD_Process_ID=1100003;
DELETE FROM AD_Process_Access WHERE AD_Process_ID=1100003;

-- 29/05/2012 14h59min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100040
;

-- 29/05/2012 14h59min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100040
;

-- 29/05/2012 14h59min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100030
;

-- 29/05/2012 14h59min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100030
;

-- 29/05/2012 14h59min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100041
;

-- 29/05/2012 14h59min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100041
;

-- 29/05/2012 14h59min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100043
;

-- 29/05/2012 14h59min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100043
;

-- 29/05/2012 14h59min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100038
;

-- 29/05/2012 14h59min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100038
;

-- 29/05/2012 14h59min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100039
;

-- 29/05/2012 14h59min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100039
;

-- 29/05/2012 14h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100042
;

-- 29/05/2012 14h59min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100042
;

-- 29/05/2012 15h8min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100078
;

-- 29/05/2012 15h8min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100078
;

-- 29/05/2012 15h10min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100075
;

-- 29/05/2012 15h10min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100075
;

-- 29/05/2012 15h11min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100074
;

-- 29/05/2012 15h11min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100074
;

-- 29/05/2012 15h16min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100079
;

-- 29/05/2012 15h16min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100079
;

-- 29/05/2012 15h17min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100077
;

-- 29/05/2012 15h17min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100077
;

-- 29/05/2012 15h19min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100028
;

-- 29/05/2012 15h19min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1100028
;

-- 29/05/2012 15h19min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100059
;

-- 29/05/2012 15h19min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100059
;

-- 29/05/2012 15h20min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100063
;

-- 29/05/2012 15h20min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100063
;

-- 29/05/2012 15h20min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100076
;

-- 29/05/2012 15h20min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1100076
;

-- 29/05/2012 15h22min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Process_Trl WHERE AD_Process_ID=1100003
;

-- 29/05/2012 15h22min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Process WHERE AD_Process_ID=1100003
;

-- 29/05/2012 15h24min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Process_Trl WHERE AD_Process_ID=1100001
;

-- 29/05/2012 15h24min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Process WHERE AD_Process_ID=1100001
;

-- 29/05/2012 15h29min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Workflow (CreatedBy,IsActive,Description,AD_Workflow_ID,AD_Client_ID,Created,Updated,Name,UpdatedBy,AccessLevel,AD_Org_ID,WorkflowType,Author,Priority,Version,Cost,DurationUnit,WaitingTime,Limit,EntityType,PublishStatus,Duration,IsValid,ValidateWorkflow,WorkingTime,AD_Table_ID,Value,IsDefault,DocumentNo,IsBetaFunctionality) VALUES (100,'Y','(Standard Process NFeLot)',1250000,0,TO_DATE('2012-05-29 15:29:53','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2012-05-29 15:29:53','YYYY-MM-DD HH24:MI:SS'),'Process_LBR_NFeLot',100,'1',0,'P','Mario Grigioni',0,0,0,'D',0,0,'LBRA','R',1,'N','N',0,1100001,'Process_LBR_NFeLot','N','10000000','N')
;

-- 29/05/2012 15h29min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 29/05/2012 15h31min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,Action,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,Limit,DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_DATE('2012-05-29 15:31:37','YYYY-MM-DD HH24:MI:SS'),100,1250000,'Z','LBRA',TO_DATE('2012-05-29 15:31:37','YYYY-MM-DD HH24:MI:SS'),1250000,'Y','Y','(Start)',0,0,0,0,'X',0,'(Start)',0,'X',0,'CO',0,0,0,0,0)
;

-- 29/05/2012 15h31min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 29/05/2012 15h32min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Workflow SET AD_WF_Node_ID=1250000, IsValid='Y',Updated=TO_DATE('2012-05-29 15:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1250000
;

-- 29/05/2012 16h20min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,Action,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,Limit,DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_DATE('2012-05-29 16:20:01','YYYY-MM-DD HH24:MI:SS'),100,1250001,'D','LBRA',TO_DATE('2012-05-29 16:20:01','YYYY-MM-DD HH24:MI:SS'),1250000,'Y','Y','(DocAuto)',0,0,0,0,'X',0,'(DocAuto)',0,'X',0,'--',0,0,0,0,0)
;

-- 29/05/2012 16h20min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 29/05/2012 16h24min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,Action,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,Limit,DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_DATE('2012-05-29 16:24:12','YYYY-MM-DD HH24:MI:SS'),100,1250002,'D','LBRA',TO_DATE('2012-05-29 16:24:12','YYYY-MM-DD HH24:MI:SS'),1250000,'Y','Y','(DocComplete)',0,0,0,0,'X',0,'(DocComplete)',0,'X',0,'--',0,0,0,0,0)
;

-- 29/05/2012 16h24min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 29/05/2012 16h25min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node (CreatedBy,Updated,UpdatedBy,AD_WF_Node_ID,Action,EntityType,Created,AD_Workflow_ID,IsCentrallyMaintained,IsActive,Name,XPosition,AD_Client_ID,AD_Org_ID,WorkingTime,SplitElement,Duration,Value,WaitingTime,JoinElement,Limit,DocAction,YPosition,WaitTime,Priority,Cost,DynPriorityChange) VALUES (100,TO_DATE('2012-05-29 16:25:16','YYYY-MM-DD HH24:MI:SS'),100,1250003,'D','LBRA',TO_DATE('2012-05-29 16:25:16','YYYY-MM-DD HH24:MI:SS'),1250000,'Y','Y','(DocPrepare)',0,0,0,0,'X',0,'(DocPrepare)',0,'X',0,'PR',0,0,0,0,0)
;

-- 29/05/2012 16h25min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 29/05/2012 16h25min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,AD_WF_NodeNext_ID) VALUES (1250002,'LBRA',0,0,100,1250003,TO_DATE('2012-05-29 16:25:43','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_DATE('2012-05-29 16:25:43','YYYY-MM-DD HH24:MI:SS'),'N',10,1250000)
;

-- 29/05/2012 16h26min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (Created,AD_Workflow_ID,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_DATE('2012-05-29 16:26:53','YYYY-MM-DD HH24:MI:SS'),1250000,0,'Process NFeLot',0,'N','Y',0,1250000,TO_DATE('2012-05-29 16:26:53','YYYY-MM-DD HH24:MI:SS'),'N',0,'1',100,100,'LBRA','LBR_NFeLot Process','N','Y','N','N')
;

-- 29/05/2012 16h26min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 29/05/2012 16h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,AD_Process_ID,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The targeted status of the document',1100001,0,135,'You find the current status in the Document Status field. The options are listed in a popup',0,0,'Y','LBRA','Document Action',0,'N',1250000,287,'DocAction','N',1250000,TO_DATE('2012-05-29 16:27:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-05-29 16:27:16','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 29/05/2012 16h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2012 16h27min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='CO',Updated=TO_DATE('2012-05-29 16:27:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250000
;

-- 29/05/2012 16h27min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeLot ADD DocAction CHAR(2) DEFAULT 'CO' NOT NULL
;

-- 29/05/2012 16h29min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The current status of the document',1100001,0,131,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field',0,0,'Y','LBRA','Document Status',0,'N',1250001,289,'DocStatus','DR','N',TO_DATE('2012-05-29 16:29:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-05-29 16:29:38','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 29/05/2012 16h29min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2012 16h29min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeLot ADD DocStatus NVARCHAR2(2) DEFAULT 'DR' NOT NULL
;

ALTER TABLE LBR_NFeLot DROP COLUMN NAME;
ALTER TABLE LBR_NFeLot DROP COLUMN PROCESSING;
ALTER TABLE LBR_NFeLot DROP COLUMN LBR_LOTSENT;
ALTER TABLE LBR_NFeLot DROP COLUMN LBR_LOTRECEIVED;
ALTER TABLE LBR_NFeLot DROP COLUMN PROCESSING2;
ALTER TABLE LBR_NFeLot DROP COLUMN LBR_NFERESPID;
ALTER TABLE LBR_NFeLot DROP COLUMN DATEFINISH;
ALTER TABLE LBR_NFeLot DROP COLUMN LBR_NFEANSWERSTATUS;

-- 30/05/2012 10h7min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2012-05-30 10:07:22','YYYY-MM-DD HH24:MI:SS'),'Y','Document Action','The targeted status of the document',0,100,1250000,1250000,TO_DATE('2012-05-30 10:07:22','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1100001,'N','Y','You find the current status in the Document Status field. The options are listed in a popup','N',100)
;

-- 30/05/2012 10h7min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/05/2012 10h7min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2012-05-30 10:07:24','YYYY-MM-DD HH24:MI:SS'),'Y','Document Status','The current status of the document',0,100,1250001,1250001,TO_DATE('2012-05-30 10:07:24','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1100001,'N','Y','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','N',100)
;

-- 30/05/2012 10h7min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1100025
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1100031
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1100035
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250001
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250000
;

-- 30/05/2012 10h11min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1100034
;

-- 30/05/2012 10h11min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2012-05-30 10:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250000
;

-- 30/05/2012 10h11min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=20, AD_FieldGroup_ID=1100001,Updated=TO_DATE('2012-05-30 10:11:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100034
;

-- 30/05/2012 10h11min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100001,Updated=TO_DATE('2012-05-30 10:11:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100033
;

-- 30/05/2012 10h12min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_FieldGroup_Trl WHERE AD_FieldGroup_ID=1100000
;

-- 30/05/2012 10h12min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_FieldGroup WHERE AD_FieldGroup_ID=1100000
;

UPDATE LBR_NFeLot SET DocStatus='CO', DocAction='--' WHERE Processed = 'Y';

-- 30/05/2012 11h24min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1100023
;

-- 30/05/2012 11h24min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1100023
;

-- 30/05/2012 11h25min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1100022
;

-- 30/05/2012 11h25min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1100022
;

-- 30/05/2012 11h25min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1100025
;

-- 30/05/2012 11h25min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1100025
;

-- 30/05/2012 11h25min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1100024
;

-- 30/05/2012 11h25min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1100024
;

-- 30/05/2012 11h30min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1100034
;

-- 30/05/2012 11h30min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1100033
;

-- 30/05/2012 11h30min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100001,Updated=TO_DATE('2012-05-30 11:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100032
;

-- 30/05/2012 13h47min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,AD_WF_NodeNext_ID) VALUES (1250001,'U',0,0,100,1250000,TO_DATE('2012-05-30 13:47:51','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_DATE('2012-05-30 13:47:51','YYYY-MM-DD HH24:MI:SS'),'N',10,1250001)
;

-- 30/05/2012 13h48min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_WF_NodeNext (AD_WF_Next_ID,EntityType,AD_Org_ID,AD_Client_ID,UpdatedBy,AD_WF_Node_ID,Created,IsActive,CreatedBy,Updated,IsStdUserWorkflow,SeqNo,AD_WF_NodeNext_ID) VALUES (1250003,'U',0,0,100,1250000,TO_DATE('2012-05-30 13:48:03','YYYY-MM-DD HH24:MI:SS'),'Y',100,TO_DATE('2012-05-30 13:48:03','YYYY-MM-DD HH24:MI:SS'),'N',10,1250002)
;

-- 30/05/2012 13h48min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Node SET XPosition=5, YPosition=5,Updated=TO_DATE('2012-05-30 13:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1250000
;

-- 30/05/2012 13h48min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Node SET XPosition=5, YPosition=105,Updated=TO_DATE('2012-05-30 13:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1250001
;

-- 30/05/2012 13h48min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Node SET XPosition=230, YPosition=105,Updated=TO_DATE('2012-05-30 13:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1250002
;

-- 30/05/2012 13h48min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_Node SET XPosition=230, YPosition=5,Updated=TO_DATE('2012-05-30 13:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1250003
;

-- 30/05/2012 13h58min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2012-05-30 13:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100068
;

-- 30/05/2012 14h9min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2012-05-30 14:09:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250001
;

-- 30/05/2012 14h9min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2012-05-30 14:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100025
;

UPDATE AD_SysConfig SET Value='370-trunk/006-FR-Issue18.sql' WHERE AD_SysConfig_ID=1100006;

EXIT