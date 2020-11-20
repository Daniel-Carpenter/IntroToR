# Data Types

## Types

|Type|Description|Central Tendancy Measure|Has Absolute Zero?|Example|
|-|-|-|-|-|
|Nominal (name) |  Characteristic; descriptive labels   |Mean|NA|Male or Female|
|Oridinal (ordererd)|  Ordered variables |Use median or mode, **not mean**   |NA|Happy, Neautral, or Sad   |
|Interval   |Space between twp vars |Can compute mean, median, mode, sd, etc.    |FALSE|time or temp   |
|Ratio      |Order and exact values |Mode, median, mean, sd, etc.|FALSE|Height, weight, duration   |

## Data Tables

> Input

```r
# Create frequency table of rivers
table(mtcars$gear)
```

> Output

```txt
> table(mtcars$gear)

 3  4  5 
15 12  5 
```

## Plot Tables

> Input

```r
# store table
tab = table(mtcars$gear)

# make pie chart
pie(tab)

# Make barplot
barplot(tab)

# Make boxplot
with(mtcars, boxplot(mpg ~ gear))
# OR
tab2 = with(mtcars, table(mpg, gear))
barplot(tab2, beside = TRUE)

# auto generate best plot
plot(mpg ~ gear,
     data = mtcars,
     main = "Gears effect on Miles per Gallon",
     xlab = "Gear",
     ylab = "Miles per Gallon")
```

> Input

```r

```

> Output

```txt

```
