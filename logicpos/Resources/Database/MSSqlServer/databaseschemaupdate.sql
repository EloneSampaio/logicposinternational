GO
if not exists (select * from cfg_configurationpreferenceparameter WHERE [Oid] = 'bc0bc5df-4c01-462a-81b7-9051a7869574')
INSERT INTO cfg_configurationpreferenceparameter (Oid,Disabled,Ord,Code,Token,Value,ValueTip,Required,RegEx,ResourceString,ResourceStringInfo,FormType,FormPageNo,InputType) VALUES ('bc0bc5df-4c01-462a-81b7-9051a7869574',NULL,590,590,'USE_CC_DAILY_TICKET','False','true | false',1,'RegexBoolean','prefparam_use_ccdailyticket',NULL,2,1,3);
GO
UPDATE cfg_configurationcountry SET RegExFiscalNumber = '^[A-Za-z0-9]+' where Oid = '9655510a-ff58-461e-9719-c037058f10ed'
GO
ALTER VIEW view_documentfinancepayment AS
	SELECT 
		ftp.Oid AS ftpOid,
		ftp.Code AS ftpCode,
		ftp.Designation AS ftpDesignation,
		ftp.ResourceString AS ftpResourceString,
		ftp.ResourceStringReport AS ftpResourceStringReport,
		ftm.Oid AS ftmOid,
		ftm.Code AS ftmCode,
		ftm.Designation AS ftmDesignation,
		ftm.Credit AS ftmCredit,
		fma.Oid AS fmaOid,
		fma.CreatedAt AS fmaCreatedAt,
		fma.DocumentNumber AS fmaDocumentNumber,
		fma.DocumentDate AS fmaDocumentDate,
		fma.TotalGross AS fmaTotalGross,
		fma.TotalDiscount AS fmaTotalDiscount,
		fma.TotalTax AS fmaTotalTax,
		fma.TotalFinal AS fmaTotalFinal,
		fma.TotalFinalRound AS fmaTotalFinalRound,
		fma.Payed AS fmaPayed,
		fma.PayedDate AS fmaPayedDate,
		fma.EntityOid AS fmaEntityOid,
		fma.Notes AS fmaNotes,
		fpa.Oid AS fpaOid,
		fpa.PaymentRefNo AS fpaPaymentRefNo,
		fpa.PaymentType AS fpaPaymentType,
		fpa.PaymentStatus AS fpaPaymentStatus,
		fpa.PaymentStatusDate AS fpaPaymentStatusDate,
		fpa.PaymentMechanism AS fpaPaymentMechanism,
		fpa.TaxPayable AS fpaTaxPayable,
		fpa.PaymentAmount AS fpaPaymentAmount,
		fmp.Ord AS fmpOrd,
		fmp.CreditAmount AS fmpCreditAmount,
		fmp.DebitAmount AS fmpDebitAmount,
		fpa.PaymentDate AS fpaPaymentDate,
		fpa.ExtendedValue AS fpaExtendedValue,
		fpa.DocumentDate AS fpaDocumentDate,
		fpa.ExchangeRate AS fpaExchangeRate,
		fpa.Notes AS fpaNotes,
		cus.Oid AS cusOid,
		cus.Code AS cusCode,
		cus.Name AS cusName,
		cus.Address AS cusAddress,
		cus.ZipCode AS cusZipCode,
		cus.City AS cusCity,        
		cus.Locality AS cusLocality,
		cco.Designation AS ccoDesignation,
		cus.FiscalNumber AS cusFiscalNumber,
		cpm.Oid AS cpmOid,
		cpm.Code AS cpmCode,
		cpm.Designation AS cpmDesignation,
		cpm.Acronym AS cpmAcronym,
		cur.Designation AS curDesignation,
		cur.Acronym AS curAcronym,
		cur.Symbol AS curSymbol
	FROM
		((((((((fin_documentfinancemaster fma
		left join fin_documentfinancemasterpayment fmp ON ((fmp.DocumentFinanceMaster = fma.Oid)))
		left join fin_documentfinancepayment fpa ON ((fpa.Oid = fmp.DocumentFinancePayment)))
		left join fin_documentfinancetype ftp ON ((ftp.Oid = fpa.DocumentType)))
		left join fin_documentfinancetype ftm ON ((ftm.Oid = fma.DocumentType)))
		left join fin_configurationpaymentmethod cpm ON ((cpm.Oid = fpa.PaymentMethod)))
		left join erp_customer cus ON ((cus.Oid = fpa.EntityOid)))
		left join cfg_configurationcurrency cur ON ((cur.Oid = fpa.Currency)))
		left join cfg_configurationcountry cco ON ((cco.Oid = cus.Country)))
