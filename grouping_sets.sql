/*
original_data

nba_game_details:

| Game ID  | Team ID    | Team Abbreviation | Team City | Player ID | Player Name | Nickname | Start Position | Comment                    | Min   | FGM | FGA | FG%   | 3PM | 3PA | 3P%  | FTM | FTA | FT%   | OREB | DREB | REB | AST | STL | BLK | TO | PF | PTS | Plus/Minus |
|----------|------------|-------------------|-----------|-----------|-------------|----------|----------------|----------------------------|-------|-----|-----|-------|-----|-----|------|-----|-----|-------|------|------|-----|-----|-----|-----|----|----|-----|------------|
| 40800232 | 1610612743 | DEN               | Denver    | 2403      | Nene        | null     | C              | null                       | 34:20 | 8   | 12  | 0.667 | 0   | 0   | 0    | 9   | 13  | 0.692 | 3    | 5    | 8   | 0   | 0   | 1   | 1  | 2  | 25  | 6          |
| 20800926 | 1610612743 | DEN               | Denver    | 2403      | Nene        | null     | C              | null                       | 38:27 | 2   | 7   | 0.286 | 0   | 0   | 0    | 6   | 7   | 0.857 | 0    | 4    | 4   | 1   | 1   | 0   | 2  | 3  | 10  | -5         |
| 21700180 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | null                       | 7:09  | 2   | 2   | 1.000 | 0   | 0   | 0    | 0   | 0   | 0     | 1    | 3    | 4   | 0   | 1   | 0   | 1  | 1  | 4   | -4         |
| 11700013 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | DND - Rest                 | null  | null| null| null  | null| null| null | null| null| null  | null | null | null| null| null| null|null|null|null|null        |
| 21600595 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | null                       | 22:35 | 4   | 6   | 0.667 | 0   | 0   | 0    | 4   | 4   | 1.000 | 2    | 1    | 3   | 2   | 2   | 1   | 0  | 3  | 12  | -3         |
| 21600352 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | DNP - Coach's Decision      | null  | null| null| null  | null| null| null | null| null| null  | null | null | null| null| null| null|null|null|null|null        |
| 21600326 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | null                       | 18:51 | 3   | 4   | 0.750 | 0   | 0   | 0    | 3   | 6   | 0.500 | 3    | 5    | 8   | 2   | 1   | 0   | 0  | 3  | 9   | 26          |
| 21600164 | 1610612745 | HOU               | Houston   | 2403      | Nene        | null     | null           | null                       | 20:29 | 5   | 8   | 0.625 | 0   | 0   | 0    | 1   | 2   | 0.500 | 2    | 3    | 5   | 1   | 1   | 0   | 5  | 3  | 11  | -4         |
| 20900443 | 1610612743 | DEN               | Denver    | 2403      | Nene        | null     | C              | null                       | 39:58 | 4   | 9   | 0.444 | 0   | 0   | 0    | 5   | 5   | 1.000 | 0    | 7    | 7   | 3   | 1   | 0   | 1  | 3  | 13  | 5          |
| 20900043 | 1610612743 | DEN               | Denver    | 2403      | Nene        | null     | C              | null                       | 33:23 | 6   | 6   | 1.000 | 0   | 0   | 0    | 6   | 9   | 0.667 | 3    | 6    | 9   | 6   | 1   | 0   | 1  | 5  | 18  | 15         |

nba_games:

| Game Date EST | Game ID  | Game Status Text | Home Team ID | Visitor Team ID | Season | Team ID Home | PTS Home | FG% Home | FT% Home | 3P% Home | AST Home | REB Home | Team ID Away | PTS Away | FG% Away | FT% Away | 3P% Away | AST Away | REB Away | Home Team Wins |
|---------------|----------|------------------|--------------|-----------------|--------|--------------|----------|----------|----------|-----------|----------|----------|-------------|----------|----------|----------|-----------|----------|----------|---------------|
| 2003-11-12    | 20300111 | Final            | 1610612747   | 1610612761      | 2003   | 1610612747   | 94       | 0.416    | 0.622    | 0.286     | 24       | 54       | 1610612761  | 79       | 0.348    | 0.893    | 0.332     | 19       | 44       | 1             |
| 2003-11-12    | 20300109 | Final            | 1610612756   | 1610612737      | 2003   | 1610612756   | 94       | 0.429    | 0.72     | 0.222     | 14       | 41       | 1610612737  | 99       | 0.457    | 0.833    | 0.476     | 19       | 44       | 0             |
| 2003-11-12    | 20300106 | Final            | 1610612748   | 1610612739      | 2003   | 1610612748   | 88       | 0.455    | 0.765    | 0.385     | 21       | 40       | 1610612739  | 83       | 0.451    | 0.567    | 0.25      | 21       | 42       | 1             |
| 2003-11-12    | 20300103 | Final            | 1610612738   | 1610612741      | 2003   | 1610612738   | 82       | 0.329    | 0.667    | 0.296     | 22       | 42       | 1610612741  | 89       | 0.431    | 0.686    | 0.514     | 47       | 0        | 0             |
| 2003-11-12    | 20300110 | Final            | 1610612744   | 1610612765      | 2003   | 1610612744   | 87       | 0.447    | 0.792    | 0         | 24       | 44       | 1610612765  | 85       | 0.402    | 0.81     | 0.252     | 26       | 41       | 1             |
| 2003-11-12    | 20300108 | Final            | 1610612749   | 1610612760      | 2003   | 1610612749   | 99       | 0.379    | 0.846    | 0.217     | 22       | 51       | 1610612760  | 104      | 0.494    | 0.667    | 0.667     | 25       | 43       | 0             |
| 2003-11-12    | 20300107 | Final            | 1610612740   | 1610612762      | 2003   | 1610612740   | 96       | 0.463    | 0.786    | 0.524     | 30       | 61       | 1610612762  | 89       | 0.486    | 0.783    | 0.083     | 26       | 35       | 1             |
| 2003-11-12    | 20300104 | Final            | 1610612751   | 1610612759      | 2003   | 1610612751   | 71       | 0.36     | 0.667    | 0.111     | 25       | 40       | 1610612759  | 85       | 0.41     | 0.842    | 0.333     | 16       | 50       | 0             |
| 2003-11-12    | 20300105 | Final            | 1610612753   | 1610612763      | 2003   | 1610612753   | 97       | 0.452    | 0.667    | 0.252     | 20       | 47       | 1610612763  | 107      | 0.446    | 0.762    | 0.474     | 18       | 37       | 0             |
| 2003-10-28    | 20300001 | Final            | 1610612755   | 1610612748      | 2003   | 1610612755   | 89       | 0.44     | 0.533    | 0.352     | 39       | 61       | 1610612748  | 74       | 0.408    | 0.824    | 0.251     | 16       | 44       | 1             |


*/

