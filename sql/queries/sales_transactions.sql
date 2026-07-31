SELECT * FROM sales.transactions;

SELECT count(*) FROM sales.transactions;

SELECT * FROM sales.transactions where market_code="Mark001";

SELECT count(*) FROM sales.transactions where market_code="Mark001";

SELECT * FROM sales.transactions where currency="USD";

SELECT * FROM sales.transactions limit 5;

SELECT distinct(transactions.currency) from transactions;

#'INR' 'INR\r'

SELECT count(*) FROM transactions where transactions.currency='INR\r';
# We didn't use sales.transaction because now we have set sales as default schema.


SELECT count(*) FROM transactions where transactions.currency='INR';

SELECT count(*) FROM transactions where transactions.currency='USD' or transactions.currency='USD\r';

SELECT * FROM transactions where transactions.currency='USD' or transactions.currency='USD\r';

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";