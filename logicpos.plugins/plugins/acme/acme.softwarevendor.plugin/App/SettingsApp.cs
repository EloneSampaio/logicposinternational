namespace luaitech.softwarevendor.plugin.App
{
    public class SettingsApp
    {
        //Log4Net
        private static log4net.ILog _log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //App

        public static string SecretKey = "MIICXgIBAAKBgQDMQ6aJOziYyUTiitOG4qWJv+DhkPi3r4ab1c2LzU4TR3fZ6NX2RUmHrJqj56lkFrCDd2/zN6zvT26fsSiWlC4N20AIOJTPiTjpaXlor6bIqpeEAwrK0UvRPV3OrZ7s0j7cwKXOUqVWWdsS62fyA5qQEo9PsfrAHGpEOulVXIZr9QIDAQABAoGATa3weEHAPUJVYv2+gY5Ru7fvsnhqTZh/zWWafG8AIQ7Nwl3seHJTCziVun1QCtMiH2zdcxYaOwvvGuXJdLI3bLkuLZPsrjhLHbb6N/V2uPGiY+i6Hd2ss5zUFuh9AC196TpFqHjCn7R0/DBTv3KMwq9Q+A5AlECV4qZQDxZ7/KECQQD2F6c8lCkCooxsIRNB06j+QSENXv9Z5gtUFPhntr9/w/1GqIKk8xR+h91UMtf9iMVZm/Q4iM3vmZrDhHu+TobpAkEA1Hzld4bOjfgeSmSuTW5lV4/sNUMz8PzDYQYn/6Eca5fcxfBoR9zBqndOuN5Efm4uzvn/ztuF4ScdrXojmVvtLQJBAJm76wiIEhqISyrderc7r62uKCS/PMv/TwJm20uHOZhqalXyvTKofBwTaivIW3ASOh8hsu6CYAwXLDyKDfez/MkCQQC5egP634sxVWFrYpLbN//x/MkcfPq74obRDESh2IosSLUHeqAsCkBqghYPPMTg72CgfoySjgBA1poLMVAdr6ZJAkEAjMhKZbHZ1oig6vZy0bg1fOEPLAH5lHNXg4temzrYtINrHg5SIE4vfgLSZe9qdTal2jpSTT2BA+PccpoHc+PSMQ==";


        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Vendor

        public static string AppSoftwareName = "LogicPos by LuaiTech";
        public static string AppCompanyName = "LuaiTech";
        public static string AppCompanyPhone = "+244 923 44 55";
        public static string AppCompanyEmail = "geral@luaitech.com";
        public static string AppCompanyWeb = "luaitech.com";
        public static string AppSoftwareVersion = string.Format("Desenvolvido por {0}© Vers. {{{0}}}", AppCompanyName);
        public static string AppSoftwareVersionFormat = string.Format("Desenvolvido por {0}© Vers. {{0}}", AppCompanyName);
        public static string AppSoftwareATWSTestModeCertificatePassword = "TESTEwebservice";
        public static string AppSoftwareATWSProdModeCertificatePassword = "YOUR_PASSWORD_HERE";

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Files/File Formats

        //FileFormat Used in SAF-T(PT)/Backups Etc
        public static string FileFormatDateTime = "yyyyMMdd_HHmmss";
        //filename_countrycode_version_date.extension
        public static string FileFormatSaftPT = "saf-t_{0}_{1}_{2}.xml";
        public static string FileFormatSaftAO = "saf-t_{0}_{1}_{2}.xml";

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //DataBase Backup System

        public static string BackupPassword = "LUAITECH";

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //SAF-T PT

        //SAF-T(PT) : Formats 
        public static int DocumentsPadLength = 6;
        //SAF-T(PT) : DateTime Formats 
        public static string DateTimeFormatDocumentDate = "yyyy-MM-dd";
        public static string DateTimeFormatCombinedDateTime = "yyyy-MM-ddTHH:mm:ss";
        public static string FinanceFinalConsumerFiscalNumber = "999999990";
        public static string FinanceFinalConsumerFiscalNumberDisplay = "---------";
        //SAF-T(PT) : Decimal Format
        public static string DecimalFormatSAFTPT = "0.00000000";
        public static string DecimalFormatGrossTotalSAFTPT = "0.00";
        //Used to Compare, Round first, Compare After
        public static int DecimalRoundTo = 2;
        //RSA Private Key :Sign Finance Documents used in SHA1SignMessage()
        public static string RsaPrivateKey = @"<RSAKeyValue>
  <Modulus></Modulus>
  <Exponent></Exponent>
  <P></P>
  <Q></Q>
  <DP></DP>
  <DQ></DQ>
  <InverseQ></InverseQ>
  <D></D>
</RSAKeyValue>";
        //SAFT-T XML Export Header
        public static string SaftProductID = string.Format("LogicPos/{0}", AppCompanyName);
        public static string SaftProductCompanyTaxID = "000000000";
        public static string SaftSoftwareCertificateNumber = "n31.1";
        public static string SaftVersionPrefix = "PT";
        public static string SaftVersion = "1.03_01";
        public static int HashControl = 1;
        public static string TaxAccountingBasis = "F";
        public static string SaftCurrencyCode = "EUR";
        public static int FinanceRuleSimplifiedInvoiceMaxTotal = 1000;
        public static int FinanceRuleSimplifiedInvoiceMaxTotalServices = 100;
        public static int FinanceRuleRequiredCustomerDetailsAboveValue = 1000;



        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //SAF-T AO

        //SAF-T(AO) : Formats 
        public static int DocumentsPadLengthAO = 6;
        //SAF-T(AO) : DateTime Formats 
        public static string DateTimeFormatDocumentDateAO = "yyyy-MM-dd";
        public static string DateTimeFormatCombinedDateTimeAO = "yyyy-MM-ddTHH:mm:ss";
        public static string FinanceFinalConsumerFiscalNumberAO = "999999990";
        public static string FinanceFinalConsumerFiscalNumberDisplayAO = "---------";
        //SAF-T(AO) : Decimal Format
        public static string DecimalFormatSAFTAO = "0.00000000";
        public static string DecimalFormatGrossTotalSAFTAO = "0.00";

        //RSA Private Key :Sign Finance Documents used in SHA1SignMessage()
        //01/11/2019
        public static string RsaPrivateKeyAO = @"<RSAKeyValue>
  <Modulus></Modulus>
  <Exponent></Exponent>
  <P></P>
  <Q></Q>
  <DP></DP>
  <DQ></DQ>
  <InverseQ></InverseQ>
  <D></D>
</RSAKeyValue>";

        //SAFT-T XML Export Header
        public static string SaftProductIDAO = string.Format("LogicPos/{0}", AppCompanyName);
        public static string SaftProductCompanyTaxIDAO = "1000000000";
        public static string SaftSoftwareCertificateNumberAO = "31.1/21"; //numero do certificado entregue pela agt
        public static string SaftVersionPrefixAO = "AO";
        public static string SaftVersionAO = "1.01_01";
        //Versão da Chave Privada utilizada na criação da Assinatura 
        public static int HashControlAO = 1;
        //C — Contabilidade;
        //E — Faturação emitida por terceiros;
        //F — Faturação;
        //I — Contabilidade integrada com a faturação;
        //P — Faturação parcial;
        //R — Recibos (a);
        //S — Autofaturação;
        //T — Documentos de transporte (a).	
        public static string TaxAccountingBasisAO = "F";
        //Currency Code
        public static string SaftCurrencyCodeAO = "AOA";

        //SAFT(AO) : Country Rules
        //Retalhistas e vendedores ambulantes é permitida a emissão de faturas simplificadas a não sujeitos passivos, 
        //Até limite de 1000,00€ e a todas as outras atividades é apenas permitida a emissão de faturas até aos 100,00€
        public static int FinanceRuleSimplifiedInvoiceMaxTotalAO = 1000;
        //Services
        public static int FinanceRuleSimplifiedInvoiceMaxTotalServicesAO = 100;
        //This rule is to force fill Customer details if total document value is Greater or Equal to
        public static int FinanceRuleRequiredCustomerDetailsAboveValueAO = 1000;

        //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        //Series

        //Use Alphanumeric Random|Or Numeric Sequential 
        public static bool DocumentFinanceSeriesGenerationFactoryUseRandomAcronymPrefix = false;
        public static string DocumentFinanceSeriesGenerationFactoryAcronymLastSerieFormat = "000";
    }
}
