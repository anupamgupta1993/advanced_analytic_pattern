

-- DDL command for creating our table where we will insert the data :

CREATE TABLE agupta93.nba_players_accounting (
  player_name VARCHAR,
  first_active_year INTEGER,
  last_active_year INTEGER,
  years_active ARRAY(INTEGER),
  active_state VARCHAR,
  year INTEGER
)
WITH
  (FORMAT = 'PARQUET', partitioning = ARRAY['year'])
