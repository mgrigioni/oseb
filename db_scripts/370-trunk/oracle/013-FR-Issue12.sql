/*
http://code.google.com/p/oseb/ - FR: NFS-e Ginfes
Mario Grigioni - 23/08/2012, mgrigioni
*/

-- 23/08/2012 9h21min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Reference_ID,CreatedBy,Updated,IsActive,ValidationType,Name,AD_Client_ID,Created,AD_Org_ID,UpdatedBy,EntityType,IsOrderByValue) VALUES (1250000,100,TO_DATE('2012-08-23 09:21:42','YYYY-MM-DD HH24:MI:SS'),'Y','L','LBR_NFeLot Model',0,TO_DATE('2012-08-23 09:21:42','YYYY-MM-DD HH24:MI:SS'),0,100,'LBRA','N')
;

-- 23/08/2012 9h21min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1250000 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 23/08/2012 9h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250261,1250000,'01','GINFES',TO_DATE('2012-08-23 09:59:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-08-23 09:59:51','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 23/08/2012 9h59min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250261 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/08/2012 10h0min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250262,1250000,'55','NFe',TO_DATE('2012-08-23 10:00:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-08-23 10:00:03','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 23/08/2012 10h0min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250262 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/08/2012 10h0min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='Ginfes',Updated=TO_DATE('2012-08-23 10:00:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250261
;

-- 23/08/2012 10h0min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1250261
;

-- 23/08/2012 10h0min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ginfes',Updated=TO_DATE('2012-08-23 10:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250261 AND AD_Language='pt_BR'
;

-- 23/08/2012 10h0min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2012-08-23 10:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250262 AND AD_Language='pt_BR'
;

-- 23/08/2012 10h1min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y',1100001,0,1250000,0,0,'Y','LBRA','ModelNo',0,'N',1250022,2000190,'ModelNo','''55''','N',TO_DATE('2012-08-23 10:01:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-08-23 10:01:06','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',2,100,'Y','N','N','N','N','N','Y')
;

-- 23/08/2012 10h1min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250022 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/08/2012 10h1min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFeLot ADD ModelNo NVARCHAR2(2) DEFAULT '55' NOT NULL
;

-- 23/08/2012 10h1min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2012-08-23 10:01:37','YYYY-MM-DD HH24:MI:SS'),'Y','ModelNo',0,100,1250022,1250363,TO_DATE('2012-08-23 10:01:37','YYYY-MM-DD HH24:MI:SS'),2,'Y','N',0,'LBRA','N','N',1100001,'N','Y','N',100)
;

-- 23/08/2012 10h1min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250363 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1250363
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1100025
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1100031
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1100035
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1250001
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1250000
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1100032
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1100034
;

-- 23/08/2012 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1100033
;

-- 30/08/2012 12h12min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@!''DR''',Updated=TO_DATE('2012-08-30 12:12:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250022
;

UPDATE AD_SysConfig SET Value='370-trunk/013-FR-Issue12.sql' WHERE AD_SysConfig_ID=1100006;

EXIT
