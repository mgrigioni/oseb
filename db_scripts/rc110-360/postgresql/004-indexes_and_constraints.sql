--- ADD MISSING INDEXES AND CONSTRAINTS
--- Mario Grigioni, 03/08/2010

CREATE UNIQUE INDEX NFLINETAX_TN ON LBR_NFLINETAX
  (
    LBR_NOTAFISCALLINE_ID, LBR_NFLINETAX_ID
  );
 
CREATE INDEX LBR_NFLINETAX_NFLINE ON LBR_NFLINETAX
  (
    LBR_NOTAFISCALLINE_ID
  );

  
DELETE FROM LBR_NFLINETAX WHERE LBR_NOTAFISCALLINE_ID NOT IN (SELECT LBR_NOTAFISCALLINE_ID FROM LBR_NOTAFISCALLINE);  
ALTER TABLE LBR_NFLINETAX ADD CONSTRAINT LBR_NOTAFISCALLINE_TAX FOREIGN KEY (LBR_NOTAFISCALLINE_ID) REFERENCES LBR_NOTAFISCALLINE;

  
CREATE UNIQUE INDEX NFTAX_TN ON LBR_NFTAX
  (
    LBR_NOTAFISCAL_ID, LBR_NFTAX_ID
  );
  

DELETE FROM LBR_NFTAX WHERE LBR_NOTAFISCAL_ID NOT IN (SELECT LBR_NOTAFISCAL_ID FROM LBR_NOTAFISCAL);
ALTER TABLE LBR_NFTAX ADD CONSTRAINT LBR_NOTAFISCAL_TAX FOREIGN KEY (LBR_NOTAFISCAL_ID) REFERENCES LBR_NOTAFISCAL;


CREATE INDEX LBR_NOTAFISCALLINE_NF ON LBR_NOTAFISCALLINE
  (
    LBR_NOTAFISCAL_ID
  );

CREATE UNIQUE INDEX NOTAFISCALLINE_TN ON LBR_NOTAFISCALLINE
  (
    LBR_NOTAFISCALLINE_ID, LBR_NOTAFISCAL_ID
  );
  
  
DELETE FROM LBR_NOTAFISCALLINE WHERE LBR_NOTAFISCAL_ID NOT IN (SELECT LBR_NOTAFISCAL_ID FROM LBR_NOTAFISCAL);
ALTER TABLE LBR_NOTAFISCALLINE ADD CONSTRAINT LBR_NOTAFISCAL_LINE FOREIGN KEY (LBR_NOTAFISCAL_ID) REFERENCES LBR_NOTAFISCAL;


CREATE UNIQUE INDEX TAXGROUP_TN ON LBR_TAXGROUP
  (
    LBR_TAXGROUP_ID, NAME, AD_CLIENT_ID
  );


DELETE FROM LBR_TAXLINE WHERE LBR_TAX_ID NOT IN (SELECT LBR_TAX_ID FROM LBR_TAX);
ALTER TABLE LBR_TAXLINE ADD CONSTRAINT LBR_TAXLINE_LBR_TAX_FK1 FOREIGN KEY (LBR_TAX_ID) REFERENCES LBR_TAX;


DELETE FROM LBR_CFOPLINE WHERE LBR_CFOP_ID NOT IN (SELECT LBR_CFOP_ID FROM LBR_CFOP);
ALTER TABLE LBR_CFOPLINE ADD CONSTRAINT LBR_CFOPLINE_FK1 FOREIGN KEY (LBR_CFOP_ID) REFERENCES LBR_CFOP;

UPDATE AD_SysConfig SET Value='RC110-360/004-indexes_and_constraints.sql' WHERE AD_SysConfig_ID=1100006
;