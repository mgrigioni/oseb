/*
http://code.google.com/p/oseb/issues/detail?id=40&can=1
Mario Grigioni - 10/05/2013, mgrigioni
*/

-- 01/10/2013 8h47min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='3 - Domestic with more than 40 percent Imported and less than 70 percent',Updated=TO_TIMESTAMP('2013-10-01 08:47:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121320
;

-- 01/10/2013 8h47min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121320
;

-- 01/10/2013 8h47min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='3 - Produto nacional com conteúdo importado acima de 40% e inferior ou igual a 70%',Updated=TO_TIMESTAMP('2013-10-01 08:47:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121320 AND AD_Language='pt_BR'
;

-- 01/10/2013 8h47min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250308,1000031,'8','8 - Domestic with more than 70 percent Imported',TO_TIMESTAMP('2013-10-01 08:47:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-01 08:47:53','YYYY-MM-DD HH24:MI:SS'),100,0,'U','Y',0)
;

-- 01/10/2013 8h47min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250308 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/10/2013 8h47min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2013-10-01 08:47:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250308
;

-- 01/10/2013 8h48min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%',Updated=TO_TIMESTAMP('2013-10-01 08:48:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1250308 AND AD_Language='pt_BR'
;

UPDATE AD_SysConfig SET Value='370-trunk/022-FR-Issue40.sql' WHERE AD_SysConfig_ID=1100006;