/*
http://code.google.com/p/oseb/issues/detail?id=40&can=1
Mario Grigioni - 10/05/2013, mgrigioni
*/

-- 16/05/2013 9h31min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutFCI.Product',Updated=TO_DATE('2013-05-16 09:31:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250037
;

-- 16/05/2013 9h31min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@C_Period_ID@=0',Updated=TO_DATE('2013-05-16 09:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250038
;

-- 16/05/2013 9h32min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@C_Period_ID@=0',Updated=TO_DATE('2013-05-16 09:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250039
;

-- 16/05/2013 9h32min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@C_Period_ID@=0',Updated=TO_DATE('2013-05-16 09:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250040
;

-- 16/05/2013 9h32min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2013-05-16 09:32:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1250001
;

-- 16/05/2013 9h32min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-05-16 09:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250383
;

-- 16/05/2013 9h33min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-05-16 09:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1250380
;

-- 16/05/2013 9h34min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_DATE('2013-05-16 09:34:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1250001
;

-- 16/05/2013 9h47min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@C_Period_ID@=0 | @Value@!''''',Updated=TO_DATE('2013-05-16 09:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250039
;

-- 16/05/2013 9h48min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@C_Period_ID@=0  | @Value@!''''',Updated=TO_DATE('2013-05-16 09:48:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1250038
;

UPDATE AD_SysConfig SET Value='370-trunk/021-FR-Issue40.sql' WHERE AD_SysConfig_ID=1100006;

EXIT