-- query for aggregating based on the following groupings
-- player and team
-- player and season
-- team

with de_duped_nba_games as (
  select 
    game_date_est,
    game_id, 
    max(season) as season from bootcamp.nba_games 
    group by 1,2),
base as (
  select 
    gd.*, 
    g.season as season
  from bootcamp.nba_game_details_dedup gd
  join de_duped_nba_games g on gd.game_id = g.game_id
)
select player_name, team_id, season, sum(pts) as tot_points from base group by
  grouping sets(
  (player_name, team_id),
  (player_name, season),
  (team_id))

/*
grouped data :

| Player Name     | Team ID      | Season | Total Points |
|-----------------|--------------|--------|--------------|
| Nick Young      | null         | 2009   | 704          |
| Jawun Evans     | null         | 2018   | 12           |
| null            | 1610612749   | null   | 181128       |
| Jeff Green      | 1610612753   | null   | 714          |
| Jaylen Johnson  | 1610612741   | null   | 3            |
| Jeff McInnis    | 1610612739   | null   | 1360         |
| Jeff Withey     | 1610612740   | null   | 319          |
| Jerami Grant    | null         | 2019   | 1153         |
| Jermaine O'Neal | 1610612744   | null   | 410          |
| Jeremy Tyler    | null         | 2011   | 207          |

*/
  
