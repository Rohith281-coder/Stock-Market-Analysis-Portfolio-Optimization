CREATE DATABASE stock_project;
USE stock_project;

SELECT * FROM stock_returns LIMIT 10;

DESCRIBE stock_returns;
#Average Return per Stock
SELECT 
    AVG(TSLA),
    AVG(`RELIANCE.NS`),
    AVG(`TCS.NS`)
FROM stock_returns;

#Risk 
SELECT 
    STDDEV(TSLA) AS TSLA_risk,
    STDDEV(`RELIANCE.NS`) AS RELIANCE_risk,
    STDDEV(`TCS.NS`) AS TCS_risk
FROM stock_returns;

#Best Performing Days
SELECT date, TSLA
FROM stock_returns
ORDER BY TSLA DESC
LIMIT 5;

#Worst Days
SELECT date, TSLA
FROM stock_returns
ORDER BY TSLA ASC
LIMIT 5;

#Compare Stocks
SELECT 
    'TSLA', AVG(TSLA), STDDEV(TSLA)
FROM stock_returns
UNION
SELECT 
    'RELIANCE', AVG(`RELIANCE.NS`), STDDEV(`RELIANCE.NS`)
FROM stock_returns
UNION
SELECT 
    'TCS', AVG(`TCS.NS`), STDDEV(`TCS.NS`)
FROM stock_returns;



