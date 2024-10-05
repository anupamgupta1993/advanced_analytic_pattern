/*
Source table :

| Player Name      | Age | Height | Weight | College          | Country                | Draft Year | Draft Round | Draft Number | GP  | PTS  | REB  | AST  | Net RTG | OREB_PCT | DREB_PCT | USG_PCT | TS_PCT | AST_PCT | Season |
|------------------|-----|--------|--------|------------------|------------------------|------------|-------------|--------------|-----|------|------|------|---------|----------|----------|---------|--------|---------|--------|
| A.C. Green       | 36  | 6-9    | 225    | Oregon State      | USA                    | 1985       | 1           | 23           | 82  | 5.9  | 18.3 | 8    | 16.1    | 15.8     | 19.9     | 18.3    | 88.6   | 14.1    | 1999   |
| A.J. Bramlett    | 23  | 6-10   | 227    | Arizona           | USA                    | 1999       | 2           | 39           | 8   | 1.2  | 0.8  | 0    | 30.7    | 14.1     | 14.1     | 18.9    | 14.1   | 10.1    | 1999   |
| Aaron McKie      | 27  | 6-5    | 209    | Temple            | USA                    | 1994       | 1           | 17           | 78  | 8.3  | 2.9  | 1.5  | 20.1    | 16.8     | 10.1     | 10.1    | 11.6   | 14.2    | 1999   |
| Aaron Williams   | 28  | 6-9    | 225    | Xavier            | USA                    | Undrafted  | Undrafted   | Undrafted    | 81  | 7.6  | 5.0  | 0.7  | 16.2    | 17.5     | 10.6     | 16.2    | 17.7   | 17.5    | 1999   |
| Adam Keefe       | 30  | 6-9    | 230    | Stanford          | USA                    | 1992       | 1           | 10           | 60  | 2.2  | 2.2  | 0.5  | 14.5    | 8.4      | 8.4      | 14.6    | 12.5   | 14.9    | 1999   |
| Adonal Foyle     | 25  | 6-10   | 250    | Colgate           | St. Vincent & Grenadines| 1997       | 1           | 8            | 76  | 5.5  | 5.6  | 0.6  | 14.6    | 9.4      | 9.4      | 14.6    | 12.5   | 12.5    | 1999   |
| Adrian Griffin   | 25  | 6-5    | 215    | Seton Hall        | USA                    | Undrafted  | Undrafted   | Undrafted    | 72  | 6.7  | 5.2  | 2.5  | 14.6    | 12.7     | 12.7     | 13.5    | 14.5   | 13.1    | 1999   |
| Al Harrington    | 20  | 6-9    | 254    | None              | USA                    | 1998       | 1           | 25           | 50  | 6.6  | 3.2  | 0.8  | 13.3    | 5.8      | 13.3     | 19.7    | 13.3   | 19.7    | 1999   |
| Alan Henderson   | 27  | 6-9    | 235    | Indiana           | USA                    | 1995       | 1           | 16           | 82  | 13.2 | 7.0  | 0.9  | 19.2    | 16.9     | 19.2     | 19.4    | 17.2   | 19.4    | 1999   |
| Aleksandar Radojevic | 23 | 7-3  | 245    | None              | Bosnia and Herzegovina | 1999       | 1           | 12           | 32  | 2.3  | 2.7  | 0.3  | 17.5    | 23.1     | 22.7     | 22.7    | 22.7   | 22.7    | 1999   |


*/

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

-- insert into the above table 

INSERT INTO
  agupta93.nba_players_accounting
WITH
  last_season AS (
    SELECT
      *
    FROM
      agupta93.nba_players_accounting
    WHERE
      year = 1995 
  ),
  current_season AS (
    SELECT
      player_name,
      COUNT(1) AS number_of_entries,
      MAX(season) AS active_year
    FROM
      bootcamp.nba_player_seasons
    WHERE
      season = 1996
    GROUP BY 
      player_name
  ),
  combined as (
SELECT
  COALESCE(ls.player_name, cs.player_name) AS player_name,
  COALESCE(ls.first_active_year, cs.active_year) AS first_active_year,
  COALESCE(cs.active_year, ls.last_active_year) AS last_active_year,
  cs.active_year,
  CASE
        WHEN ls.years_active IS NULL THEN ARRAY[cs.active_year]
        WHEN cs.active_year IS NULL THEN ls.years_active
        ELSE ls.years_active || ARRAY[cs.active_year]
      END AS years_active,
  1996 as partition_year
FROM
  last_season ls
  FULL OUTER JOIN current_season cs ON ls.player_name = cs.player_name
  )
select 
    player_name,
    first_active_year,
    last_active_year,
    years_active,
    CASE
    WHEN active_year - first_active_year = 0 THEN 'new'
    WHEN active_year - last_active_year = 0 THEN 'Continued Playing'
    WHEN active_year - last_active_year > 1 THEN 'Returned from Retirement'
    WHEN active_year IS NULL
    AND partition_year - last_active_year = 1 THEN 'Retired'
    ELSE 'Stayed Retired'
  END AS active_state,
  partition_year
  from combined

/*
what the output looks like :

| Player Name           | First Active Year | Last Active Year | Years Active             | Active State       | Year |
|-----------------------|-------------------|------------------|--------------------------|--------------------|------|
| Brett Szabo           | 1996              | 1996             | [1996]                   | Stayed Retired     | 1998 |
| David Wesley          | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |
| Donnie Boyce          | 1996              | 1996             | [1996]                   | Stayed Retired     | 1998 |
| Eric Piatkowski       | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |
| Hubert Davis          | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |
| Larry Johnson         | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |
| Mahmoud Abdul-Rauf    | 1996              | 1997             | [1996, 1997]             | Retired            | 1998 |
| Rodney Rogers         | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |
| Tony Dumas            | 1996              | 1997             | [1996, 1997]             | Retired            | 1998 |
| Billy Owens           | 1996              | 1998             | [1996, 1997, 1998]       | Continued Playing  | 1998 |

*/
