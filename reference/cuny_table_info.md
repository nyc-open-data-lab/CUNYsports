# View Information About a CUNY Sports Table

Returns metadata and descriptive information for a table available in
the CUNY Sports database.

## Usage

``` r
cuny_table_info(x)
```

## Arguments

- x:

  A character string specifying the name of a table in the CUNY Sports
  database.

## Value

A tibble containing metadata and descriptive information about the
requested table.

## Details

Table information is retrieved from the \`table_catalog\` dataset
included with the CUNYsports package. Use \[cuny_table_names()\] to view
the names of tables currently available in the database.

## Examples

``` r
cuny_table_info("basketball_all_seasons_team_final")
#> # A tibble: 1 × 11
#>   table_name               display_name description grain season_coverage source
#>   <chr>                    <chr>        <chr>       <chr> <chr>           <chr> 
#> 1 basketball_all_seasons_… All Seasons… Season-lev… One … All seasons re… Scrap…
#> # ℹ 5 more variables: primary_key_candidate <chr>, foreign_keys_needed <chr>,
#> #   likely_uses <chr>, cleaning_priority <chr>, notes <chr>
```
