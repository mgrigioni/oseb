/*
http://code.google.com/p/oseb/
Mario Grigioni - 17/01/2013, mgrigioni
*/

-- 17/01/2013 11h26min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2013-01-17 11:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121320
;

-- 17/01/2013 11h26min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2013-01-17 11:26:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121321
;

-- 17/01/2013 11h26min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2013-01-17 11:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121322
;

-- 17/01/2013 11h26min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2013-01-17 11:26:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121323
;

-- 17/01/2013 11h26min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2013-01-17 11:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121324
;

-- 17/01/2013 11h27min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,Help,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N','Defines the Product Source',1000028,0,1000031,'Defines the Product Source',0,0,'Y','LBRA','Product Source',0,'N',1250025,1000254,'lbr_ProductSource','N',TO_DATE('2013-01-17 11:26:58','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2013-01-17 11:26:58','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',1,100,'Y','N','N','N','N','N','Y')
;

-- 17/01/2013 11h27min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250025 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/01/2013 11h27min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD lbr_ProductSource CHAR(1) DEFAULT NULL 
;

UPDATE LBR_NotaFiscalLine SET lbr_ProductSource=SUBSTR(lbr_TaxStatus,1,1);
UPDATE LBR_NotaFiscalLine SET lbr_TaxStatus=SUBSTR(lbr_TaxStatus,2,2);

UPDATE C_InvoiceLine SET lbr_TaxStatus=SUBSTR(lbr_TaxStatus,2,2);
UPDATE C_OrderLine SET lbr_TaxStatus=SUBSTR(lbr_TaxStatus,2,2);


-- 17/01/2013 11h47min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2013-01-17 11:47:14','YYYY-MM-DD HH24:MI:SS'),'Y','DE',0,100,1250024,1250367,TO_DATE('2013-01-17 11:47:14','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000030,'N','Y','N',100)
;

-- 17/01/2013 11h47min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250367 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/01/2013 11h47min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2013-01-17 11:47:15','YYYY-MM-DD HH24:MI:SS'),'Y','Product Source','Defines the Product Source',0,100,1250025,1250368,TO_DATE('2013-01-17 11:47:15','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000030,'N','Y','Defines the Product Source','N',100)
;

-- 17/01/2013 11h47min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250368 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250366
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250367
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250369
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250368
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250322
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250323
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250324
;

-- 17/01/2013 11h49min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250325
;

-- 17/01/2013 11h49min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1250295
;

-- 17/01/2013 11h49min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1250291
;

-- 17/01/2013 11h49min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1250292
;

-- 17/01/2013 11h49min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1250297
;

-- 17/01/2013 11h50min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_DATE('2013-01-17 11:50:31','YYYY-MM-DD HH24:MI:SS'),'Y','DE',0,100,1250024,1250371,TO_DATE('2013-01-17 11:50:31','YYYY-MM-DD HH24:MI:SS'),22,'Y','N',0,'LBRA','N','N',1000021,'N','Y','N',100)
;

-- 17/01/2013 11h50min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250371 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/01/2013 11h50min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy) VALUES (TO_DATE('2013-01-17 11:50:32','YYYY-MM-DD HH24:MI:SS'),'Y','Product Source','Defines the Product Source',0,100,1250025,1250372,TO_DATE('2013-01-17 11:50:32','YYYY-MM-DD HH24:MI:SS'),1,'Y','N',0,'LBRA','N','N',1000021,'N','Y','Defines the Product Source','N',100)
;

-- 17/01/2013 11h50min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250372 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/01/2013 11h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250370
;

-- 17/01/2013 11h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250371
;

-- 17/01/2013 11h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1250373
;

-- 17/01/2013 11h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250372
;

-- 17/01/2013 11h51min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1250372
;

-- 17/01/2013 11h51min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1250151
;

-- 17/01/2013 11h51min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1250152
;

-- 17/01/2013 11h51min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1250153
;

-- 17/01/2013 11h51min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1250154
;

-- 17/01/2013 11h57min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1000029, AD_Reference_ID=17, FieldLength=2,Updated=TO_DATE('2013-01-17 11:57:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000701
;

-- 17/01/2013 11h57min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine MODIFY lbr_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- 17/01/2013 11h58min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1000029, AD_Reference_ID=17, FieldLength=2,Updated=TO_DATE('2013-01-17 11:58:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000656
;

-- 17/01/2013 11h58min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine MODIFY lbr_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

-- 17/01/2013 11h58min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1000029, AD_Reference_ID=17, FieldLength=2,Updated=TO_DATE('2013-01-17 11:58:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000654
;

-- 17/01/2013 11h58min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_OrderLine MODIFY lbr_TaxStatus NVARCHAR2(2) DEFAULT NULL 
;

UPDATE AD_SysConfig SET Value='370-trunk/017-FR-Issue36_1.sql' WHERE AD_SysConfig_ID=1100006;

EXIT