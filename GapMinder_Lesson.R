# Jodi Reeves Eyre (nee Flores)
# 2016-01-23
# Twitter: @thejodireeves
# Experimenting with population data from different countries over time; data source: ???
#Reading in gapminder data
# one of the great things about this, is that you do not mess with the original data; ever.
#first you need to get the data -- type in file = "da...then it will come up with options
#make sure to say if there is a header, and what is seperating the bits of data

file = "gapminder-FiveYearData.csv"
gapminder <- read.table(file = "gapminder-FiveYearData.csv", 
                        header = TRUE, 
                        sep =",")
                        #stringsAsFactors = FALSE
#or read a csv this way:
#gapminder <- read.csv(file = "20160123_swcr_data/gapminder-FiveYearData.csv", 
 #                       header = TRUE, 
  #                      stringsAsFactors = FALSE)
#look at stats using head or str or colnames - this helps make sure the data is in order
head(gapminder)
str(gapminder)
colnames(gapminder)
# summary can show you information as well
summary(gapminder)
# then you can begin to look at means, etc.
mean(gapminder$pop)
#
# vectorization - adding vectors to vectors to vectors
#
x <-1:4
y <- x * 2
z <- x + y
#
#Adding a column to the dataset + pulling data from another column and rounding it to nearest million
gapminder <- read.table(file = "gapminder-FiveYearData.csv", 
                        header = TRUE, 
                        sep =",")
gapminder <- cbind(gapminder, PopulationMillion = round(gapminder$pop / 1000000, 0))
head(gapminder)

