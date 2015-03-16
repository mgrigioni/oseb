INSERT INTO AD_SYSCONFIG VALUES
(SELECT 1250000,0,0,sysdate,sysdate,0,0,'Y','LBR_ALLOW_REACTIVATE_NFE_PROCESSED','N','Permite reativar uma NFe Processada','LBRA','C');

UPDATE AD_SysConfig SET Value='370-trunk/008-FR-Issue20.sql' WHERE AD_SysConfig_ID=1100006;

EXIT