Create database db

CREATE TABLE db.table (TickTime double, Speed double, Day int) ENGINE=Memory

SELECT TickTime, Day FROM db.table
WHERE (Day=1 and Speed > 4939151) or (Day=2 and Speed > 4294387) or (Day=7 and Speed > 1652398)
