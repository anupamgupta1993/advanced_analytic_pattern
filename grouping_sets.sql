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
    max(home_team_id) as home_team_id,
    max(visitor_team_id) as visitor_team_id,
    max(home_team_wins) as home_team_wins,
    max(season) as season from bootcamp.nba_games 
    group by 1,2),
base as (
  select 
    gd.*, 
    g.season as season,
    case when (gd.team_id = g.home_team_id and home_team_wins = 1) then 1
         when (gd.team_id = g.visitor_team_id and home_team_wins = 0) then 1 else 0 end as did_team_win
  from bootcamp.nba_game_details_dedup gd
  join de_duped_nba_games g on gd.game_id = g.game_id 
),
grouped as (
select 
  player_name, 
  team_id, 
  season,
  game_id, 
  sum(pts) as tot_points,
  max(did_team_win) as win,
  case 
    when GROUPING(player_name) = 0 and GROUPING(season) = 0 then 'player_season'
    when GROUPING(player_name) = 0 and GROUPING(team_id) = 0 then 'player_team' 
    else 'game_team' end as aggregation_level
from base group by
  grouping sets(
  (player_name, team_id),
  (player_name, season),
  (team_id, game_id))
) 

/*
grouped data :

+---------------+----------+--------+----------+-----------+-----+--------------------+
| Player Name  | Team ID  | Season | Game ID  | Tot Points| Win | Aggregation Level |
+---------------+----------+--------+----------+-----------+-----+--------------------+
| null         | 1610612739| null   | 20300348 | 85        | 0   | game_team         |
| null         | 1610612750| null   | 11900035 | 123       | 0   | game_team         |
| null         | 1610612759| null   | 12200050 | 111       | 1   | game_team         |
| null         | 1610612762| null   | 20500401 | 82        | 1   | game_team         |
| null         | 1610612738| null   | 21600970 | 99        | 0   | game_team         |
| null         | 1610612766| null   | 22100482 | 115       | 1   | game_team         |
| null         | 1610612738| null   | 21900156 | 140       | 1   | game_team         |
| null         | 1610612766| null   | 21700892 | 114       | 1   | game_team         |
| null         | 1610612766| null   | 21200618 | 92        | 0   | game_team         |
| null         | 1610612743| null   | 21600555 | 106       | 0   | game_team         |
+---------------+----------+--------+----------+-----------+-----+--------------------+

*/

-- Build additional queries on top of the results of the GROUPING SETS aggregations above to answer the following questions:
    --Write a query to answer: "Which player scored the most points playing for a single team?"
  
  select 
    player_name, 
    team_id, 
    tot_points 
  from grouped 
  where aggregation_level = 'player_team' 
  order by 3 desc 
  limit 1
  
/*
Output :

| Player Name   | Team ID   | Points |
|---------------|-----------|--------|
| Lebron James  | 1610612739| 28314  |

*/
  -- Write a query (query_4) to answer: "Which player scored the most points in one season?"
  
  select 
    player_name, 
    season, 
    max(tot_points) as points 
  from grouped 
  where aggregation_level = 'player_season' 
  group by 1,2
  order by 3 desc
  limit 1
  
/*
Output : 

| Player Name   | Season | Points |
|---------------|--------|--------|
| Kevin Durant  | 2013   | 3265   |

*/

-- Write a query (query_5) to answer: "Which team has won the most games"
  
  select 
    team_id, 
    count(win) filter (where win = 1) as total_wins 
  from grouped 
  where aggregation_level = 'game_team' 
  group by 1 
  order by 2 desc

  /*
  Output :

+------------+------------+
| Team ID    | Total Wins |
+------------+------------+
| 1610612759 | 1182       |
| 1610612748 | 1073       |
| 1610612738 | 1055       |
| 1610612742 | 1037       |
| 1610612744 | 1019       |
| 1610612745 | 995        |
| 1610612743 | 993        |
| 1610612762 | 951        |
| 1610612747 | 947        |
| 1610612760 | 927        |
+------------+------------+

  */
--Write a query (query_6) that uses window functions on nba_game_details to answer the question: "What is the most games a single team has won in a given 90-game stretch?

with de_duped as (
    select
        game_date_est,
        game_id,
        home_team_id,
        visitor_team_id,
        max(home_team_wins) as did_home_team_win
    from bootcamp.nba_games group by 1, 2, 3, 4
),

games as (
    select
        game_date_est,
        game_id,
        home_team_id as team_id,
        case when did_home_team_win = 1 then 1 else 0 end as did_win
    from de_duped
    union all
    select
        game_date_est,
        game_id,
        visitor_team_id as team_id,
        case when did_home_team_win = 0 then 1 else 0 end as did_win
    from de_duped
),

wins as (
    select
        team_id,
        sum(did_win)
            over (
                partition by team_id
                order by game_date_est rows between 89 preceding and current row
            )
            as wins_90_game
    from games
)

select
    team_id,
    max(wins_90_game) as max_wins
from wins
group by 1
order by 2 desc

/*
Output :

| Team ID      | Max Wins |
|:-------------|:--------:|
| 1610612744   | 80       |
| 1610612739   | 74       |
| 1610612748   | 74       |
| 1610612749   | 74       |
| 1610612759   | 74       |
| 1610612742   | 72       |
| 1610612747   | 72       |
| 1610612738   | 72       |
| 1610612741   | 71       |
| 1610612745   | 71       |

*/

-- Write a query (query_7) that uses window functions on nba_game_details to answer the question: "How many games in a row did LeBron James score over 10 points a game?"

with de_duped_nba_games as (
    select distinct
        game_id,
        game_date_est
    from bootcamp.nba_games
),

base_table as (
    select distinct
        gd.game_id,
        g.game_date_est,
        gd.team_id,
        gd.player_name,
        case when gd.pts > 10 then 1 else 0 end as result
    from bootcamp.nba_game_details_dedup as gd
    inner join de_duped_nba_games as g on gd.game_id = g.game_id
    where gd.player_name = 'LeBron James'
),

grouped as (
    select
        *,
        case
            when LAG(result) over (order by game_date_est) <> result
                then 1
            else 0
        end as counter
    from base_table
),

final as (
    select
        *,
        SUM(counter) over (order by game_date_est) as group_id
    from grouped
)

select
    player_name,
    MAX(streak) as max
from (
    select
        player_name,
        group_id,
        SUM(result) as streak
    from final group by 1, 2
) as temp group by 1

/*
Output :

+--------------+-----+
| Player Name  | Max |
+--------------+-----+
| LeBron James | 136 |
+--------------+-----+


*/

