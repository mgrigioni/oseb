/*
http://code.google.com/p/oseb/issues/detail?id=25
Mario Grigioni - 15/08/2012, mgrigioni
*/

-- 14/08/2012 16h32min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (Name,AccessLevel,AD_Org_ID,IsActive,LoadSeq,AD_Client_ID,AD_Table_ID,IsSecurityEnabled,CreatedBy,Updated,UpdatedBy,EntityType,IsDeleteable,TableName,Created,IsView,IsChangeLog,ReplicationType,IsHighVolume,IsPersonalLock,ImportTable,CopyColumnsFromTable,IsCentrallyMaintained) VALUES ('Inutilização NFe','3',0,'Y',0,0,1250000,'N',100,TO_TIMESTAMP('2012-08-14 16:32:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NFeInut',TO_TIMESTAMP('2012-08-14 16:32:23','YYYY-MM-DD HH24:MI:SS'),'N','N','L','N','N','N','N','Y')
;

-- 14/08/2012 16h32min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 14/08/2012 16h33min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,Description,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('Inutilização NFe','Inutilização Intervalo NFe',100,100,TO_TIMESTAMP('2012-08-14 16:33:23','YYYY-MM-DD HH24:MI:SS'),1250000,'LBR_NFeInut_ID','Inutilização NFe',0,TO_TIMESTAMP('2012-08-14 16:33:23','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 14/08/2012 16h33min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/08/2012 16h33min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Inutilização Intervalo NFe',1250000,0,0,0,'Y','LBRA','Inutilização NFe',0,'Y',1250005,1250000,'LBR_NFeInut_ID','N',TO_TIMESTAMP('2012-08-14 16:33:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:33:56','YYYY-MM-DD HH24:MI:SS'),'N',13,'N',22,100,'N','Y','N','N','N','N','Y')
;

-- 14/08/2012 16h33min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250005 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h33min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_NFeInut (LBR_NFeInut_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NFeInut_Key PRIMARY KEY (LBR_NFeInut_ID))
;

-- 14/08/2012 16h34min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Client/Tenant for this installation.',1250000,0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',0,0,'Y','LBRA','Client',0,'N',1250006,102,'AD_Client_ID','N',TO_TIMESTAMP('2012-08-14 16:34:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:34:29','YYYY-MM-DD HH24:MI:SS'),116,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h34min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250006 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h34min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h34min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_TIMESTAMP('2012-08-14 16:34:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250006
;

-- 14/08/2012 16h35min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,AD_Val_Rule_ID,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Organizational entity within client',1250000,0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',0,0,'Y','LBRA','Organization',0,'N',1250007,113,'AD_Org_ID','N',TO_TIMESTAMP('2012-08-14 16:35:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:35:14','YYYY-MM-DD HH24:MI:SS'),104,'N',19,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h35min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250007 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h35min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h35min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_TIMESTAMP('2012-08-14 16:35:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250007
;

-- 14/08/2012 16h35min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The record is active in the system',1250000,0,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',0,0,'Y','LBRA','Active',0,'N',1250008,348,'IsActive','Y','N',TO_TIMESTAMP('2012-08-14 16:35:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:35:41','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 16h35min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250008 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h35min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 14/08/2012 16h36min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was created',1250000,0,'The Created field indicates the date that this record was created.',0,0,'Y','LBRA','Created',0,'N',1250009,245,'Created','N',TO_TIMESTAMP('2012-08-14 16:36:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:36:02','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h36min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250009 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h36min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 14/08/2012 16h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who created this records',1250000,0,110,'The Created By field indicates the user who created this record.',0,0,'Y','LBRA','Created By',0,'N',1250010,246,'CreatedBy','N',TO_TIMESTAMP('2012-08-14 16:36:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:36:22','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250010 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h36min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h36min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Date this record was updated',1250000,0,'The Updated field indicates the date that this record was updated.',0,0,'Y','LBRA','Updated',0,'N',1250011,607,'Updated','N',TO_TIMESTAMP('2012-08-14 16:36:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:36:42','YYYY-MM-DD HH24:MI:SS'),'N',16,'N',7,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h36min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250011 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h36min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 14/08/2012 16h37min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','User who updated this records',1250000,0,110,'The Updated By field indicates the user who updated this record.',0,0,'Y','LBRA','Updated By',0,'N',1250012,608,'UpdatedBy','N',TO_TIMESTAMP('2012-08-14 16:37:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:37:05','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h37min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250012 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h37min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h40min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Document sequence number of the document',1250000,0,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>". 
 
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',0,0,'Y','LBRA','Document No',0,'N',1250013,290,'DocumentNo','N',TO_TIMESTAMP('2012-08-14 16:40:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:40:03','YYYY-MM-DD HH24:MI:SS'),'N',11,'N',9,100,'N','N','Y','N','N','N','Y')
;

-- 14/08/2012 16h40min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250013 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h40min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN DocumentNo NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h40min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('DocumentNo To',100,100,TO_TIMESTAMP('2012-08-14 16:40:30','YYYY-MM-DD HH24:MI:SS'),1250001,'lbr_DocumentNo_To','DocumentNo To',0,TO_TIMESTAMP('2012-08-14 16:40:30','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 14/08/2012 16h40min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/08/2012 16h41min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Para Número do Documento',PrintName='Para Número do Documento',Updated=TO_TIMESTAMP('2012-08-14 16:41:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250001 AND AD_Language='pt_BR'
;

-- 14/08/2012 16h41min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250000,0,0,0,'Y','LBRA','DocumentNo To',0,'N',1250014,1250001,'lbr_DocumentNo_To','N',TO_TIMESTAMP('2012-08-14 16:41:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:41:39','YYYY-MM-DD HH24:MI:SS'),'N',11,'N',9,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h41min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250014 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h41min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_DocumentNo_To NUMERIC(10) NOT NULL
;

-- 14/08/2012 16h42min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N',1250000,0,0,0,'Y','LBRA','NF Serie',0,'N',1250015,1100010,'lbr_NFSerie','N',TO_TIMESTAMP('2012-08-14 16:42:36','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:42:36','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',3,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h42min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250015 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h42min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_NFSerie VARCHAR(3) DEFAULT NULL 
;

-- 14/08/2012 16h42min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2012-08-14 16:42:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250015
;

-- 14/08/2012 16h42min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_nfeinut','lbr_NFSerie','VARCHAR(3)',null,'0')
;

-- 14/08/2012 16h43min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Identifies the model of Nota Fiscal',1250000,0,1120009,0,0,'Y','LBRA','NF Model',0,'N',1250016,1100009,'lbr_NFModel','55','N',TO_TIMESTAMP('2012-08-14 16:43:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:43:40','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',2,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h43min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250016 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h43min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_NFModel VARCHAR(2) DEFAULT '55' NOT NULL
;

-- 14/08/2012 16h44min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Motivo do Cancelamento (Entre 15 e 255 caracteres)',1250000,0,'Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.',0,0,'Y','LBRA','Motivo do Cancelamento',0,'N',1250017,1100037,'lbr_MotivoCancel','N',TO_TIMESTAMP('2012-08-14 16:44:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:44:44','YYYY-MM-DD HH24:MI:SS'),'N',34,'N',255,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 16h44min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250017 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h44min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_MotivoCancel VARCHAR(255) NOT NULL
;

-- 14/08/2012 16h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1250000,0,0,0,'Y','LBRA','Process Now',0,'N',1250018,524,'Processing','N','N',TO_TIMESTAMP('2012-08-14 16:45:52','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:45:52','YYYY-MM-DD HH24:MI:SS'),'N',28,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 16h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250018 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h45min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN Processing CHAR(1) DEFAULT 'N' NOT NULL
;

-- 14/08/2012 16h48min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','The document has been processed',1250000,0,'The Processed checkbox indicates that a document has been processed.',0,0,'Y','LBRA','Processed',0,'N',1250019,1047,'Processed','N','N',TO_TIMESTAMP('2012-08-14 16:48:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:48:05','YYYY-MM-DD HH24:MI:SS'),'N',20,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 16h48min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250019 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h48min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 14/08/2012 16h48min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Status of NFe',1250000,0,1100004,0,0,'Y','LBRA','NFe Status',0,'N',1250020,1100018,'lbr_NFeStatus','N',TO_TIMESTAMP('2012-08-14 16:48:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:48:50','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',3,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 16h48min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250020 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h48min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_NFeStatus VARCHAR(3) DEFAULT NULL 
;

-- 14/08/2012 16h49min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (IsActive,Created,AD_Client_ID,UpdatedBy,AD_Window_ID,WindowType,Name,CreatedBy,Updated,IsSOTrx,Processing,AD_Org_ID,EntityType,IsDefault,IsBetaFunctionality,WinHeight,WinWidth) VALUES ('Y',TO_TIMESTAMP('2012-08-14 16:49:20','YYYY-MM-DD HH24:MI:SS'),0,100,1250000,'M','Inutilização NFe',100,TO_TIMESTAMP('2012-08-14 16:49:20','YYYY-MM-DD HH24:MI:SS'),'Y','N',0,'LBRA','N','N',0,0)
;

-- 14/08/2012 16h49min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 14/08/2012 16h49min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (EntityType,IsTranslationTab,AD_Org_ID,IsReadOnly,SeqNo,AD_Window_ID,Created,CreatedBy,Updated,IsSingleRow,AD_Client_ID,IsInfoTab,AD_Tab_ID,IsActive,IsSortTab,HasTree,AD_Table_ID,Processing,UpdatedBy,Name,ImportFields,TabLevel,IsInsertRecord,IsAdvancedTab) VALUES ('LBRA','N',0,'N',10,1250000,TO_TIMESTAMP('2012-08-14 16:49:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:49:50','YYYY-MM-DD HH24:MI:SS'),'N',0,'N',1250000,'Y','N','N',1250000,'N',100,'Inutilização NFe','N',0,'Y','N')
;

-- 14/08/2012 16h49min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,CommitWarning,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.CommitWarning,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 14/08/2012 16h50min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:49:58','YYYY-MM-DD HH24:MI:SS'),'Y','Active','The record is active in the system',0,100,1250008,1250350,TO_TIMESTAMP('2012-08-14 16:49:58','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250000,'N','Y','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. 
There are two reasons for de-activating and not deleting records: 
(1) The system requires the record for audit purposes. 
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N',100)
;

-- 14/08/2012 16h50min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250350 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:00','YYYY-MM-DD HH24:MI:SS'),'Y','Client','Client/Tenant for this installation.',0,100,1250006,1250351,TO_TIMESTAMP('2012-08-14 16:50:00','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250000,'N','Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N',100)
;

-- 14/08/2012 16h50min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250351 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:01','YYYY-MM-DD HH24:MI:SS'),'Y','Document No','Document sequence number of the document',0,100,1250013,1250352,TO_TIMESTAMP('2012-08-14 16:50:01','YYYY-MM-DD HH24:MI:SS'),9,'Y','N',0,'LBRA','N','N',1250000,'N','Y','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>". 
 
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','N',100)
;

-- 14/08/2012 16h50min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250352 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:02','YYYY-MM-DD HH24:MI:SS'),'Y','DocumentNo To',0,100,1250014,1250353,TO_TIMESTAMP('2012-08-14 16:50:02','YYYY-MM-DD HH24:MI:SS'),9,'Y','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250353 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:03','YYYY-MM-DD HH24:MI:SS'),'Y','Inutilização NFe','Inutilização Intervalo NFe',0,100,1250005,1250354,TO_TIMESTAMP('2012-08-14 16:50:03','YYYY-MM-DD HH24:MI:SS'),22,'N','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250354 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:04','YYYY-MM-DD HH24:MI:SS'),'Y','Motivo do Cancelamento','Motivo do Cancelamento (Entre 15 e 255 caracteres)',0,100,1250017,1250355,TO_TIMESTAMP('2012-08-14 16:50:04','YYYY-MM-DD HH24:MI:SS'),255,'Y','N',0,'LBRA','N','N',1250000,'N','Y','Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.','N',100)
;

-- 14/08/2012 16h50min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250355 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:05','YYYY-MM-DD HH24:MI:SS'),'Y','NF Model','Identifies the model of Nota Fiscal',0,100,1250016,1250356,TO_TIMESTAMP('2012-08-14 16:50:05','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250356 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:06','YYYY-MM-DD HH24:MI:SS'),'Y','NF Serie',0,100,1250015,1250357,TO_TIMESTAMP('2012-08-14 16:50:06','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250357 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:07','YYYY-MM-DD HH24:MI:SS'),'Y','NFe Status','Status of NFe',0,100,1250020,1250358,TO_TIMESTAMP('2012-08-14 16:50:07','YYYY-MM-DD HH24:MI:SS'),3,'Y','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250358 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:09','YYYY-MM-DD HH24:MI:SS'),'Y','Organization','Organizational entity within client',0,100,1250007,1250359,TO_TIMESTAMP('2012-08-14 16:50:09','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250000,'N','Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N',100)
;

-- 14/08/2012 16h50min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250359 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:10','YYYY-MM-DD HH24:MI:SS'),'Y','Process Now',0,100,1250018,1250360,TO_TIMESTAMP('2012-08-14 16:50:10','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250000,'N','Y','N',100)
;

-- 14/08/2012 16h50min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250360 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h50min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 16:50:11','YYYY-MM-DD HH24:MI:SS'),'Y','Processed','The document has been processed',0,100,1250019,1250361,TO_TIMESTAMP('2012-08-14 16:50:11','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1250000,'N','Y','The Processed checkbox indicates that a document has been processed.','N',100)
;

-- 14/08/2012 16h50min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250361 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250350
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1250351
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1250359
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250356
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250357
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250352
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250353
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250355
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250358
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250360
;

-- 14/08/2012 16h51min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250361
;

-- 14/08/2012 16h51min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-08-14 16:51:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250359
;

-- 14/08/2012 16h51min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-08-14 16:51:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250357
;

-- 14/08/2012 16h51min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-08-14 16:51:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250353
;

-- 14/08/2012 16h51min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-08-14 16:51:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250360
;

-- 14/08/2012 16h51min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y', DisplayLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2012-08-14 16:51:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250361
;

-- 14/08/2012 16h51min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-08-14 16:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250358
;

-- 14/08/2012 16h52min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,CreatedBy,Updated,Name,IsActive,IsSummary,UpdatedBy,AD_Menu_ID,IsSOTrx,Created,AD_Window_ID,"action",IsReadOnly,AD_Org_ID,EntityType,IsCentrallyMaintained) VALUES (0,100,TO_TIMESTAMP('2012-08-14 16:52:35','YYYY-MM-DD HH24:MI:SS'),'Inutilização NFe','Y','N',100,1250000,'N',TO_TIMESTAMP('2012-08-14 16:52:35','YYYY-MM-DD HH24:MI:SS'),1250000,'W','N',0,'LBRA','Y')
;

-- 14/08/2012 16h52min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 14/08/2012 16h52min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1250000, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1250000)
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=3000086
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1250000
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 14/08/2012 16h53min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 14/08/2012 16h57min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Period of the Calendar',1250000,0,233,'The Period indicates an exclusive range of dates for a calendar.',0,0,'Y','LBRA','Period',0,'N',1250021,206,'C_Period_ID','N',TO_TIMESTAMP('2012-08-14 16:57:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 16:57:15','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'N','N','N','N','N','N','Y')
;

-- 14/08/2012 16h57min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250021 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 16h57min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN C_Period_ID NUMERIC(10) NOT NULL
;

-- 14/08/2012 17h2min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1250000,Updated=TO_TIMESTAMP('2012-08-14 17:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1250000
;

-- 14/08/2012 17h2min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 17:02:14','YYYY-MM-DD HH24:MI:SS'),'Y','Period','Period of the Calendar',0,100,1250021,1250362,TO_TIMESTAMP('2012-08-14 17:02:14','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1250000,'N','Y','The Period indicates an exclusive range of dates for a calendar.','N',100)
;

-- 14/08/2012 17h2min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250362 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250362
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1250356
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250357
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1250352
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1250353
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250355
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250358
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250360
;

-- 14/08/2012 17h2min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1250361
;

-- 15/08/2012 8h53min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (Created,AD_Client_ID,Name,AD_Org_ID,IsReport,IsActive,Classname,Statistic_Seconds,AD_Process_ID,Updated,IsDirectPrint,Statistic_Count,AccessLevel,CreatedBy,UpdatedBy,EntityType,Value,IsBetaFunctionality,ShowHelp,IsServerProcess,CopyFromProcess) VALUES (TO_TIMESTAMP('2012-08-15 08:52:58','YYYY-MM-DD HH24:MI:SS'),0,'Inutiliza Numeração NFe',0,'N','Y','org.adempierelbr.process.ProcInutNFe',0,1250003,TO_TIMESTAMP('2012-08-15 08:52:58','YYYY-MM-DD HH24:MI:SS'),'N',0,'3',100,100,'LBRA','ProcInutNFe','N','Y','N','N')
;

-- 15/08/2012 8h53min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1250003 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 15/08/2012 8h53min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2012-08-15 08:53:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1250003 AND AD_Language='pt_BR'
;

-- 15/08/2012 8h53min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Process_ID=1250003,Updated=TO_TIMESTAMP('2012-08-15 08:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250018
;

-- 15/08/2012 8h55min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=275,Updated=TO_TIMESTAMP('2012-08-15 08:55:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250021
;

-- 15/08/2012 8h58min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,Updated,AD_Element_ID,ColumnName,PrintName,AD_Client_ID,Created,AD_Org_ID,IsActive,EntityType) VALUES ('DocumentNo',100,100,TO_TIMESTAMP('2012-08-15 08:58:36','YYYY-MM-DD HH24:MI:SS'),1250002,'lbr_DocumentNo','DocumentNo',0,TO_TIMESTAMP('2012-08-15 08:58:36','YYYY-MM-DD HH24:MI:SS'),0,'Y','LBRA')
;

-- 15/08/2012 8h58min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,PO_PrintName,Help,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.PO_PrintName,t.Help,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1250002 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 15/08/2012 8h58min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Número do Documento',PrintName='Número do Documento',Updated=TO_TIMESTAMP('2012-08-15 08:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1250002 AND AD_Language='pt_BR'
;

-- 15/08/2012 8h59min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Description=NULL, Help=NULL, Name='DocumentNo', AD_Element_ID=1250002, ColumnName='lbr_DocumentNo',Updated=TO_TIMESTAMP('2012-08-15 08:59:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250013
;

-- 15/08/2012 8h59min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1250013
;

-- 15/08/2012 8h59min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='DocumentNo', Description=NULL, Help=NULL WHERE AD_Column_ID=1250013 AND IsCentrallyMaintained='Y'
;

-- 15/08/2012 8h59min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeInut ADD COLUMN lbr_DocumentNo NUMERIC(10) NOT NULL
;

ALTER TABLE LBR_NFeInut DROP COLUMN DOCUMENTNO;

-- 15/08/2012 9h7min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2012-08-15 09:07:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250018
;

UPDATE AD_SysConfig SET Value='370-trunk/010-FR-Issue25.sql' WHERE AD_SysConfig_ID=1100006;