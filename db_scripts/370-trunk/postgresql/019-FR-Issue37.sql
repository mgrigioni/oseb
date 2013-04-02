/*
http://code.google.com/p/oseb/issues/detail?id=37&can=1
Mario Grigioni - 02/04/2013, mgrigioni
*/

ALTER TABLE LBR_CCE RENAME TO LBR_EVENTONFE;
ALTER TABLE LBR_EVENTONFE RENAME COLUMN LBR_CCE_ID TO LBR_EVENTONFE_ID;

UPDATE AD_Sequence SET Name='LBR_EventoNFe', Description='Table LBR_EventoNFe' WHERE Name='LBR_CCe';

UPDATE AD_Sequence SET Name='DocumentNo_LBR_EventoNFe', Description='DocumentNo/Value for Table LBR_EventoNFe' 
WHERE Name='DocumentNo_LBR_CCe';

UPDATE AD_Workflow SET Value='Process_LBR_EventoNFe', Name='Process_LBR_EventoNFe',
Description='(Standard Process Evento NFe)' WHERE AD_Workflow_ID=1120007;

UPDATE AD_Workflow_Trl SET Name='Process_LBR_EventoNFe',
Description='(Standard Process Evento NFe)' WHERE AD_Workflow_ID=1120007 AND AD_Language='pt_BR';

UPDATE AD_Table SET TableName='LBR_EventoNFe', Name='Evento NFe' WHERE AD_Table_ID=1120247;

UPDATE AD_Table_Trl SET Name='Evento NFe' WHERE AD_Table_ID=1120247 AND AD_Language='pt_BR';

UPDATE AD_Column SET ColumnName='LBR_EventoNFe_ID', Name='Evento NFe' WHERE AD_Column_ID=1122468;

UPDATE AD_Column_Trl SET Name='Evento NFe' WHERE AD_Column_ID=1122468 AND AD_Language='pt_BR';

UPDATE AD_Element SET ColumnName='LBR_EventoNFe_ID',Name='Evento NFe',PrintName='Evento NFe' WHERE AD_Element_ID=1120496;

UPDATE AD_Element_Trl SET Name='Evento NFe',PrintName='Evento NFe', Description='Registro do Evento da NFe' WHERE AD_Element_ID=1120496 AND AD_Language='pt_BR';

UPDATE AD_Window SET Name='Evento NFe' WHERE AD_Window_ID=1120053;

UPDATE AD_Window_Trl SET Name='Evento NFe' WHERE AD_Window_ID=1120053 AND AD_Language='pt_BR';

UPDATE AD_Tab SET Name='Evento NFe' WHERE AD_Tab_ID=1120049;

UPDATE AD_Tab_Trl SET Name='Evento NFe', Description='Evento NFe' WHERE AD_Tab_ID=1120049 AND AD_Language='pt_BR';

UPDATE AD_Menu SET Name='Evento NFe' WHERE AD_Window_ID=1120053;

UPDATE AD_Menu_Trl SET Name='Evento NFe' WHERE AD_Menu_ID IN (SELECT AD_Menu_ID FROM AD_Menu WHERE AD_Window_ID=1120053) AND AD_Language='pt_BR';

-- 01/04/2013 12h17min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Reference_ID,CreatedBy,Updated,IsActive,ValidationType,Name,Description,AD_Client_ID,Created,AD_Org_ID,UpdatedBy,EntityType,IsOrderByValue) VALUES (1250001,100,TO_TIMESTAMP('2013-04-01 12:17:24','YYYY-MM-DD HH24:MI:SS'),'Y','L','lbr_TpEvento','Código do evento NFe',0,TO_TIMESTAMP('2013-04-01 12:17:24','YYYY-MM-DD HH24:MI:SS'),0,100,'LBRA','N')
;

-- 01/04/2013 12h17min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1250001 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 01/04/2013 12h17min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250302,1250001,'110110','Carta de Correção',TO_TIMESTAMP('2013-04-01 12:17:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:17:53','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h17min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250302 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h18min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250303,1250001,'110111','Cancelamento',TO_TIMESTAMP('2013-04-01 12:18:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:18:21','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h18min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250303 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h18min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250304,1250001,'210200','Confirmação da Operação',TO_TIMESTAMP('2013-04-01 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:18:37','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h18min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250304 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h18min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250305,1250001,'210210','Ciência da Operação',TO_TIMESTAMP('2013-04-01 12:18:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:18:54','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h18min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250305 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h19min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250306,1250001,'210220','Desconhecimento da Operação',TO_TIMESTAMP('2013-04-01 12:19:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:19:10','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h19min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250306 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h19min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Ref_List_ID,AD_Reference_ID,Value,Name,Created,CreatedBy,Updated,UpdatedBy,AD_Org_ID,EntityType,IsActive,AD_Client_ID) VALUES (1250307,1250001,'210240','Operação não Realizada',TO_TIMESTAMP('2013-04-01 12:19:24','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:19:24','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y',0)
;

-- 01/04/2013 12h19min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1250307 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/04/2013 12h20min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,Description,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,DefaultValue,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('Y','Type of Event',1120247,0,1250001,0,0,'Y','LBRA','Event Type',0,'N',1250026,2334,'EventType','110110','N',TO_TIMESTAMP('2013-04-01 12:20:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-04-01 12:20:09','YYYY-MM-DD HH24:MI:SS'),'N',17,'N',6,100,'Y','N','N','N','N','N','Y')
;

-- 01/04/2013 12h20min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250026 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 01/04/2013 12h20min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_EventoNFe ADD COLUMN EventType VARCHAR(6) DEFAULT '110110' NOT NULL
;

-- 01/04/2013 12h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,IsReadOnly,CreatedBy) VALUES (TO_TIMESTAMP('2013-04-01 12:20:56','YYYY-MM-DD HH24:MI:SS'),'Y','Event Type','Type of Event',0,100,1250026,1250374,TO_TIMESTAMP('2013-04-01 12:20:56','YYYY-MM-DD HH24:MI:SS'),6,'Y','N',0,'LBRA','N','N',1120049,'N','Y','N',100)
;

-- 01/04/2013 12h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250374 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1250374
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1121210
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1121203
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1121192
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1121199
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1121206
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1121197
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1121200
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1121198
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1121208
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1121201
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1121202
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1121193
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1121194
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1121207
;

-- 01/04/2013 12h21min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1121205
;

-- 01/04/2013 12h21min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-01 12:21:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121210
;

-- 01/04/2013 12h23min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2013-04-01 12:23:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250374
;

UPDATE AD_SysConfig SET Value='370-trunk/019-FR-Issue37.sql' WHERE AD_SysConfig_ID=1100006;
