region<- c('African', 'Eastern Mediterranean', 'European', 'Americas',             
'South-East Asia', 'Western Pacific')   
ncases<- c(2682, 164, 51660, 116228, 80, 486)

table<- xtabs(ncases ~ region)
barplot(table, main='Bar Graph for Monkeypox Cases by Region', xlab='',
ylab='Number of Cases', col='cornflowerblue')

################################################################################
popl.data<- read.csv(file='C:/Users/000110888/OneDrive - CSULB/Desktop/USpopulation.csv', 
header=TRUE, sep=',')

table.age<- xtabs(percent ~ race + age, data=popl.data) 

barplot(table.age, main='Side-by-side Bar Graph for Population Percentage by Age and Race', 
ylim=c(0,40), xlab='', ylab='Percent', col=c('blue','lightgreen','dodgerblue',
'skyblue'), beside=TRUE)
legend(18, 38, legend=c('Asian','Black','Hispanic','White'), col=c('blue','lightgreen',
'dodgerblue','skyblue'), lty=1, lwd=4)

################################################################################

table.race<- xtabs(percent ~ age + , data=popl.data) 

barplot(table.race, main='Side-by-side Bar Graph for Population Percentage by Race and Age', 
ylim=c(0,44), xlab='', ylab='Percent', col=c('lightblue','blue','gray','dodgerblue',
'darkblue'), beside=TRUE)
egend(18,44, legend=c('0-18yrs','15-34yrs','35-54yrs','55-64yrs','65+ yrs'), 
col=c("lightblue", "blue","gray","dodgerblue","darkblue"), lty=1, lwd=4)

################################################################################

barplot(table1, main='Segmented Bar Graph for Population Percentage by Age', 
ylim=c(0,180), xlab='', ylab='Percent', col=c('lightblue','blue','gray',
'dodgerblue','darkblue'), beside=FALSE)
legend(2,180, legend=c('0-18yrs','15-34yrs','35-54yrs','55-64yrs','65+ yrs'), 
col=c("lightblue", "blue","gray","dodgerblue","darkblue"), lty=1, lwd=4)


barplot(table2, main='Segmented Bar Graph for Population Percentage by Race', 
ylim=c(0,110), xlab='', ylab='Percent', col=c('blue','lightgreen','dodgerblue',
'skyblue'), legend.text=rownames(table2), beside=FALSE)
      