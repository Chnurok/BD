Create database db

CREATE TABLE db.table (TickTime double, Speed double, Day int) ENGINE=Memory

SELECT TickTime, Day FROM db.table
WHERE (Day=1 and Speed > 5827816) or (Day=2 and Speed > 4271012) or (Day=3 and Speed > 3885239) or (Day=4 and Speed > 1656648) or (Day=7 and Speed > 3671805)
