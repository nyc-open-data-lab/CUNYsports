# View Column Information for a CUNY Sports Table

Returns metadata and descriptive information for the columns in a table
available in the CUNY Sports database.

## Usage

``` r
cuny_columns_info(x)
```

## Arguments

- x:

  A character string specifying the name of a table in the CUNY Sports
  database.

## Value

A tibble containing one row per column in the requested table and
metadata describing each column.

## Details

Column information is retrieved from the \`column_catalog\` dataset
included with the CUNYsports package. The catalog includes column names,
suggested names, data types, descriptions, example values, key
information, and additional notes.

Use \[cuny_table_names()\] to view the tables currently available in the
CUNY Sports database and \[cuny_table_info()\] to view information about
a specific table.

## Examples

``` r
cuny_columns_info("basketball_all_seasons_team_final")
#> # A tibble: 9 × 8
#>   table_name   column_name suggested_name data_type description example key_type
#>   <chr>        <chr>       <chr>          <chr>     <chr>       <chr>   <chr>   
#> 1 basketball_… statistic   statistic      character Name of th… assist… Composi…
#> 2 basketball_… section     section        character Category g… Assists Descrip…
#> 3 basketball_… team_side   team_side      character Indicates … team    Composi…
#> 4 basketball_… value       value          numeric   Numeric va… 15.2    Measure 
#> 5 basketball_… season_lab… season_label   character Human-read… 2025–26 Descrip…
#> 6 basketball_… school      athletics_sit… character Athletics … brookl… Descrip…
#> 7 basketball_… season_id   season_id      integer   Identifier… 11.0    Foreign…
#> 8 basketball_… school_id   school_id      integer   Identifier… 2.0     Foreign…
#> 9 basketball_… gender      gender         Character Gender cla… M or W  Descrip…
#> # ℹ 1 more variable: notes <chr>
```
