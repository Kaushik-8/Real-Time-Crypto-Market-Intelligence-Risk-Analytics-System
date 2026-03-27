create database crypto_api;

#latest price
create view latest_data as
select * 
from (
select *,
row_number() over(partition by coin order by timestamp desc) as rn
from crypto_data) as t
where rn = 1;
select * from latest_data
order by price desc;

#1. Market Dominance & Investment Opportunity
#🎯 Problem
#Which cryptocurrencies dominate the market and where should investors allocate capital?

with cte as(
SELECT *,
row_number() over(partition by coin order by timestamp desc) as rn
FROM crypto_data
)
select coin, market_cap,
round((market_cap * 100.0) / SUM(market_cap) OVER(),2) AS dominance_pct
from cte
where rn = 1 
order by 3 desc;
# 2. Price Volatility (Risk Analysis)
#How much price fluctuates (up & down)
# Is this coin stable or risky?

# High volatility = high risk
# Used by trading firms
#The most common method to measure historical volatility is using standard deviation.

select coin,
stddev(price) as volatility
from crypto_data
group by 1 
order by 2 desc;

#3. Trend Detection (Growth / Decline) 
#	Is price going up or down over time?

#Why it matters
#Helps decide buy/sell
#Detect bullish/bearish trends

select coin,
min(price) as minimum_price,
max(price) as maximum_price
from crypto_data
group by 1;

#4. Volume vs Price Relationship
#does higher trading volume increases price?

select coin, avg(price), avg(volume)
from crypto_data
group by 1;

#5 Top gainers/losers
#Which coins increased/decreased most?

select coin ,max(price)- min(price) as price_change
from crypto_data
group by 1
order by 2 desc;

#6. Liquidity Risk Analysis
#Can you easily buy/sell this coin?
# Low volume = risky
select coin,
volume/market_cap as liquidity_ratio
from crypto_data
order by 2 asc;
 
## 7. Portfolio Diversification
#What it means?
#-Don’t invest in similar coins only

#Why it matters?
#-Reduces risk
#-Smart investment strategy
SELECT coin,
       AVG(price) AS avg_price
FROM crypto_data
GROUP BY coin;

#calculating moving average
select coin,
avg(price) over(partition by coin order by timestamp rows between 4 preceding and current row) as moving_avg
from crypto_data;

#for latest moving average
with cte as(
select coin,
avg(price) over(partition by coin order by timestamp rows between 4 preceding and current row) as moving_avg,
row_number() over(partition by coin order by timestamp desc) as rn
from crypto_data)
select coin,
round(moving_avg,2) as moving_avg
from cte 
where rn = 1;


