UPDATE cfg_configurationcountry SET RegExFiscalNumber = '^(AO)?\d{10,30}$' where Oid = '9655510a-ff58-461e-9719-c037058f10ed';

DROP VIEW IF EXISTS view_documentfinancepayment;

alter table [sys_configurationpoledisplay] ADD [COM] nvarchar(10);

CREATE VIEW view_documentfinancepayment AS
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