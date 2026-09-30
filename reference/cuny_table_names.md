# List Available CUNY Sports Database Tables

Returns the names of all tables available in the SQLite database
included with the CUNYsports package.

## Usage

``` r
cuny_table_names()
```

## Value

A tibble with one row per database table and a single column,
\`table_name\`, containing the name of each available table.

## Details

This function provides a quick way to explore the tables available in
the CUNY Sports database without directly connecting to the underlying
SQLite database.

## Examples

``` r
cuny_table_names()
#> # A tibble: 23 × 1
#>    table_name                                         
#>    <chr>                                              
#>  1 basketball_all_cat_leaders_final                   
#>  2 basketball_all_seasons_player_averages_final       
#>  3 basketball_all_seasons_player_conference_final     
#>  4 basketball_all_seasons_player_overall_final        
#>  5 basketball_all_seasons_player_scoring_final        
#>  6 basketball_all_seasons_player_team_averages_final  
#>  7 basketball_all_seasons_player_team_conference_final
#>  8 basketball_all_seasons_player_team_overall_final   
#>  9 basketball_all_seasons_player_team_scoring_final   
#> 10 basketball_all_seasons_team_final                  
#> # ℹ 13 more rows
```
