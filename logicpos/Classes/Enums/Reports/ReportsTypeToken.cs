﻿namespace logicpos.Classes.Enums
{
    //# Select to generate ReportsTypeToken
    //SELECT CONCAT(Token, ",") FROM sys_userpermissionitem WHERE Ord >= 4000 AND Ord < 5990 ORDER BY Ord;

    public enum ReportsTypeToken
    {
        // Sales Reports (Summary)
        REPORT_SALES_PER_FINANCE_DOCUMENT,
        REPORT_SALES_PER_DATE,
        REPORT_SALES_PER_USER,
        REPORT_SALES_PER_TERMINAL,
        REPORT_SALES_PER_CUSTOMER,
        REPORT_SALES_PER_PAYMENT_METHOD,
        REPORT_SALES_PER_PAYMENT_CONDITION,
        REPORT_SALES_PER_CURRENCY,
        REPORT_SALES_PER_COUNTRY,
        // Sales Report (Detail)
        REPORT_SALES_DETAIL_PER_FINANCE_DOCUMENT,
        REPORT_SALES_DETAIL_PER_DATE,
        REPORT_SALES_DETAIL_PER_USER,
        REPORT_SALES_DETAIL_PER_TERMINAL,
        REPORT_SALES_DETAIL_PER_CUSTOMER,
        REPORT_SALES_DETAIL_PER_PAYMENT_METHOD,
        REPORT_SALES_DETAIL_PER_PAYMENT_CONDITION,
        REPORT_SALES_DETAIL_PER_CURRENCY,
        REPORT_SALES_DETAIL_PER_COUNTRY,
        REPORT_SALES_DETAIL_PER_FAMILY,
        REPORT_SALES_DETAIL_PER_FAMILY_AND_SUBFAMILY,
        REPORT_SALES_DETAIL_PER_PLACE,
        REPORT_SALES_DETAIL_PER_PLACE_TABLE,
        // Sales Report (Detail/Grouped)
        REPORT_SALES_DETAIL_GROUP_PER_FINANCE_DOCUMENT,
        REPORT_SALES_DETAIL_GROUP_PER_DATE,
        REPORT_SALES_DETAIL_GROUP_PER_USER,
        REPORT_SALES_DETAIL_GROUP_PER_TERMINAL,
        REPORT_SALES_DETAIL_GROUP_PER_CUSTOMER,
        REPORT_SALES_DETAIL_GROUP_PER_PAYMENT_METHOD,
        REPORT_SALES_DETAIL_GROUP_PER_PAYMENT_CONDITION,
        REPORT_SALES_DETAIL_GROUP_PER_CURRENCY,
        REPORT_SALES_DETAIL_GROUP_PER_COUNTRY,
        REPORT_SALES_DETAIL_GROUP_PER_FAMILY,
        REPORT_SALES_DETAIL_GROUP_PER_FAMILY_AND_SUBFAMILY,
        REPORT_SALES_DETAIL_GROUP_PER_PLACE,
        REPORT_SALES_DETAIL_GROUP_PER_PLACE_TABLE,
        // Auxiliar Tables
        REPORT_LIST_FAMILY_SUBFAMILY_ARTICLES,
        REPORT_LIST_CUSTOMERS,
        // Others Reports
        REPORT_LIST_AUDIT_TABLE,
        REPORT_LIST_STOCK_MOVEMENTS,
        REPORT_LIST_CURRENT_ACCOUNT,
        /* IN008018 */
        REPORT_CUSTOMER_BALANCE_DETAILS,
        /* IN009010 */
        REPORT_CUSTOMER_BALANCE_SUMMARY,
        /* IN009204 */
        REPORT_COMPANY_BILLING,
        REPORT_LIST_USER_COMMISSION,
        //Not In DB/Not Implemented
        REPORT_SALES_PER_FAMILY_AND_SUBFAMILY,
        REPORT_SALES_PER_ZONE_TABLE,
        REPORT_TOTAL_PER_FAMILY,
        REPORT_TOP_CLOSE_EMPLOYEES,
        REPORT_OCCUPATION_AVERAGE,
        REPORT_ZONE_TOTAL,
        REPORT_CLOSE_PEAK_HOUR,
        REPORT_TOP_OFFERS,
        REPORT_TOP_EMPLOYEE_RECORDS,
        REPORT_RECORD_PEAK_HOUR,
        REPORT_EMPLOYEE_MOVENTS,
        REPORT_ACOUNT_BALANCE,
        REPORT_WITHHOLDING_TAX,
        REPORT_BALANCE_SHEET,
        REPORT_SERVICE_HOURS,
        REPORT_COURIER_DELIVER,
        REPORT_CANCELED_ARTICLES_PER_EMPLOYEE,
        REPORT_LIST_INVENTORY,
        REPORT_DISCOUNTS_PER_USER,
        REPORT_LIST_CONSUMPTION_PER_USER,
        REPORT_CASH_TOTAL,
        REPORT_LIST_WORKSESSION,
        REPORT_LIST_CLOSE_WORKSESSION
    }
}
