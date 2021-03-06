UPDATE cfg_configurationcurrency SET ExchangeRate = 1.0000;
-- Exchange Rate based on Google Finance exchange rates: 2019-03-11;
UPDATE cfg_configurationcurrency SET ExchangeRate = 408.9400 WHERE Acronym = 'AOA';
UPDATE cfg_configurationcurrency SET ExchangeRate =   5.0300 WHERE Acronym = 'BRL';
UPDATE cfg_configurationcurrency SET ExchangeRate =   1.1600 WHERE Acronym = 'EUR';
UPDATE cfg_configurationcurrency SET ExchangeRate =   1.0000 WHERE Acronym = 'GBP';
UPDATE cfg_configurationcurrency SET ExchangeRate =  81.6000 WHERE Acronym = 'MZN';
UPDATE cfg_configurationcurrency SET ExchangeRate =   1.3000 WHERE Acronym = 'USD';

UPDATE cfg_configurationcurrency SET UpdatedBy = '090c5684-52ba-4d7a-8bc3-a00320ef503d', CreatedAt = '2014-02-28 14:02:28', UpdatedAt = '2019-03-11 23:16:18';
