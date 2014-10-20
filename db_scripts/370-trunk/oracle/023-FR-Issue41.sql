/*
http://code.google.com/p/oseb/issues/detail?id=41&can=1
Mario Grigioni - 20/10/2014, mgrigioni
*/

-- 17/10/2014 15h20min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Alíquota Nacional',100,100,TO_DATE('2014-10-17 15:20:26','YYYY-MM-DD HH24:MI:SS'),1250009,'lbr_aliqNac','Alíquota Nacional',0,TO_DATE('2014-10-17 15:20:26','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 17/10/2014 15h20min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250009 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/10/2014 15h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Alíquota Importado',100,100,TO_DATE('2014-10-17 15:20:55','YYYY-MM-DD HH24:MI:SS'),1250010,'lbr_aliqImp','Alíquota Importado',0,TO_DATE('2014-10-17 15:20:55','YYYY-MM-DD HH24:MI:SS'),0,'Y','U')
;

-- 17/10/2014 15h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250010 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/10/2014 15h21min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-10-17 15:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250009 AND AD_Language='pt_BR'
;

-- 17/10/2014 15h21min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-10-17 15:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250010 AND AD_Language='pt_BR'
;

-- 17/10/2014 15h21min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N',1000009,0,0,0,'Y','LBRA','Alíquota Nacional',0,'N',1250056,1250009,'lbr_aliqNac','N',TO_DATE('2014-10-17 15:21:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-17 15:21:50','YYYY-MM-DD HH24:MI:SS'),'N',22,'N',10,100,'Y','N','N','N','N','N','Y')
;

-- 17/10/2014 15h21min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250056 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/10/2014 15h21min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NCM ADD lbr_aliqNac NUMBER DEFAULT NULL 
;

-- 17/10/2014 15h22min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1250010
;

-- 17/10/2014 15h22min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1250010
;

-- 17/10/2014 15h22min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Alíquota Importado',100,100,TO_DATE('2014-10-17 15:22:30','YYYY-MM-DD HH24:MI:SS'),1250011,'lbr_aliqImp','Alíquota Importado',0,TO_DATE('2014-10-17 15:22:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 17/10/2014 15h22min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250011 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/10/2014 15h22min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-10-17 15:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250011 AND AD_Language='pt_BR'
;

-- 17/10/2014 15h22min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N',1000009,0,0,0,'Y','LBRA','Alíquota Importado',0,'N',1250057,1250011,'lbr_aliqImp','N',TO_DATE('2014-10-17 15:22:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-17 15:22:48','YYYY-MM-DD HH24:MI:SS'),'N',22,'N',10,100,'Y','N','N','N','N','N','Y')
;

-- 17/10/2014 15h22min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250057 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/10/2014 15h22min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NCM ADD lbr_aliqImp NUMBER DEFAULT NULL 
;

-- 17/10/2014 15h23min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-17 15:23:15','YYYY-MM-DD HH24:MI:SS'),'Y','Alíquota Importado',0,100,1250057,1250396,TO_DATE('2014-10-17 15:23:15','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000004,'N','Y','N',100)
;

-- 17/10/2014 15h23min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250396 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/10/2014 15h23min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-17 15:23:17','YYYY-MM-DD HH24:MI:SS'),'Y','Alíquota Nacional',0,100,1250056,1250397,TO_DATE('2014-10-17 15:23:17','YYYY-MM-DD HH24:MI:SS'),10,'Y','N',0,'LBRA','N','N',1000004,'N','Y','N',100)
;

-- 17/10/2014 15h23min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250397 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/10/2014 15h23min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250397
;

-- 17/10/2014 15h23min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250396
;

-- 17/10/2014 15h23min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2014-10-17 15:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250397
;

