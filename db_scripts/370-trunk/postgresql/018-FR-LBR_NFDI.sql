-- 24/09/2012 9h1min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Manufacturer of the Product',1100002,0,'The manufacturer of the Product (used if different from the Business Partner / Vendor)',0,0,'Y','LBRA','Manufacturer',0,'N',1250023,1915,'Manufacturer','N',TO_TIMESTAMP('2012-09-24 09:01:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-09-24 09:01:14','YYYY-MM-DD HH24:MI:SS'),'N',10,'N',60,100,'Y','N','N','N','N','N','Y')
;

-- 24/09/2012 9h1min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250023 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 24/09/2012 9h1min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI ADD COLUMN Manufacturer VARCHAR(60) DEFAULT NULL 
;

-- 24/09/2012 9h1min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-09-24 09:01:29','YYYY-MM-DD HH24:MI:SS'),'Y','Manufacturer','Manufacturer of the Product',0,100,1250023,1250364,TO_TIMESTAMP('2012-09-24 09:01:29','YYYY-MM-DD HH24:MI:SS'),60,'Y','N',0,'LBRA','N','N',3000010,'N','Y','The manufacturer of the Product (used if different from the Business Partner / Vendor)','N',100)
;

-- 24/09/2012 9h1min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250364 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1250364
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3000421
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3000419
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3000424
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3000428
;

-- 24/09/2012 9h2min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3000425
;

UPDATE AD_SysConfig SET Value='370-trunk/018-FR-LBR_NFDI.sql' WHERE AD_SysConfig_ID=1100006;