-- 13/03/2008 8h14min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000301,'LBR_DocSequence_ID',TO_DATE('2008-03-13 08:14:00','YYYY-MM-DD HH24:MI:SS'),100,'Defines the File Sequence','LBRA','Defines the File Sequence','Y','File Sequence','File Sequence',TO_DATE('2008-03-13 08:14:00','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 13/03/2008 8h14min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000301 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 13/03/2008 8h15min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,128,1000301,18,297,'LBR_DocSequence_ID',TO_DATE('2008-03-13 08:15:09','YYYY-MM-DD HH24:MI:SS'),100,'Defines the File Sequence','LBRA',22,'Defines the File Sequence','Y','N','N','N','N','N','N','N','N','N','Y','File Sequence',0,TO_DATE('2008-03-13 08:15:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000902)
;

-- 13/03/2008 8h15min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000902 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 13/03/2008 8h15min12s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BankAccount ADD LBR_DocSequence_ID NUMBER(10)
;

-- 13/03/2008 8h22min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000902,0,228,TO_DATE('2008-03-13 08:22:36','YYYY-MM-DD HH24:MI:SS'),100,'Defines the File Sequence',22,'LBRA','Defines the File Sequence','Y','Y','Y','N','N','N','N','N','File Sequence',TO_DATE('2008-03-13 08:22:36','YYYY-MM-DD HH24:MI:SS'),0,100,1000870)
;

-- 13/03/2008 8h22min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000870 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 13/03/2008 8h23min30s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2008-03-13 08:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000029
;

-- 13/03/2008 8h23min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsBillPrinted@=''Y''', IsSameLine='Y', SeqNo=200, AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-03-13 08:23:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000870
;

exit
