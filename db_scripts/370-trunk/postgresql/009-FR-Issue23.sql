-- 14/08/2012 11h54min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Charge Amount',1000027,0,'The Charge Amount indicates the amount for an additional charge.',0,0,'Y','LBRA','Charge amount',0,'N',1250004,849,'ChargeAmt','N',TO_TIMESTAMP('2012-08-14 11:54:50','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2012-08-14 11:54:50','YYYY-MM-DD HH24:MI:SS'),'N',12,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 14/08/2012 11h54min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250004 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/08/2012 11h54min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN ChargeAmt NUMERIC DEFAULT NULL 
;

-- 14/08/2012 11h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 11:56:33','YYYY-MM-DD HH24:MI:SS'),'Y','Charge amount','Charge Amount',0,100,1250004,1250338,TO_TIMESTAMP('2012-08-14 11:56:33','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000020,'N','Y','The Charge Amount indicates the amount for an additional charge.','N',100)
;

-- 14/08/2012 11h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250338 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 11h59min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1000,IsDisplayed='Y' WHERE AD_Field_ID=1250338
;

-- 14/08/2012 12h0min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2012-08-14 12:00:08','YYYY-MM-DD HH24:MI:SS'),'Y','Charge amount','Charge Amount',0,100,1250004,1250344,TO_TIMESTAMP('2012-08-14 12:00:08','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000028,'N','Y','The Charge Amount indicates the amount for an additional charge.','N',100)
;

-- 14/08/2012 12h0min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250344 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/08/2012 12h0min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1000,IsDisplayed='Y' WHERE AD_Field_ID=1250344
;

-- 14/08/2012 12h0min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-08-14 12:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250344
;

-- 14/08/2012 12h0min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2012-08-14 12:00:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250338
;


UPDATE AD_SysConfig SET Value='370-trunk/009-FR-Issue23.sql' WHERE AD_SysConfig_ID=1100006;