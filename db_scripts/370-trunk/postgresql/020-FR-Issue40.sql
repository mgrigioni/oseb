/*
http://code.google.com/p/oseb/issues/detail?id=40&can=1
Mario Grigioni - 10/05/2013, mgrigioni
*/

-- 02/05/2013 14h12min47s BRT
-- Issue 40 
INSERT INTO AD_Table (Name,AccessLevel,AD_Org_ID,IsActive,LoadSeq,AD_Client_ID,AD_Table_ID,IsSecurityEnabled,CreatedBy,Updated,UpdatedBy,EntityType,IsDeleteable,TableName,Created,IsView,IsChangeLog,ReplicationType,IsHighVolume,IsPersonalLock,ImportTable,CopyColumnsFromTable,IsCentrallyMaintained) VALUES ('Import Content Sheet','3',0,'Y',0,0,1250001,'N',100,TO_TIMESTAMP('2013-05-02 14:12:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_ProductFCI',TO_TIMESTAMP('2013-05-02 14:12:44','YYYY-MM-DD HH24:MI:SS'),'N','N','L','N','N','N','N','Y')
;

-- 02/05/2013 14h12min47s BRT
-- Issue 40 
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 02/05/2013 14h12min49s BRT
-- Issue 40 
INSERT INTO AD_Sequence (Updated,UpdatedBy,Name,IsActive,CurrentNextSys,Description,AD_Client_ID,StartNewYear,IsTableID,StartNo,AD_Org_ID,IsAudited,IncrementNo,Created,CreatedBy,AD_Sequence_ID,IsAutoSequence,CurrentNext) VALUES (TO_TIMESTAMP('2013-05-02 14:12:47','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProductFCI','Y',50000,'Table LBR_ProductFCI',0,'N','Y',1000000,0,'N',1,TO_TIMESTAMP('2013-05-02 14:12:47','YYYY-MM-DD HH24:MI:SS'),100,1250000,'Y',1000000)
;

-- 02/05/2013 14h13min15s BRT
-- Issue 40 
UPDATE AD_Table_Trl SET Name='Ficha de Conteúdo de Importação',IsTranslated='Y',Updated=TO_TIMESTAMP('2013-05-02 14:13:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1250001 AND AD_Language='pt_BR'
;

-- 02/05/2013 14h14min45s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Import Content Sheet','Primary key table LBR_ProductFCI',100,100,TO_TIMESTAMP('2013-05-02 14:14:44','YYYY-MM-DD HH24:MI:SS'),1250003,'LBR_ProductFCI_ID','Import Content Sheet',0,TO_TIMESTAMP('2013-05-02 14:14:44','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 02/05/2013 14h14min45s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/05/2013 14h15min20s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Ficha de Conteúdo de Importação',PrintName='Ficha de Conteúdo de Importação',Description='Chave primária tabela LBR_ProductFCI',Updated=TO_TIMESTAMP('2013-05-02 14:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250003 AND AD_Language='pt_BR'
;

-- 02/05/2013 14h15min43s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Primary key table LBR_ProductFCI',1250001,0,0,0,'Y','LBRA','Import Content Sheet',0,'N',1250027,1250003,'LBR_ProductFCI_ID','N',TO_TIMESTAMP('2013-05-02 14:15:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:15:41','YYYY-MM-DD HH24:MI:SS'),'N',13,'N',22,100,'N','Y','N','N','N','N','Y')
;

-- 02/05/2013 14h15min43s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250027 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h15min45s BRT
-- Issue 40 
CREATE TABLE LBR_ProductFCI (LBR_ProductFCI_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_ProductFCI_Key PRIMARY KEY (LBR_ProductFCI_ID))
;

-- 02/05/2013 14h16min25s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Client/Tenant for this installation.',1250001,0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,0,'Y','LBRA','Client',0,'N',1250028,102,'AD_Client_ID','@#AD_Client_ID@','N',TO_TIMESTAMP('2013-05-02 14:16:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:16:23','YYYY-MM-DD HH24:MI:SS'),116,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h16min25s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250028 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h16min26s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h16min53s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Organizational entity within client',1250001,0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,0,'Y','LBRA','Organization',0,'N',1250029,113,'AD_Org_ID','@#AD_Org_ID@','N',TO_TIMESTAMP('2013-05-02 14:16:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:16:52','YYYY-MM-DD HH24:MI:SS'),104,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h16min53s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250029 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h16min54s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h17min32s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The record is active in the system',1250001,0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,0,'Y','LBRA','Active',0,'N',1250030,348,'IsActive','Y','N',TO_TIMESTAMP('2013-05-02 14:17:30','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:17:30','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 02/05/2013 14h17min32s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250030 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h17min33s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 02/05/2013 14h17min57s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was created',1250001,0,'The Created field indicates the date that this record was created.',0,0,'Y','LBRA','Created',0,'N',1250031,245,'Created','N',TO_TIMESTAMP('2013-05-02 14:17:55','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:17:55','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h17min57s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250031 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h17min58s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 02/05/2013 14h18min21s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who created this records',1250001,0,110,'The Created By field indicates the user who created this record.',0,0,'Y','LBRA','Created By',0,'N',1250032,246,'CreatedBy','N',TO_TIMESTAMP('2013-05-02 14:18:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:18:20','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h18min21s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250032 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h18min22s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h18min43s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was updated',1250001,0,'The Updated field indicates the date that this record was updated.',0,0,'Y','LBRA','Updated',0,'N',1250033,607,'Updated','N',TO_TIMESTAMP('2013-05-02 14:18:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:18:41','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h18min43s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250033 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h18min43s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 02/05/2013 14h19min7s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who updated this records',1250001,0,110,'The Updated By field indicates the user who updated this record.',0,0,'Y','LBRA','Updated By',0,'N',1250034,608,'UpdatedBy','N',TO_TIMESTAMP('2013-05-02 14:19:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:19:06','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h19min7s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250034 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h19min8s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h19min44s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Product, Service, Item',1250001,0,'Identifies an item which is either purchased or sold in this organization.',0,0,'Y','LBRA','Product',0,'N',1250035,454,'M_Product_ID','N',TO_TIMESTAMP('2013-05-02 14:19:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:19:41','YYYY-MM-DD HH24:MI:SS'),'Y',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h19min44s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250035 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h19min45s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN M_Product_ID NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h20min12s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Search key for the record in the format required - must be unique',1250001,0,'A search key allows you a fast method of finding a particular record. 
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',0,0,'Y','LBRA','Search Key',0,'N',1250036,620,'Value','N',TO_TIMESTAMP('2013-05-02 14:20:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:20:10','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',60,100,'N','N','Y','N','N','N','Y')
;

-- 02/05/2013 14h20min12s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250036 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h20min13s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN Value VARCHAR(60) NOT NULL
;

-- 02/05/2013 14h21min47s BRT
-- Issue 40 
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2013-05-02 14:21:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250036
;

-- 02/05/2013 14h21min48s BRT
-- Issue 40 
INSERT INTO t_alter_column values('lbr_productfci','Value','VARCHAR(60)',null,'NULL')
;

-- 02/05/2013 14h21min48s BRT
-- Issue 40 
INSERT INTO t_alter_column values('lbr_productfci','Value',null,'NULL',null)
;

-- 02/05/2013 14h22min53s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Period of the Calendar',1250001,0,275,'The Period indicates an exclusive range of dates for a calendar.',0,0,'Y','LBRA','Period',0,'N',1250037,206,'C_Period_ID','N',TO_TIMESTAMP('2013-05-02 14:22:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:22:51','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 02/05/2013 14h22min53s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250037 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h22min54s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN C_Period_ID NUMERIC(10) NOT NULL
;

-- 02/05/2013 14h26min58s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The amount invoiced',1250001,0,'The amount invoiced',0,0,'Y','LBRA','Invoiced Amount',0,'N',1250038,2044,'InvoicedAmt','N',TO_TIMESTAMP('2013-05-02 14:26:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:26:57','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 02/05/2013 14h26min58s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250038 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h26min59s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN InvoicedAmt NUMERIC NOT NULL
;

-- 02/05/2013 14h28min3s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Amount Balance in Source Currency',1250001,0,0,0,'Y','LBRA','Source Amount',0,'N',1250039,2343,'AmtSource','N',TO_TIMESTAMP('2013-05-02 14:28:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:28:02','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 02/05/2013 14h28min3s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250039 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h28min5s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN AmtSource NUMERIC NOT NULL
;

-- 02/05/2013 14h29min14s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Percent of the entire amount',1250001,0,'Percentage of an amount (up to 100)',0,0,'Y','LBRA','Percentage',0,'N',1250040,2004,'Percentage','N',TO_TIMESTAMP('2013-05-02 14:29:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:29:12','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 02/05/2013 14h29min14s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250040 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/05/2013 14h29min15s BRT
-- Issue 40 
ALTER TABLE LBR_ProductFCI ADD COLUMN Percentage NUMERIC NOT NULL
;

-- 02/05/2013 14h29min45s BRT
-- Issue 40 
UPDATE AD_Table SET AD_Window_ID=140,Updated=TO_TIMESTAMP('2013-05-02 14:29:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1250001
;

-- 02/05/2013 14h30min26s BRT
-- Issue 40 
INSERT INTO AD_Tab (EntityType,IsTranslationTab,AD_Org_ID,IsReadOnly,SeqNo,AD_Window_ID,Created,CreatedBy,Updated,IsSingleRow,AD_Client_ID,IsInfoTab,AD_Tab_ID,IsActive,IsSortTab,HasTree,AD_Table_ID,Processing,UpdatedBy,Name,ImportFields,TabLevel,IsInsertRecord,IsAdvancedTab) VALUES ('LBRA','N',0,'N',200,140,TO_TIMESTAMP('2013-05-02 14:30:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-02 14:30:24','YYYY-MM-DD HH24:MI:SS'),'N',0,'N',1250001,'Y','N','N',1250001,'N',100,'FCI','N',1,'Y','N')
;

-- 02/05/2013 14h30min26s BRT
-- Issue 40 
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,CommitWarning,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.CommitWarning,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 02/05/2013 14h30min30s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:29','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1250030,1250375,TO_TIMESTAMP('2013-05-02 14:30:29','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250001,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100)
;

-- 02/05/2013 14h30min30s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250375 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min33s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:30','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1250028,1250376,TO_TIMESTAMP('2013-05-02 14:30:30','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100)
;

-- 02/05/2013 14h30min33s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250376 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min34s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:33','YYYY-MM-DD HH24:MI:SS'),'Y','Import Content Sheet','Primary key table LBR_ProductFCI',0,100,1250027,1250377,TO_TIMESTAMP('2013-05-02 14:30:33','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1250001,'N','Y','N',100)
;

-- 02/05/2013 14h30min34s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250377 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min35s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:34','YYYY-MM-DD HH24:MI:SS'),'Y','Invoiced Amount','The amount invoiced',0,100,1250038,1250378,TO_TIMESTAMP('2013-05-02 14:30:34','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','The amount invoiced','N',100)
;

-- 02/05/2013 14h30min35s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250378 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min36s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:35','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1250029,1250379,TO_TIMESTAMP('2013-05-02 14:30:35','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100)
;

-- 02/05/2013 14h30min36s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250379 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min38s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:36','YYYY-MM-DD HH24:MI:SS'),'Y','Percentage','Percent of the entire amount',0,100,1250040,1250380,TO_TIMESTAMP('2013-05-02 14:30:36','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','Percentage of an amount (up to 100)','N',100)
;

-- 02/05/2013 14h30min38s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250380 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min39s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:38','YYYY-MM-DD HH24:MI:SS'),'Y','Period','Period of the Calendar',0,100,1250037,1250381,TO_TIMESTAMP('2013-05-02 14:30:38','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','The Period indicates an exclusive range of dates for a calendar.','N',100)
;

-- 02/05/2013 14h30min39s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250381 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min40s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:39','YYYY-MM-DD HH24:MI:SS'),'Y','Product','Product, Service, Item',0,100,1250035,1250382,TO_TIMESTAMP('2013-05-02 14:30:39','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','Identifies an item which is either purchased or sold in this organization.','N',100)
;

-- 02/05/2013 14h30min40s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250382 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min41s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:40','YYYY-MM-DD HH24:MI:SS'),'Y','Search Key','Search key for the record in the format required - must be unique',0,100,1250036,1250383,TO_TIMESTAMP('2013-05-02 14:30:40','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',1250001,'N','Y','A search key allows you a fast method of finding a particular record. 
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','N',100)
;

-- 02/05/2013 14h30min41s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250383 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h30min43s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-02 14:30:41','YYYY-MM-DD HH24:MI:SS'),'Y','Source Amount','Amount Balance in Source Currency',0,100,1250039,1250384,TO_TIMESTAMP('2013-05-02 14:30:41','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250001,'N','Y','N',100)
;

-- 02/05/2013 14h30min43s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250384 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250375
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1250376
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1250379
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250382
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250381
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250383
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250384
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250378
;

-- 02/05/2013 14h31min18s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250380
;

-- 02/05/2013 14h31min29s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-02 14:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250379
;

-- 02/05/2013 14h31min33s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-02 14:31:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250381
;

-- 02/05/2013 14h32min48s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2013-05-02 14:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250383
;

-- 02/05/2013 14h32min54s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2013-05-02 14:32:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250384
;

-- 02/05/2013 14h32min58s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2013-05-02 14:32:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250378
;

-- 02/05/2013 14h33min2s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2013-05-02 14:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250380
;

-- 02/05/2013 14h35min27s BRT
-- Issue 40 
UPDATE AD_Tab SET IsReadOnly='Y', AD_Column_ID=1250035, IsInsertRecord='N', DisplayLogic='@IsBom@=''Y''',Updated=TO_TIMESTAMP('2013-05-02 14:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1250001
;

-- 02/05/2013 14h36min43s BRT
-- Issue 40 
UPDATE AD_Tab SET DisplayLogic='@IsBOM@=''Y''',Updated=TO_TIMESTAMP('2013-05-02 14:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1250001
;

-- 02/05/2013 14h37min46s BRT
-- Issue 40 
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2013-05-02 14:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250383
;

ALTER TABLE LBR_PRODUCTFCI ADD CONSTRAINT LBR_PRODUCTFCI_PERIOD UNIQUE (AD_CLIENT_ID, M_PRODUCT_ID, C_PERIOD_ID);

-- 09/05/2013 9h25min39s BRT
-- Issue 40 
INSERT INTO AD_Table (Name,AccessLevel,AD_Org_ID,IsActive,LoadSeq,AD_Client_ID,AD_Table_ID,IsSecurityEnabled,CreatedBy,Updated,UpdatedBy,EntityType,IsDeleteable,TableName,Created,IsView,IsChangeLog,ReplicationType,IsHighVolume,IsPersonalLock,ImportTable,CopyColumnsFromTable,IsCentrallyMaintained) VALUES ('Import Content Sheet - Process','3',0,'Y',0,0,1250002,'N',100,TO_TIMESTAMP('2013-05-09 09:25:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_FCIProcess',TO_TIMESTAMP('2013-05-09 09:25:37','YYYY-MM-DD HH24:MI:SS'),'N','N','L','N','N','N','N','Y')
;

-- 09/05/2013 9h25min39s BRT
-- Issue 40 
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 09/05/2013 9h25min41s BRT
-- Issue 40 
INSERT INTO AD_Sequence (Updated,UpdatedBy,Name,IsActive,CurrentNextSys,Description,AD_Client_ID,StartNewYear,IsTableID,StartNo,AD_Org_ID,IsAudited,IncrementNo,Created,CreatedBy,AD_Sequence_ID,IsAutoSequence,CurrentNext) VALUES (TO_TIMESTAMP('2013-05-09 09:25:39','YYYY-MM-DD HH24:MI:SS'),100,'LBR_FCIProcess','Y',50000,'Table LBR_FCIProcess',0,'N','Y',1000000,0,'N',1,TO_TIMESTAMP('2013-05-09 09:25:39','YYYY-MM-DD HH24:MI:SS'),100,1250001,'Y',1000000)
;

-- 09/05/2013 9h25min53s BRT
-- Issue 40 
UPDATE AD_Table_Trl SET Name='Ficha de Conteúdo de Importação - Processo',IsTranslated='Y',Updated=TO_TIMESTAMP('2013-05-09 09:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1250002 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h26min42s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Import Content Sheet - Process','Primary key table LBR_FCIProcess_ID',100,100,TO_TIMESTAMP('2013-05-09 09:26:40','YYYY-MM-DD HH24:MI:SS'),1250004,'LBR_FCIProcess_ID','Import Content Sheet - Process',0,TO_TIMESTAMP('2013-05-09 09:26:40','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 09/05/2013 9h26min42s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/05/2013 9h27min29s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Ficha de Conteúdo de Importação - Process',PrintName='Ficha de Conteúdo de Importação - Process',Description='Chave primária tabela LBR_FCIProcess',Updated=TO_TIMESTAMP('2013-05-09 09:27:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250004 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Element SET Description='Primary key table LBR_FCIProcess',Updated=TO_TIMESTAMP('2013-05-09 09:27:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250004
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1250004
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Column SET ColumnName='LBR_FCIProcess_ID', Name='Import Content Sheet - Process', Description='Primary key table LBR_FCIProcess', Help=NULL WHERE AD_Element_ID=1250004
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Process_Para SET ColumnName='LBR_FCIProcess_ID', Name='Import Content Sheet - Process', Description='Primary key table LBR_FCIProcess', Help=NULL, AD_Element_ID=1250004 WHERE UPPER(ColumnName)='LBR_FCIPROCESS_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Process_Para SET ColumnName='LBR_FCIProcess_ID', Name='Import Content Sheet - Process', Description='Primary key table LBR_FCIProcess', Help=NULL WHERE AD_Element_ID=1250004 AND IsCentrallyMaintained='Y'
;

-- 09/05/2013 9h27min35s BRT
-- Issue 40 
UPDATE AD_Field SET Name='Import Content Sheet - Process', Description='Primary key table LBR_FCIProcess', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1250004) AND IsCentrallyMaintained='Y'
;

-- 09/05/2013 9h28min47s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Primary key table LBR_FCIProcess',1250002,0,0,0,'Y','LBRA','Import Content Sheet - Process',0,'Y',1250041,1250004,'LBR_FCIProcess_ID','N',TO_TIMESTAMP('2013-05-09 09:28:45','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:28:45','YYYY-MM-DD HH24:MI:SS'),'N',13,'N',22,100,'N','Y','N','N','N','N','Y')
;

-- 09/05/2013 9h28min47s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250041 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h28min48s BRT
-- Issue 40 
CREATE TABLE LBR_FCIProcess (LBR_FCIProcess_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_FCIProcess_Key PRIMARY KEY (LBR_FCIProcess_ID))
;

-- 09/05/2013 9h29min22s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Client/Tenant for this installation.',1250002,0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,0,'Y','LBRA','Client',0,'N',1250042,102,'AD_Client_ID','@#AD_Client_ID@','N',TO_TIMESTAMP('2013-05-09 09:29:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:29:21','YYYY-MM-DD HH24:MI:SS'),116,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h29min22s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250042 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h29min23s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 09/05/2013 9h29min53s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Organizational entity within client',1250002,0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,0,'Y','LBRA','Organization',0,'N',1250043,113,'AD_Org_ID','@#AD_Org_ID@','N',TO_TIMESTAMP('2013-05-09 09:29:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:29:52','YYYY-MM-DD HH24:MI:SS'),104,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h29min53s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250043 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h29min55s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 09/05/2013 9h30min20s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The record is active in the system',1250002,0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,0,'Y','LBRA','Active',0,'N',1250044,348,'IsActive','Y','N',TO_TIMESTAMP('2013-05-09 09:30:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:30:18','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 9h30min20s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250044 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h30min21s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 09/05/2013 9h30min40s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was created',1250002,0,'The Created field indicates the date that this record was created.',0,0,'Y','LBRA','Created',0,'N',1250045,245,'Created','N',TO_TIMESTAMP('2013-05-09 09:30:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:30:38','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h30min40s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250045 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h30min40s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 09/05/2013 9h31min3s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who created this records',1250002,0,110,'The Created By field indicates the user who created this record.',0,0,'Y','LBRA','Created By',0,'N',1250046,246,'CreatedBy','N',TO_TIMESTAMP('2013-05-09 09:31:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:31:02','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h31min3s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250046 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h31min4s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 09/05/2013 9h31min24s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was updated',1250002,0,'The Updated field indicates the date that this record was updated.',0,0,'Y','LBRA','Updated',0,'N',1250047,607,'Updated','N',TO_TIMESTAMP('2013-05-09 09:31:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:31:23','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h31min24s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250047 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h31min25s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 09/05/2013 9h31min50s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who updated this records',1250002,0,110,'The Updated By field indicates the user who updated this record.',0,0,'Y','LBRA','Updated By',0,'N',1250048,608,'UpdatedBy','N',TO_TIMESTAMP('2013-05-09 09:31:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:31:48','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h31min50s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250048 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h31min51s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 09/05/2013 9h32min44s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Period of the Calendar',1250002,0,275,'The Period indicates an exclusive range of dates for a calendar.',0,0,'Y','LBRA','Period',0,'N',1250049,206,'C_Period_ID','N',TO_TIMESTAMP('2013-05-09 09:32:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:32:43','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 9h32min44s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250049 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h32min46s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN C_Period_ID NUMERIC(10) NOT NULL
;

-- 09/05/2013 9h37min5s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Process to create records for Import Content Sheet',100,100,TO_TIMESTAMP('2013-05-09 09:37:04','YYYY-MM-DD HH24:MI:SS'),1250005,'lbr_ProcCreateProductFCI','Process to create records for Import Content Sheet',0,TO_TIMESTAMP('2013-05-09 09:37:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 09/05/2013 9h37min5s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250005 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/05/2013 9h37min20s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Processo para criar registros para a FCI',PrintName='Processo para criar registros para a FCI',Updated=TO_TIMESTAMP('2013-05-09 09:37:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250005 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h38min21s BRT
-- Issue 40 
INSERT INTO AD_Process (Created,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Classname,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_TIMESTAMP('2013-05-09 09:38:20','YYYY-MM-DD HH24:MI:SS'),0,'Process to create records for Import Content Sheet',0,'N','Y','org.adempierelbr.process.ProcCreateProductFCI',0,1250004,TO_TIMESTAMP('2013-05-09 09:38:20','YYYY-MM-DD HH24:MI:SS'),'N',0,'3',100,100,'LBRA','ProcCreateProductFCI','N','Y','N','N')
;

-- 09/05/2013 9h38min21s BRT
-- Issue 40 
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 09/05/2013 9h38min51s BRT
-- Issue 40 
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Criar registros FCI',Updated=TO_TIMESTAMP('2013-05-09 09:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1250004 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h39min10s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,AD_Process_ID,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250002,0,0,0,'Y','LBRA','Process to create records for Import Content Sheet',0,'N',1250050,1250005,'lbr_ProcCreateProductFCI','N','N',1250004,TO_TIMESTAMP('2013-05-09 09:39:08','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:39:08','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 9h39min10s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250050 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h39min11s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN lbr_ProcCreateProductFCI CHAR(1) DEFAULT 'N' NOT NULL
;

-- 09/05/2013 9h39min55s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Process to create FCI File',100,100,TO_TIMESTAMP('2013-05-09 09:39:53','YYYY-MM-DD HH24:MI:SS'),1250006,'lbr_ProcCreateFCIFile','Process to create FCI File',0,TO_TIMESTAMP('2013-05-09 09:39:53','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 09/05/2013 9h39min55s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250006 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/05/2013 9h40min20s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Processo para criar arquivo FCI',PrintName='Processo para criar arquivo FCI',Updated=TO_TIMESTAMP('2013-05-09 09:40:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250006 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h41min24s BRT
-- Issue 40 
INSERT INTO AD_Process (Created,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Classname,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_TIMESTAMP('2013-05-09 09:41:22','YYYY-MM-DD HH24:MI:SS'),0,'Process to create FCI File',0,'N','Y','org.adempierelbr.process.ProcCreateFCIFile',0,1250005,TO_TIMESTAMP('2013-05-09 09:41:22','YYYY-MM-DD HH24:MI:SS'),'N',0,'3',100,100,'LBRA','lbr_ProcCreateFCIFile','N','Y','N','N')
;

-- 09/05/2013 9h41min24s BRT
-- Issue 40 
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250005 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 09/05/2013 9h41min40s BRT
-- Issue 40 
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Criar Arquivo FCI',Updated=TO_TIMESTAMP('2013-05-09 09:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1250005 AND AD_Language='pt_BR'
;

-- 09/05/2013 9h42min51s BRT
-- Issue 40 
UPDATE AD_Process SET Value='ProcCreateFCIFile',Updated=TO_TIMESTAMP('2013-05-09 09:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1250005
;

-- 09/05/2013 9h43min0s BRT
-- Issue 40 
UPDATE AD_Column SET AD_Process_ID=1250005,Updated=TO_TIMESTAMP('2013-05-09 09:43:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250050
;

-- 09/05/2013 9h43min1s BRT
-- Issue 40 
INSERT INTO t_alter_column values('lbr_fciprocess','lbr_ProcCreateProductFCI','CHAR(1)',null,'N')
;

-- 09/05/2013 9h43min1s BRT
-- Issue 40 
UPDATE LBR_FCIProcess SET lbr_ProcCreateProductFCI='N' WHERE lbr_ProcCreateProductFCI IS NULL
;

-- 09/05/2013 9h43min53s BRT
-- Issue 40 
UPDATE AD_Column SET AD_Process_ID=1250004,Updated=TO_TIMESTAMP('2013-05-09 09:43:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250050
;

-- 09/05/2013 9h43min54s BRT
-- Issue 40 
INSERT INTO t_alter_column values('lbr_fciprocess','lbr_ProcCreateProductFCI','CHAR(1)',null,'N')
;

-- 09/05/2013 9h43min54s BRT
-- Issue 40 
UPDATE LBR_FCIProcess SET lbr_ProcCreateProductFCI='N' WHERE lbr_ProcCreateProductFCI IS NULL
;

-- 09/05/2013 9h44min23s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,AD_Process_ID,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250002,0,0,0,'Y','LBRA','Process to create FCI File',0,'N',1250051,1250006,'lbr_ProcCreateFCIFile','N','N',1250005,TO_TIMESTAMP('2013-05-09 09:44:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 09:44:19','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 9h44min23s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250051 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 9h44min24s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN lbr_ProcCreateFCIFile CHAR(1) DEFAULT 'N' NOT NULL
;

-- 09/05/2013 10h14min5s BRT
-- Issue 40 
INSERT INTO AD_Process (Created,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Classname,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_TIMESTAMP('2013-05-09 10:14:03','YYYY-MM-DD HH24:MI:SS'),0,'Process to Update FCI Number',0,'N','Y','org.adempierelbr.process.ProcUpdateFCI',0,1250006,TO_TIMESTAMP('2013-05-09 10:14:03','YYYY-MM-DD HH24:MI:SS'),'N',0,'3',100,100,'LBRA','ProcUpdateFCI','N','Y','N','N')
;

-- 09/05/2013 10h14min5s BRT
-- Issue 40 
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250006 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 09/05/2013 10h14min14s BRT
-- Issue 40 
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Atualizar FCI',Updated=TO_TIMESTAMP('2013-05-09 10:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1250006 AND AD_Language='pt_BR'
;

-- 09/05/2013 10h14min52s BRT
-- Issue 40 
INSERT INTO AD_Process_Para (AD_Process_ID,Updated,AD_Process_Para_ID,AD_Client_ID,IsCentrallyMaintained,IsRange,ColumnName,IsActive,UpdatedBy,FieldLength,AD_Reference_ID,Name,CreatedBy,Created,IsMandatory,SeqNo,EntityType,AD_Org_ID,AD_Element_ID) VALUES (1250006,TO_TIMESTAMP('2013-05-09 10:14:51','YYYY-MM-DD HH24:MI:SS'),1250000,0,'Y','N','FileName','Y',100,22,39,'FileName',100,TO_TIMESTAMP('2013-05-09 10:14:51','YYYY-MM-DD HH24:MI:SS'),'Y',10,'U',0,2295)
;

-- 09/05/2013 10h14min52s BRT
-- Issue 40 
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 09/05/2013 10h15min3s BRT
-- Issue 40 
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1250000
;

-- 09/05/2013 10h15min3s BRT
-- Issue 40 
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1250000
;

-- 09/05/2013 10h15min19s BRT
-- Issue 40 
INSERT INTO AD_Process_Para (AD_Process_ID,Updated,AD_Process_Para_ID,AD_Client_ID,IsCentrallyMaintained,IsRange,ColumnName,IsActive,UpdatedBy,FieldLength,AD_Reference_ID,Name,CreatedBy,Created,IsMandatory,SeqNo,EntityType,AD_Org_ID,AD_Element_ID) VALUES (1250006,TO_TIMESTAMP('2013-05-09 10:15:18','YYYY-MM-DD HH24:MI:SS'),1250001,0,'Y','N','FileName','Y',100,22,38,'FileName',100,TO_TIMESTAMP('2013-05-09 10:15:18','YYYY-MM-DD HH24:MI:SS'),'Y',10,'LBRA',0,2295)
;

-- 09/05/2013 10h15min19s BRT
-- Issue 40 
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 09/05/2013 10h15min35s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,AD_Process_ID,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250002,0,0,0,'Y','LBRA','Process Now',0,'N',1250052,524,'Processing','N',1250006,TO_TIMESTAMP('2013-05-09 10:15:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 10:15:33','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 10h15min35s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250052 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 10h15min36s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN Processing CHAR(1) NOT NULL
;

-- 09/05/2013 10h16min4s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The document has been processed',1250002,0,'The Processed checkbox indicates that a document has been processed.',0,0,'Y','LBRA','Processed',0,'N',1250053,1047,'Processed','N','N',TO_TIMESTAMP('2013-05-09 10:16:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 10:16:03','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'N','N','N','N','N','N','Y')
;

-- 09/05/2013 10h16min4s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250053 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 10h16min5s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 09/05/2013 10h16min21s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 10:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250052
;

-- 09/05/2013 10h16min23s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 10:16:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250051
;

-- 09/05/2013 10h16min25s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 10:16:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250050
;

-- 09/05/2013 10h16min52s BRT
-- Issue 40 
INSERT INTO AD_Window (IsActive,Created,AD_Client_ID,UpdatedBy,AD_Window_ID,WindowType,Name,CreatedBy,Updated,IsSOTrx,Processing,AD_Org_ID,EntityType,IsDefault,IsBetaFunctionality,WinHeight,WinWidth) VALUES ('Y',TO_TIMESTAMP('2013-05-09 10:16:51','YYYY-MM-DD HH24:MI:SS'),0,100,1250001,'M','FCI',100,TO_TIMESTAMP('2013-05-09 10:16:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,'LBRA','N','N',0,0)
;

-- 09/05/2013 10h16min52s BRT
-- Issue 40 
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 09/05/2013 10h17min9s BRT
-- Issue 40 
INSERT INTO AD_Tab (EntityType,IsTranslationTab,AD_Org_ID,IsReadOnly,SeqNo,AD_Window_ID,Created,CreatedBy,Updated,IsSingleRow,AD_Client_ID,IsInfoTab,AD_Tab_ID,IsActive,IsSortTab,HasTree,AD_Table_ID,Processing,UpdatedBy,Name,ImportFields,TabLevel,IsInsertRecord,IsAdvancedTab) VALUES ('LBRA','N',0,'N',10,1250001,TO_TIMESTAMP('2013-05-09 10:17:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 10:17:07','YYYY-MM-DD HH24:MI:SS'),'N',0,'N',1250002,'Y','N','N',1250002,'N',100,'FCI','N',0,'Y','N')
;

-- 09/05/2013 10h17min9s BRT
-- Issue 40 
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,CommitWarning,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.CommitWarning,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 09/05/2013 10h17min12s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:11','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1250044,1250385,TO_TIMESTAMP('2013-05-09 10:17:11','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100)
;

-- 09/05/2013 10h17min12s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250385 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min14s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:12','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1250042,1250386,TO_TIMESTAMP('2013-05-09 10:17:12','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250002,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100)
;

-- 09/05/2013 10h17min14s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250386 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min15s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:14','YYYY-MM-DD HH24:MI:SS'),'Y','Import Content Sheet - Process','Primary key table LBR_FCIProcess',0,100,1250041,1250387,TO_TIMESTAMP('2013-05-09 10:17:14','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 10h17min15s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250387 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min17s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:15','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1250043,1250388,TO_TIMESTAMP('2013-05-09 10:17:15','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250002,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100)
;

-- 09/05/2013 10h17min17s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250388 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min19s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:17','YYYY-MM-DD HH24:MI:SS'),'Y','Period','Period of the Calendar',0,100,1250049,1250389,TO_TIMESTAMP('2013-05-09 10:17:17','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250002,'N','Y','The Period indicates an exclusive range of dates for a calendar.','N',100)
;

-- 09/05/2013 10h17min19s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250389 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min21s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:19','YYYY-MM-DD HH24:MI:SS'),'Y','Process Now',0,100,1250052,1250390,TO_TIMESTAMP('2013-05-09 10:17:19','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 10h17min21s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250390 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min22s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:21','YYYY-MM-DD HH24:MI:SS'),'Y','Process to create FCI File',0,100,1250051,1250391,TO_TIMESTAMP('2013-05-09 10:17:21','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 10h17min22s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250391 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min25s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:22','YYYY-MM-DD HH24:MI:SS'),'Y','Process to create records for Import Content Sheet',0,100,1250050,1250392,TO_TIMESTAMP('2013-05-09 10:17:22','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 10h17min25s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250392 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min27s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 10:17:25','YYYY-MM-DD HH24:MI:SS'),'Y','Processed','The document has been processed',0,100,1250053,1250393,TO_TIMESTAMP('2013-05-09 10:17:25','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','The Processed checkbox indicates that a document has been processed.','N',100)
;

-- 09/05/2013 10h17min27s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250393 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250385
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1250386
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1250388
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250389
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250392
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250391
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250390
;

-- 09/05/2013 10h17min54s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250393
;

-- 09/05/2013 10h18min11s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-09 10:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250393
;

-- 09/05/2013 10h18min41s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_TIMESTAMP('2013-05-09 10:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250392
;

-- 09/05/2013 10h18min43s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_TIMESTAMP('2013-05-09 10:18:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250391
;

-- 09/05/2013 10h18min46s BRT
-- Issue 40 
UPDATE AD_Field SET AD_FieldGroup_ID=114,Updated=TO_TIMESTAMP('2013-05-09 10:18:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250390
;

-- 09/05/2013 10h18min52s BRT
-- Issue 40 
UPDATE AD_Field SET IsReadOnly='Y', AD_FieldGroup_ID=114,Updated=TO_TIMESTAMP('2013-05-09 10:18:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250393
;

-- 09/05/2013 10h19min29s BRT
-- Issue 40 
INSERT INTO AD_Menu (AD_Client_ID,CreatedBy,Updated,Name,IsActive,IsSummary,UpdatedBy,AD_Menu_ID,IsSOTrx,Created,AD_Window_ID,"action",IsReadOnly,AD_Org_ID,EntityType,IsCentrallyMaintained) VALUES (0,100,TO_TIMESTAMP('2013-05-09 10:19:28','YYYY-MM-DD HH24:MI:SS'),'FCI','Y','N',100,1250001,'N',TO_TIMESTAMP('2013-05-09 10:19:28','YYYY-MM-DD HH24:MI:SS'),1250001,'W','N',0,'LBRA','Y')
;

-- 09/05/2013 10h19min29s BRT
-- Issue 40 
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 09/05/2013 10h19min29s BRT
-- Issue 40 
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1250001, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1250001)
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120013
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120011
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120012
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1250001
;

-- 09/05/2013 10h19min32s BRT
-- Issue 40 
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 09/05/2013 10h53min9s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-09 10:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250388
;

ALTER TABLE LBR_FCIPROCESS ADD CONSTRAINT LBR_FCIPROCESS_PERIOD UNIQUE (AD_CLIENT_ID, C_PERIOD_ID);

-- 09/05/2013 16h24min52s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Step 1',100,100,TO_TIMESTAMP('2013-05-09 16:24:50','YYYY-MM-DD HH24:MI:SS'),1250007,'lbr_Step1','Step 1',0,TO_TIMESTAMP('2013-05-09 16:24:50','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 09/05/2013 16h24min52s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250007 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/05/2013 16h25min1s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Etapa 1',PrintName='Etapa 1',Updated=TO_TIMESTAMP('2013-05-09 16:25:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250007 AND AD_Language='pt_BR'
;

-- 09/05/2013 16h25min30s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250002,0,0,0,'Y','LBRA','Step 1',0,'N',1250054,1250007,'lbr_Step1','N','N',TO_TIMESTAMP('2013-05-09 16:25:28','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 16:25:28','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 16h25min30s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250054 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 16h25min31s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN lbr_Step1 CHAR(1) DEFAULT 'N' CHECK (lbr_Step1 IN ('Y','N')) NOT NULL
;

-- 09/05/2013 16h25min52s BRT
-- Issue 40 
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Step 2',100,100,TO_TIMESTAMP('2013-05-09 16:25:51','YYYY-MM-DD HH24:MI:SS'),1250008,'lbr_Step2','Step 2',0,TO_TIMESTAMP('2013-05-09 16:25:51','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 09/05/2013 16h25min52s BRT
-- Issue 40 
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250008 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/05/2013 16h26min2s BRT
-- Issue 40 
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Etapa 2',PrintName='Etapa 2',Updated=TO_TIMESTAMP('2013-05-09 16:26:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250008 AND AD_Language='pt_BR'
;

-- 09/05/2013 16h26min17s BRT
-- Issue 40 
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250002,0,0,0,'Y','LBRA','Step 2',0,'N',1250055,1250008,'lbr_Step2','N','N',TO_TIMESTAMP('2013-05-09 16:26:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-05-09 16:26:15','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 09/05/2013 16h26min17s BRT
-- Issue 40 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250055 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/05/2013 16h26min18s BRT
-- Issue 40 
ALTER TABLE LBR_FCIProcess ADD COLUMN lbr_Step2 CHAR(1) DEFAULT 'N' CHECK (lbr_Step2 IN ('Y','N')) NOT NULL
;

-- 09/05/2013 16h26min47s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y'' | @lbr_Step1@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 16:26:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250050
;

-- 09/05/2013 16h28min24s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@lbr_Step1@=''N'' | @Processed=''Y'' & @lbr_Step2@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 16:28:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250051
;

-- 09/05/2013 16h29min18s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@lbr_Step2@=''N'' | @Processed=''Y''',Updated=TO_TIMESTAMP('2013-05-09 16:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250052
;

-- 09/05/2013 16h29min43s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 16:29:42','YYYY-MM-DD HH24:MI:SS'),'Y','Step 1',0,100,1250054,1250394,TO_TIMESTAMP('2013-05-09 16:29:42','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 16h29min43s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250394 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 16h29min44s BRT
-- Issue 40 
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-05-09 16:29:43','YYYY-MM-DD HH24:MI:SS'),'Y','Step 2',0,100,1250055,1250395,TO_TIMESTAMP('2013-05-09 16:29:43','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250002,'N','Y','N',100)
;

-- 09/05/2013 16h29min44s BRT
-- Issue 40 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250395 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/05/2013 16h29min53s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250394
;

-- 09/05/2013 16h29min53s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250391
;

-- 09/05/2013 16h29min53s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250395
;

-- 09/05/2013 16h29min53s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250390
;

-- 09/05/2013 16h29min53s BRT
-- Issue 40 
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250393
;

-- 09/05/2013 16h29min59s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-09 16:29:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250394
;

-- 09/05/2013 16h30min1s BRT
-- Issue 40 
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-09 16:30:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250395
;

-- 09/05/2013 16h30min5s BRT
-- Issue 40 
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-09 16:30:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250395
;

-- 09/05/2013 16h30min7s BRT
-- Issue 40 
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-09 16:30:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250394
;

-- 09/05/2013 17h8min55s BRT
-- Issue 40 
UPDATE AD_Column SET ReadOnlyLogic='@lbr_Step1@=''N'' | @Processed=''Y'' | @lbr_Step2@=''Y''',Updated=TO_TIMESTAMP('2013-05-09 17:08:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250051
;

UPDATE AD_SysConfig SET Value='370-trunk/020-FR-Issue40.sql' WHERE AD_SysConfig_ID=1100006;