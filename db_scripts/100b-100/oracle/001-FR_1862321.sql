-- FR [ 1862321 ] Observações Nota Fiscal
-- ALTER TABLE
ALTER TABLE adempiere.C_BPartner ADD lbr_NFDescription nvarchar2(255) NULL;
ALTER TABLE adempiere.C_Order ADD lbr_NFDescription nvarchar2(255) NULL;
-- AD_ELEMENT
INSERT INTO ADEMPIERE.AD_ELEMENT(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1000229, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'lbr_NFDescription', 'LBRA', 'Nota Fiscal Description', 'Nota Fiscal Description', 'Description Printed on Nota Fiscal', 'Description Printed on Nota Fiscal', NULL, NULL, NULL, NULL);
-- AD_COLUMN
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000592, 0, 0, 'Y', sysdate, sysdate, 100, 100, 'Nota Fiscal Description', 'Description Printed on Nota Fiscal', 'Description Printed on Nota Fiscal', 0, 'LBRA', 'lbr_NFDescription', 291, 10, NULL, NULL, 255, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000229, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000593, 0, 0, 'Y', sysdate, sysdate, 100, 100, 'Nota Fiscal Description', 'Description Printed on Nota Fiscal', 'Description Printed on Nota Fiscal', 0, 'LBRA', 'lbr_NFDescription', 259, 10, NULL, NULL, 255, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000229, NULL, 'N', 'N', NULL, NULL);
-- AD_FIELD
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000398, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Nota Fiscal Description', 'Description Printed on Nota Fiscal', 'Description Printed on Nota Fiscal', 'Y', 223, 1000592, 1000000, 'Y', NULL, 255, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000399, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Nota Fiscal Description', 'Description Printed on Nota Fiscal', 'Description Printed on Nota Fiscal', 'Y', 186, 1000593, 1000000, 'Y', NULL, 255, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);
-- Callout - AD_Column 2762
UPDATE AD_Column SET Callout = 'org.compiere.model.CalloutOrder.bPartner;org.adempierelbr.callout.CalloutOrder.NFDescription' WHERE AD_Column_ID = 2762;

exit