;
GO
ALTER VIEW view_documentfinance AS
    SELECT 
        ft.Oid AS ftOid,
        ft.Ord AS ftDocumentTypeOrd,
        ft.Code AS ftDocumentTypeCode,
        ft.Designation AS ftDocumentTypeDesignation,
        ft.ResourceString AS ftDocumentTypeResourceString,
        ft.Acronym AS ftDocumentTypeAcronym,
        ft.ResourceStringReport AS ftDocumentTypeResourceStringReport,
        ft.Credit AS ftCredit,
        ft.WayBill AS ftWayBill,
        ft.SaftAuditFile AS ftSaftAuditFile,
        ft.SaftDocumentType AS ftSaftDocumentType,
        fm.Oid AS fmOid,
        fm.Date AS fmDate,
        fm.DocumentNumber AS fmDocumentNumber,
        fm.DocumentDate AS fmDocumentDate,
        fm.SystemEntryDate AS fmSystemEntryDate,
        fm.TransactionID AS fmTransactionID,
        fm.ShipToDeliveryID AS fmShipToDeliveryID,
        fm.ShipToDeliveryDate AS fmShipToDeliveryDate,
        fm.ShipToWarehouseID AS fmShipToWarehouseID,
        fm.ShipToLocationID AS fmShipToLocationID,
        fm.ShipToAddressDetail AS fmShipToAddressDetail,
        fm.ShipToCity AS fmShipToCity,
        fm.ShipToPostalCode AS fmShipToPostalCode,
        fm.ShipToRegion AS fmShipToRegion,
        fm.ShipToCountry AS fmShipToCountry,
        fm.ShipFromDeliveryID AS fmShipFromDeliveryID,
        fm.ShipFromDeliveryDate AS fmShipFromDeliveryDate,
        fm.ShipFromWarehouseID AS fmShipFromWarehouseID,
        fm.ShipFromLocationID AS fmShipFromLocationID,
        fm.ShipFromAddressDetail AS fmShipFromAddressDetail,
        fm.ShipFromCity AS fmShipFromCity,
        fm.ShipFromPostalCode AS fmShipFromPostalCode,
        fm.ShipFromRegion AS fmShipFromRegion,
        fm.ShipFromCountry AS fmShipFromCountry,
        fm.MovementStartTime AS fmMovementStartTime,
        fm.MovementEndTime AS fmMovementEndTime,
        fm.ATDocCodeID AS fmATDocCodeID,
        fm.DocumentCreatorUser AS fmDocumentCreatorUser,
        fm.DocumentStatusStatus AS fmDocumentStatusStatus,
        fm.Payed AS fmPayed,
        fm.PayedDate AS fmPayedDate,
        fm.TotalNet AS fmTotalNet,
        fm.TotalGross AS fmTotalGross,
        fm.TotalDiscount AS fmTotalDiscount,
        fm.TotalTax AS fmTotalTax,
        fm.TotalFinal AS fmTotalFinal,
        fm.TotalFinalRound AS fmTotalFinalRound,
        fm.TotalDelivery AS fmTotalDelivery,
        fm.TotalChange AS fmTotalChange,
        fm.Discount AS fmDiscount,
        fm.DiscountFinancial AS fmDiscountFinancial,
        fm.ExchangeRate AS fmExchangeRate,
        fm.EntityOid AS fmEntity,
        fm.EntityInternalCode AS fmEntityInternalCode,
        cu.Ord AS cuEntityOrd,
        cu.Code AS cuEntityCode,
        cu.Hidden AS cuEntityHidden,
        fm.EntityName AS fmEntityName,
        fm.EntityAddress AS fmEntityAddress,
        fm.EntityZipCode AS fmEntityZipCode,
		fm.EntityLocality AS fmEntityLocality,
        fm.EntityCity AS fmEntityCity,
        fm.EntityCountry AS fmEntityCountryCode2,
        fm.EntityFiscalNumber AS fmEntityFiscalNumber,
        fm.Notes AS fmNotes,
        fm.SourceOrderMain AS fmSourceOrderMain,
        fm.DocumentParent AS fmDocumentParent,
        fm.DocumentType AS fmDocumentType,
        fm.DocumentSerie AS fmDocumentSerie,
        pm.Oid AS fmPaymentMethod,
        pm.Ord AS pmPaymentMethodOrd,
        pm.Code AS pmPaymentMethodCode,
        pm.Designation AS pmPaymentMethodDesignation,
        pm.Token AS pmPaymentMethodToken,
        fm.PaymentCondition AS fmPaymentCondition,
        pc.Ord AS pcPaymentConditionOrd,
        pc.Code AS pcPaymentConditionCode,
        pc.Designation AS pcPaymentConditionDesignation,
        pc.Acronym AS pcPaymentConditionAcronym,
        cc.Oid AS ccCountry,
        cc.Ord AS ccCountryOrd,
        cc.Code AS ccCountryCode,
        cc.Designation AS ccCountryDesignation,
        fm.Currency AS fmCurrency,
        cr.Ord AS crCurrencyOrd,
        cr.Code AS crCurrencyCode,
        cr.Designation AS crCurrencyDesignation,
        cr.Acronym AS crCurrencyAcronym,
        af.Oid AS afFamily,
        af.Ord AS afFamilyOrd,
        af.Code AS afFamilyCode,
        af.Designation AS afFamilyDesignation,
        sf.Oid AS sfSubFamily,
        sf.Ord AS sfSubFamilyOrd,
        sf.Code AS sfSubFamilyCode,
        sf.Designation AS sfSubFamilyDesignation,
        fd.Oid AS fdOid,
        fd.Article AS fdArticle,
        fd.Ord AS fdOrd,
        fd.Code AS fdCode,
        fd.Designation AS fdDesignation,
        fd.Quantity AS fdQuantity,
        fd.UnitMeasure AS fdUnitMeasure,
        fd.Price AS fdPrice,
        (fd.Price - ((fd.Price * fd.Discount) / 100)) AS fdPriceWithDiscount,
        fd.Vat AS fdVat,
        fd.Discount AS fdDiscount,
        ar.PriceWithVat AS arPriceWithVat,
        fd.TotalNet AS fdTotalNet,
        fd.TotalGross AS fdTotalGross,
        fd.TotalDiscount AS fdTotalDiscount,
        fd.TotalTax AS fdTotalTax,
        fd.TotalFinal AS fdTotalFinal,
        fd.VatExemptionReason AS fdVatExemptionReason,
        fd.VatExemptionReasonDesignation AS fdVatExemptionReasonDesignation,
        cx.Acronym AS cxAcronym,
        fd.Token1 AS fdToken1,
        fd.Token2 AS fdToken2,
        cv.Ord AS cfVatOrd,
        cv.Code AS cfVatCode,
        cv.Designation AS cfVatDesignation,
        cv.TaxType AS cvTaxType,
        cv.TaxCode AS cvTaxCode,
        cv.TaxCountryRegion AS cvTaxCountryRegion,
        cv.TaxExpirationDate AS cvTaxExpirationDate,
        cv.TaxDescription AS cvTaxDescription,
        ud.Oid AS udUserDetail,
        ud.Ord AS udUserDetailOrd,
        ud.Code AS udUserDetailCode,
        ud.Name AS udUserDetailName,
        tr.Oid AS trTerminal,
        tr.Ord AS trTerminalOrd,
        tr.Code AS trTerminalCode,
        tr.Designation AS trTerminalDesignation,
        cp.Oid AS cpPlace,
        cp.Ord AS cpPlaceOrd,
        cp.Code AS cpPlaceCode,
        cp.Designation AS cpPlaceDesignation,
        dm.PlaceTable AS dmPlaceTable,
        ct.Ord AS ctPlaceTableOrd,
        ct.Code AS ctPlaceTableCode,
        ct.Designation AS ctPlaceTableDesignation,
        cg.Designation AS cgDesignation,
        cg.Commission AS cgCommission
    FROM
        ((((((((((((((((((fin_documentfinancemaster fm
        LEFT JOIN fin_documentfinancedetail fd ON ((fm.Oid = fd.DocumentMaster)))
        LEFT JOIN fin_documentfinancetype ft ON ((fm.DocumentType = ft.Oid)))
        LEFT JOIN fin_article ar ON ((ar.Oid = fd.Article)))
        LEFT JOIN fin_articlefamily af ON ((af.Oid = ar.Family)))
        LEFT JOIN fin_articlesubfamily sf ON ((sf.Oid = ar.SubFamily)))
        LEFT JOIN fin_configurationvatrate cv ON ((cv.Oid = fd.VatRate)))
        LEFT JOIN fin_configurationvatexemptionreason cx ON ((cx.Oid = fd.VatExemptionReason)))
        LEFT JOIN fin_documentordermain dm ON ((fm.SourceOrderMain = dm.Oid)))
        LEFT JOIN pos_configurationplacetable ct ON ((dm.PlaceTable = ct.Oid)))
        LEFT JOIN pos_configurationplace cp ON ((ct.Place = cp.Oid)))
        LEFT JOIN fin_configurationpaymentmethod pm ON ((fm.PaymentMethod = pm.Oid)))
        LEFT JOIN fin_configurationpaymentcondition pc ON ((pc.Oid = fm.PaymentCondition)))
        LEFT JOIN cfg_configurationcountry cc ON ((fm.EntityCountry = cc.Code2)))
        LEFT JOIN cfg_configurationcurrency cr ON ((fm.Currency = cr.Oid)))
        LEFT JOIN sys_userdetail ud ON ((fm.UpdatedBy = ud.Oid)))
        LEFT JOIN pos_usercommissiongroup cg ON ((cg.Oid = ud.CommissionGroup)))
        LEFT JOIN pos_configurationplaceterminal tr ON ((fm.UpdatedWhere = tr.Oid)))
        LEFT JOIN erp_customer cu ON ((fm.EntityOid = cu.Oid)))
;
GO
alter table [sys_configurationpoledisplay] ADD [COM] nvarchar(10);
GO