-- 17/10/2014 15h23min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=103,Updated=TO_DATE('2014-10-17 15:23:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250396
;

-- 17/10/2014 15h26min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (Created,Description,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Classname,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_DATE('2014-10-17 15:26:43','YYYY-MM-DD HH24:MI:SS'),'Processo para importação das Alíquotas IBPT',0,'Importar Tabela IBPT',0,'N','Y','org.adempierelbr.process.ProcImportTotTrib',0,1250007,TO_DATE('2014-10-17 15:26:43','YYYY-MM-DD HH24:MI:SS'),'N',0,'3',100,100,'LBRA','ProcImportTotTrib','N','Y','N','N')
;

-- 17/10/2014 15h26min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250007 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/10/2014 15h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Process_ID,Updated,AD_Process_Para_ID,AD_Client_ID,IsCentrallyMaintained,IsRange,ColumnName,IsActive,UpdatedBy,FieldLength,AD_Reference_ID,Name,CreatedBy,Created,IsMandatory,SeqNo,EntityType,AD_Org_ID,AD_Element_ID) VALUES (1250007,TO_DATE('2014-10-17 15:27:16','YYYY-MM-DD HH24:MI:SS'),1250002,0,'Y','N','FileName','Y',100,22,39,'FileName',100,TO_DATE('2014-10-17 15:27:16','YYYY-MM-DD HH24:MI:SS'),'Y',10,'LBRA',0,2295)
;

-- 17/10/2014 15h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/10/2014 15h28min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,CreatedBy,Updated,Name,IsActive,IsSummary,UpdatedBy,AD_Menu_ID,AD_Process_ID,IsSOTrx,Created,Action,IsReadOnly,AD_Org_ID,EntityType,IsCentrallyMaintained) VALUES (0,100,TO_DATE('2014-10-17 15:28:19','YYYY-MM-DD HH24:MI:SS'),'Importar Tabela IBPT','Y','N',100,1250002,1250007,'N',TO_DATE('2014-10-17 15:28:19','YYYY-MM-DD HH24:MI:SS'),'P','N',0,'U','Y')
;

-- 17/10/2014 15h28min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 17/10/2014 15h28min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1250002, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1250002)
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1250002
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 17/10/2014 15h28min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 17/10/2014 16h1min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Valor Total de Tributos',100,100,TO_DATE('2014-10-17 16:01:40','YYYY-MM-DD HH24:MI:SS'),1250012,'lbr_ValorTotTrib','Valor Total de Tributos',0,TO_DATE('2014-10-17 16:01:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 17/10/2014 16h1min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250012 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/10/2014 16h2min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N',1000028,0,0,0,'Y','LBRA','Valor Total de Tributos',0,'N',1250058,1250012,'lbr_ValorTotTrib','N',TO_DATE('2014-10-17 16:02:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-17 16:02:02','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 17/10/2014 16h2min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250058 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/10/2014 16h2min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD lbr_ValorTotTrib NUMBER DEFAULT NULL 
;

