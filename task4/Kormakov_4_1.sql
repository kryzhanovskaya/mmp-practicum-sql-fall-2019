SELECT 
    renewed_dt AS date
FROM
    srcdt.account_periods
WHERE
    account_renewal_cnt = 1 
UNION 
SELECT 
    renewed_dt AS date
FROM
    srcdt.account_periods
WHERE
    account_renewal_cnt > 1 
UNION 
SELECT 
    expiration_dt AS date
FROM
    srcdt.account_periods
WHERE
    account_renewal_cnt > 1
        AND valid_to_dttm = '5999-01-01 00:00:00'
ORDER BY date;

