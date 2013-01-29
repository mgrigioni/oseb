/*
http://code.google.com/p/oseb/
Mario Grigioni - 19/12/2012, mgrigioni
*/

-- 18/12/2012 14h51min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (IsMandatory,AD_Table_ID,Version,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,Name,SeqNo,IsIdentifier,AD_Column_ID,AD_Element_ID,ColumnName,IsTranslated,Created,CreatedBy,Updated,IsParent,AD_Reference_ID,IsSyncDatabase,FieldLength,UpdatedBy,IsUpdateable,IsKey,IsSelectionColumn,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES ('N',1000028,0,1120016,0,0,'Y','LBRA','DE',0,'N',1250024,1120019,'LBR_DE_ID','N',TO_DATE('2012-12-18 14:51:51','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2012-12-18 14:51:51','YYYY-MM-DD HH24:MI:SS'),'N',18,'N',22,100,'Y','N','N','N','N','N','Y')
;

-- 18/12/2012 14h51min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1250024 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2012 14h51min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD LBR_DE_ID NUMBER(10) DEFAULT NULL 
;

-- 18/12/2012 14h57min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET AD_Column_ID=NULL,Updated=TO_DATE('2012-12-18 14:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000047
;

-- 18/12/2012 15h7min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET AD_Column_ID=1250024, AD_Table_ID=1000028,Updated=TO_DATE('2012-12-18 15:07:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000047
;

-- 18/12/2012 15h7min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=3001674
;

-- 18/12/2012 15h7min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=3001674
;

-- 18/12/2012 15h8min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsUpdateable='N',Updated=TO_DATE('2012-12-18 15:08:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000557
;

-- 18/12/2012 15h8min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET SeqNo=1, IsIdentifier='Y',Updated=TO_DATE('2012-12-18 15:08:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000588
;

-- 18/12/2012 15h9min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (Created,IsActive,Name,Description,AD_Client_ID,UpdatedBy,AD_Column_ID,AD_Field_ID,Updated,DisplayLength,SortNo,IsDisplayed,IsEncrypted,AD_Org_ID,EntityType,SeqNo,IsSameLine,IsHeading,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,Help,IsReadOnly,CreatedBy,AD_Reference_ID,HideInListView,PreferredWidth) VALUES (TO_DATE('2012-12-18 15:09:06','YYYY-MM-DD HH24:MI:SS'),'Y','Nota Fiscal Line','Primary key table LBR_NotaFiscalLine',0,100,1000548,1250365,TO_DATE('2012-12-18 15:09:06','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','N',0,'LBRA',10,'N','N',3000047,'N','Y','Primary key table LBR_NotaFiscalLine','N',100,19,'N',0)
;

-- 18/12/2012 15h9min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1250365 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

update lbr_notafiscalline set lbr_de_id = 
(select nf.lbr_de_id from lbr_notafiscal nf where nf.lbr_notafiscal_id = lbr_notafiscalline.lbr_notafiscal_id);

delete from ad_field_trl where ad_field_id IN (select ad_field_id from ad_field where ad_column_id = 1120211);
delete from ad_field where ad_column_id = 1120211;

delete from ad_column_access where ad_column_id = 1120211;
delete from ad_column_trl where ad_column_id = 1120211;
delete from ad_column where ad_column_id = 1120211;

alter table lbr_notafiscal drop column LBR_DE_ID;

UPDATE AD_SysConfig SET Value='370-trunk/014-BF-Issue34.sql' WHERE AD_SysConfig_ID=1100006;

EXIT