-- 17/10/2014 16h3min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy,HideInListView) VALUES (TO_DATE('2014-10-17 16:03:46','YYYY-MM-DD HH24:MI:SS'),'Y','Valor Total de Tributos',0,100,1250058,1250398,TO_DATE('2014-10-17 16:03:46','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA',231,'N','N',1000021,'N','Y','N',100,'N')
;

-- 17/10/2014 16h3min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250398 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h24min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4=Devolução de mercadoria',Updated=TO_DATE('2014-10-20 14:24:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h24min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h24min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4=Devolução de mercadoria' WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h24min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4=Devolução de mercadoria', AD_Element_ID=1100066 WHERE UPPER(ColumnName)='LBR_FINNFE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/10/2014 14h24min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4=Devolução de mercadoria' WHERE AD_Element_ID=1100066 AND IsCentrallyMaintained='Y'
;

-- 20/10/2014 14h24min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4=Devolução de mercadoria' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1100066) AND IsCentrallyMaintained='Y'
;

-- 20/10/2014 14h24min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria',Updated=TO_DATE('2014-10-20 14:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100066 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria',Updated=TO_DATE('2014-10-20 14:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria' WHERE AD_Element_ID=1100066
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria', AD_Element_ID=1100066 WHERE UPPER(ColumnName)='LBR_FINNFE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria' WHERE AD_Element_ID=1100066 AND IsCentrallyMaintained='Y'
;

-- 20/10/2014 14h25min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução de mercadoria' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1100066) AND IsCentrallyMaintained='Y'
;

-- 20/10/2014 14h25min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250309,1100012,'4','Devolução de mercadoria',TO_DATE('2014-10-20 14:25:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:25:31','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h25min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250309 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h28min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Via de Transporte Internacional','Via de transporte internacional informada na Declaração de Importação (DI)',100,100,TO_DATE('2014-10-20 14:28:28','YYYY-MM-DD HH24:MI:SS'),1250013,'lbr_ViaTransp','Via de Transporte Internacional',0,TO_DATE('2014-10-20 14:28:28','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 20/10/2014 14h28min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250013 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/10/2014 14h29min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Reference_ID,CreatedBy,Updated,IsActive,ValidationType,Name,AD_Client_ID,Created,AD_Org_ID,UpdatedBy,EntityType,IsOrderByValue) VALUES (1250002,100,TO_DATE('2014-10-20 14:29:10','YYYY-MM-DD HH24:MI:SS'),'Y','L','tpViaTransp',0,TO_DATE('2014-10-20 14:29:10','YYYY-MM-DD HH24:MI:SS'),0,100,'LBRA','N')
;

-- 20/10/2014 14h29min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 20/10/2014 14h29min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250310,1250002,'01','Marítima',TO_DATE('2014-10-20 14:29:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:29:27','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h29min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250310 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h29min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250311,1250002,'02','Fluvial',TO_DATE('2014-10-20 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h29min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250311 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h29min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250312,1250002,'03','Lacustre',TO_DATE('2014-10-20 14:29:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:29:58','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h29min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250312 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h30min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250313,1250002,'04','Aérea',TO_DATE('2014-10-20 14:30:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:30:09','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h30min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250313 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h30min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250314,1250002,'05','Postal',TO_DATE('2014-10-20 14:30:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:30:21','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h30min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250314 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h30min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250315,1250002,'06','Ferroviária',TO_DATE('2014-10-20 14:30:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:30:35','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h30min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250315 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h30min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250316,1250002,'07','Rodoviária',TO_DATE('2014-10-20 14:30:54','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:30:54','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h30min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250316 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h31min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250317,1250002,'08','Conduto / Rede Transmissão',TO_DATE('2014-10-20 14:31:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:31:14','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h31min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250317 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h31min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250318,1250002,'09','Meios Próprios',TO_DATE('2014-10-20 14:31:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:31:28','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h31min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250318 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h31min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250319,1250002,'10','Entrada / Saída ficta',TO_DATE('2014-10-20 14:31:41','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:31:41','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h31min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250319 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h32min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Via de transporte internacional informada na Declaração de Importação (DI)',1100002,0,1250002,0,0,'Y','LBRA','Via de Transporte Internacional',0,'N',1250059,1250013,'lbr_ViaTransp','N',TO_DATE('2014-10-20 14:32:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:32:53','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h32min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250059 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 14h33min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-10-20 14:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250059
;

-- 20/10/2014 14h33min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD lbr_ViaTransp NVARCHAR2(2) DEFAULT NULL 
;

-- 20/10/2014 14h33min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-10-20 14:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250059
;

-- 20/10/2014 14h34min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('AFRMM','Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante',100,100,TO_DATE('2014-10-20 14:34:35','YYYY-MM-DD HH24:MI:SS'),1250014,'lbr_AFRMM','AFRMM',0,TO_DATE('2014-10-20 14:34:35','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 20/10/2014 14h34min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250014 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/10/2014 14h35min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante',1100002,0,0,0,'Y','LBRA','AFRMM',0,'N',1250060,1250014,'lbr_AFRMM','N',TO_DATE('2014-10-20 14:35:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:35:15','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h35min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250060 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 14h35min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD lbr_AFRMM NUMBER DEFAULT NULL 
;

-- 20/10/2014 14h35min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-10-20 14:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250060
;

-- 20/10/2014 14h36min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Tipo de Intermedio','Forma de importação quanto a intermediação',100,100,TO_DATE('2014-10-20 14:36:08','YYYY-MM-DD HH24:MI:SS'),1250015,'lbr_TpIntermedio','Tipo de Intermedio',0,TO_DATE('2014-10-20 14:36:08','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 20/10/2014 14h36min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250015 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/10/2014 14h38min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Reference_ID,CreatedBy,Updated,IsActive,ValidationType,Name,AD_Client_ID,Created,AD_Org_ID,UpdatedBy,EntityType,IsOrderByValue) VALUES (1250003,100,TO_DATE('2014-10-20 14:38:48','YYYY-MM-DD HH24:MI:SS'),'Y','L','tpIntermedio',0,TO_DATE('2014-10-20 14:38:48','YYYY-MM-DD HH24:MI:SS'),0,100,'LBRA','N')
;

-- 20/10/2014 14h38min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 20/10/2014 14h39min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250320,1250003,'1','Importação por conta própria',TO_DATE('2014-10-20 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:39:09','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h39min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250320 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h39min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250321,1250003,'2','Importação por conta e ordem',TO_DATE('2014-10-20 14:39:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:39:23','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h39min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250321 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h39min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250322,1250003,'3','Importação por encomenda',TO_DATE('2014-10-20 14:39:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:39:36','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 20/10/2014 14h39min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250322 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/10/2014 14h39min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Forma de importação quanto a intermediação',1100002,0,1250003,0,0,'Y','LBRA','Tipo de Intermedio',0,'N',1250061,1250015,'lbr_TpIntermedio','N',TO_DATE('2014-10-20 14:39:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:39:51','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h39min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250061 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 14h39min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD lbr_TpIntermedio CHAR(1) DEFAULT NULL 
;

-- 20/10/2014 14h39min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-10-20 14:39:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250061
;

-- 20/10/2014 14h41min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,VFormat,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',1100002,0,'BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',0,0,'Y','LBRA','BP CNPJ',0,'N',1250062,1000187,'lbr_BPCNPJ','N',TO_DATE('2014-10-20 14:41:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:41:27','YYYY-MM-DD HH24:MI:SS'),'00.000.000/0000-00','N',10,'N',18,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h41min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250062 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 14h41min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD lbr_BPCNPJ NVARCHAR2(18) DEFAULT NULL 
;

-- 20/10/2014 14h41min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-10-20 14:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250062
;

-- 20/10/2014 14h44min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',1100002,0,'BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',0,0,'Y','LBRA','BP Region',0,'N',1250063,1000185,'lbr_BPRegion','N',TO_DATE('2014-10-20 14:44:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:44:29','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h45min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',1100002,0,'BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,0,'Y','LBRA','BP DeliveryRegion',0,'N',1250064,1000211,'lbr_BPDeliveryRegion','N',TO_DATE('2014-10-20 14:45:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 14:45:15','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 14h45min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250064 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 14h45min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD lbr_BPDeliveryRegion NVARCHAR2(2) DEFAULT NULL 
;

-- 20/10/2014 14h45min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-10-20 14:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250064
;

-- 20/10/2014 14h45min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 14:45:51','YYYY-MM-DD HH24:MI:SS'),'Y','AFRMM','Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante',0,100,1250060,1250399,TO_DATE('2014-10-20 14:45:51','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',3000010,'N','Y','N',100)
;

-- 20/10/2014 14h45min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250399 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h45min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 14:45:53','YYYY-MM-DD HH24:MI:SS'),'Y','BP CNPJ','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',0,100,1250062,1250400,TO_DATE('2014-10-20 14:45:53','YYYY-MM-DD HH24:MI:SS'),18,'Y','N',0,'LBRA','N','N',3000010,'N','Y','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','N',100)
;

-- 20/10/2014 14h45min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250400 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h45min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 14:45:54','YYYY-MM-DD HH24:MI:SS'),'Y','BP DeliveryRegion','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',0,100,1250064,1250401,TO_DATE('2014-10-20 14:45:54','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',3000010,'N','Y','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books','N',100)
;

-- 20/10/2014 14h45min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250401 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h45min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 14:45:55','YYYY-MM-DD HH24:MI:SS'),'Y','Tipo de Intermedio','Forma de importação quanto a intermediação',0,100,1250061,1250402,TO_DATE('2014-10-20 14:45:55','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',3000010,'N','Y','N',100)
;

-- 20/10/2014 14h45min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250402 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h45min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 14:45:56','YYYY-MM-DD HH24:MI:SS'),'Y','Via de Transporte Internacional','Via de transporte internacional informada na Declaração de Importação (DI)',0,100,1250059,1250403,TO_DATE('2014-10-20 14:45:56','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',3000010,'N','Y','N',100)
;

-- 20/10/2014 14h45min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250403 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 14h47min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1250403
;

-- 20/10/2014 14h47min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1250399
;

-- 20/10/2014 14h47min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1250402
;

-- 20/10/2014 14h47min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1250400
;

-- 20/10/2014 14h47min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1250401
;

-- 20/10/2014 14h48min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2014-10-20 14:48:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250403
;

-- 20/10/2014 14h48min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_ViaTransp@=''01''',Updated=TO_DATE('2014-10-20 14:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250399
;

-- 20/10/2014 14h49min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_TpIntermedio@!1',Updated=TO_DATE('2014-10-20 14:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250400
;

-- 20/10/2014 14h49min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y', DisplayLogic='@lbr_TpIntermedio@!1',Updated=TO_DATE('2014-10-20 14:49:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250401
;

-- 20/10/2014 14h49min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-20 14:49:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250399
;

-- 20/10/2014 14h49min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='1',Updated=TO_DATE('2014-10-20 14:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250061
;

-- 20/10/2014 14h51min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='1 - Importação por conta própria',Updated=TO_DATE('2014-10-20 14:51:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250320
;

-- 20/10/2014 14h51min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250320
;

-- 20/10/2014 14h51min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='2 - Importação por conta e ordem',Updated=TO_DATE('2014-10-20 14:51:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250321
;

-- 20/10/2014 14h51min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250321
;

-- 20/10/2014 14h51min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='3 - Importação por encomenda',Updated=TO_DATE('2014-10-20 14:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250322
;

-- 20/10/2014 14h51min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250322
;

-- 20/10/2014 14h51min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='01 - Marítima',Updated=TO_DATE('2014-10-20 14:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250310
;

-- 20/10/2014 14h51min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250310
;

-- 20/10/2014 14h51min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='02 - Fluvial',Updated=TO_DATE('2014-10-20 14:51:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250311
;

-- 20/10/2014 14h51min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250311
;

-- 20/10/2014 14h51min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='03 - Lacustre',Updated=TO_DATE('2014-10-20 14:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250312
;

-- 20/10/2014 14h51min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250312
;

-- 20/10/2014 14h54min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='04 - Aérea',Updated=TO_DATE('2014-10-20 14:54:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250313
;

-- 20/10/2014 14h54min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250313
;

-- 20/10/2014 14h54min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='05 - Postal',Updated=TO_DATE('2014-10-20 14:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250314
;

-- 20/10/2014 14h54min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250314
;

-- 20/10/2014 14h54min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='06 - Ferroviária',Updated=TO_DATE('2014-10-20 14:54:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250315
;

-- 20/10/2014 14h54min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250315
;

-- 20/10/2014 14h54min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='07 - Rodoviária',Updated=TO_DATE('2014-10-20 14:54:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250316
;

-- 20/10/2014 14h54min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250316
;

-- 20/10/2014 14h54min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='08 - Conduto / Rede Transmissão',Updated=TO_DATE('2014-10-20 14:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250317
;

-- 20/10/2014 14h54min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250317
;

-- 20/10/2014 14h54min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='09 - Meios Próprios',Updated=TO_DATE('2014-10-20 14:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250318
;

-- 20/10/2014 14h54min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250318
;

-- 20/10/2014 14h54min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='10 - Entrada / Saída ficta',Updated=TO_DATE('2014-10-20 14:54:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250319
;

-- 20/10/2014 14h54min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250319
;

-- 20/10/2014 14h55min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-10-20 14:55:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250320 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h55min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='1 - Importação por conta própria',Updated=TO_DATE('2014-10-20 14:55:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250320 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h55min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='2 - Importação por conta e ordem',Updated=TO_DATE('2014-10-20 14:55:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250321 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='3 - Importação por encomenda',Updated=TO_DATE('2014-10-20 14:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250322 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='01 - Marítima',Updated=TO_DATE('2014-10-20 14:56:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250310 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='02 - Fluvial',Updated=TO_DATE('2014-10-20 14:56:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250311 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='03 - Lacustre',Updated=TO_DATE('2014-10-20 14:56:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250312 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='04 - Aérea',Updated=TO_DATE('2014-10-20 14:56:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250313 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='05 - Postal',Updated=TO_DATE('2014-10-20 14:56:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250314 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='06 - Ferroviária',Updated=TO_DATE('2014-10-20 14:56:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250315 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='07 - Rodoviária',Updated=TO_DATE('2014-10-20 14:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250316 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h56min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='08 - Conduto / Rede Transmissão',Updated=TO_DATE('2014-10-20 14:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250317 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h57min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='09 - Meios Próprios',Updated=TO_DATE('2014-10-20 14:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250318 AND AD_Language='pt_BR'
;

-- 20/10/2014 14h57min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='10 - Entrada / Saída ficta',Updated=TO_DATE('2014-10-20 14:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250319 AND AD_Language='pt_BR'
;

-- 20/10/2014 15h3min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Identifies the Drawback No',1000028,0,0,0,'Y','LBRA','Drawback No',0,'N',1250065,1120018,'lbr_Drawback','N',TO_DATE('2014-10-20 15:03:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2014-10-20 15:03:47','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',20,100,'Y','N','N','N','N','N','Y')
;

-- 20/10/2014 15h3min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250065 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/10/2014 15h3min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD lbr_Drawback NVARCHAR2(20) DEFAULT NULL 
;

-- 20/10/2014 15h4min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2014-10-20 15:04:17','YYYY-MM-DD HH24:MI:SS'),'Y','Drawback No','Identifies the Drawback No',0,100,1250065,1250405,TO_DATE('2014-10-20 15:04:17','YYYY-MM-DD HH24:MI:SS'),20,'Y','N',0,'LBRA','N','N',1000021,'N','Y','N',100)
;

-- 20/10/2014 15h4min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250405 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/10/2014 15h6min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_FieldGroup (Created,AD_Client_ID,AD_FieldGroup_ID,Updated,EntityType,CreatedBy,AD_Org_ID,IsActive,Name,UpdatedBy,IsCollapsedByDefault) VALUES (TO_DATE('2014-10-20 15:06:08','YYYY-MM-DD HH24:MI:SS'),0,1250004,TO_DATE('2014-10-20 15:06:08','YYYY-MM-DD HH24:MI:SS'),'LBRA',100,0,'Y','Exportação',100,'N')
;

-- 20/10/2014 15h6min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 20/10/2014 15h6min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1250004,Updated=TO_DATE('2014-10-20 15:06:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250405
;

-- 20/10/2014 15h7min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_DATE('2014-10-20 15:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1250004
;

UPDATE AD_SysConfig SET Value='370-trunk/023-FR-Issue41.sql' WHERE AD_SysConfig_ID=1100006;

EXIT
