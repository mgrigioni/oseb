/*
http://code.google.com/p/oseb/issues/detail?id=2&can=1
Mario Grigioni - 09/03/2012, mgrigioni
*/

UPDATE AD_Element SET ColumnName = 'lbr_ContatoNFe_ID' WHERE AD_Element_ID=1120002;
UPDATE AD_Column SET ColumnName = 'lbr_ContatoNFe_ID' WHERE AD_Column_ID=1120014;
ALTER TABLE AD_OrgInfo RENAME COLUMN LBR_CONTATONFE TO LBR_CONTATONFE_ID;

UPDATE AD_SysConfig SET Value='370-trunk/001-BF-Issue.sql' WHERE AD_SysConfig_ID=1100006;

EXIT