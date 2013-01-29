/*
http://code.google.com/p/oseb/ - NT2012.003b
Mario Grigioni - 28/08/2012, mgrigioni
*/

DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID IN (SELECT AD_Ref_List_ID FROM AD_Ref_List WHERE AD_Reference_ID=1100004);

DELETE FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value LIKE '595';
DELETE FROM AD_Ref_List WHERE AD_Reference_ID=1100004 AND Value LIKE '596';

INSERT INTO AD_REF_LIST VALUES ('1250264','0','0','Y',NOW(),'0',NOW(),'0','150','150 Autorizado o uso da NF-e, autorização fora de prazo',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250265','0','0','Y',NOW(),'0',NOW(),'0','151','151 Cancelamento de NF-e homologado fora de prazo',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250266','0','0','Y',NOW(),'0',NOW(),'0','479','479 Rejeição: Emissor em situação irregular perante o fisco',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250267','0','0','Y',NOW(),'0',NOW(),'0','480','480 Rejeição: CNPJ da Chave de acesso da NF-e informada diverge do CNPJ do emitente',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250268','0','0','Y',NOW(),'0',NOW(),'0','481','481 Rejeição: UF da Chave de acesso diverge do código da UF informada',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250269','0','0','Y',NOW(),'0',NOW(),'0','482','482 Rejeição: AA da Chave de acesso inválida',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250270','0','0','Y',NOW(),'0',NOW(),'0','483','483 Rejeição: MM da chave de acesso inválido',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250271','0','0','Y',NOW(),'0',NOW(),'0','484','484 Rejeição: DPEC com tipo de emissão diferente de “4” (posição 35 da Chave de Acesso)',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250272','0','0','Y',NOW(),'0',NOW(),'0','485','485 Rejeição: Número de DPEC já existe no cadastro de DPEC',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250273','0','0','Y',NOW(),'0',NOW(),'0','486','486 Rejeição: DPEC não localizada para o número de registro de DPEC informado',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250274','0','0','Y',NOW(),'0',NOW(),'0','487','487 Rejeição: Nenhuma DPEC localizada para a chave de acesso informada',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250275','0','0','Y',NOW(),'0',NOW(),'0','488','488 Rejeição: Requisitante de Consulta não tem o mesmo CNPJ base do emissor da DPEC',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250278','0','0','Y',NOW(),'0',NOW(),'0','656','656 Rejeição: Consumo indevido',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250279','0','0','Y',NOW(),'0',NOW(),'0','660','660 Rejeição: CFOP de Combustível e não informado grupo de combustível da NF-e',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250280','0','0','Y',NOW(),'0',NOW(),'0','661','661 Rejeição: NF-e já existente para o número da DPEC informada',NULL,'1100004',NULL,NULL,'LBRA');
INSERT INTO AD_REF_LIST VALUES ('1250281','0','0','Y',NOW(),'0',NOW(),'0','662','662 Rejeição: Numeração da DPEC está inutilizada na Base de Dados da SEFAZ',NULL,'1100004',NULL,NULL,'LBRA');

INSERT INTO AD_Ref_List_Trl 
(SELECT ad_ref_list_id,'pt_BR',ad_client_id,ad_org_id,isactive,created,createdby,updated,updatedby,name,description,'Y' FROM AD_Ref_List WHERE AD_Reference_ID=1100004);

UPDATE AD_SysConfig SET Value='370-trunk/012-FR-Issue30.sql' WHERE AD_SysConfig_ID=1100006;