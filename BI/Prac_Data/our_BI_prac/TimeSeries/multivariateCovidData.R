
positiveCases  <- c(580, 7813, 28266, 59287, 75700,87820, 95314, 126214, 218843, 471497,936851, 1508725, 2072113)

deaths <- c(17, 270, 565, 1261, 2126, 2800,3285, 4628, 8951, 21283, 47210,88480, 138475)
 

library(lubridate)
png(file = 'E:\\TY_Anushka_Sanika\\SEM_6\\BI\\our_BI_prac\\MultivariateCovidData.png')
mts <- ts(cbind(positiveCases,deaths), start = decimal_date(ymd("2020-01-22")), frequency = 365.25 / 7)
print(mts)
plot(mts, xlab = "Multivariate Weekly Data", ylab = "Total Death Cases", main = "Covid-19 Pandemic", col.main = "darkgreen")
dev.off()
plot(mts, xlab = "Multivariate  Weekly Data", ylab = "Total Death Cases", main = "Covid-19 Pandemic", col.main = "darkgreen")
