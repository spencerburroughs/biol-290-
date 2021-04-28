#Spencer Burroughs
##Assignment 3
#Biol 290

#Application 1
convert<-function(V,I,O)
 { J<-1
  KJ<-1000
  CAL<- 4.1868
  KCAL<-4186.8
  
{if (I = KJ)
    output <-((V * KJ) / O)
    return(output)
}
  {if else (I = J)
    output <-((V * J) / O)
  return(output)
  }
  {
  if else (I = CAL)
  output <-((V * CAL) / O)
  return(output)
  }
  {
    if else (I = KCAL)
    output <-((V * KCAL) / O)
    return(output)
  }
  {
    if else (I = other)
    print("I do not know how to convert")
  }
}
          
##1
convert(2500,KCAL,J)
##10467000 Joules

##2
convert(52500,KJ,J)
##Seals use 52500000 Joules
52500000/10467000
##5.0157 times more

##3
convert(1,KCAL,ERG)
#Cannot convert

##Application 2
library(dplyr)
df<-read.table("MOMv3.3.txt", header = FALSE, sep= "\t")

#1.1
df<-df[-"historical",]
df

#1.2
df<- [,c(“continent”, “status”, “order”, “family”, “genus”, “species”, “log_mass”, “combined_mass”, “reference”)]

#1.3
new.df<-select(df,continent,status,family,genus,species,log_mass)

#2
group_by(df, genus) %>% summarise(n())
group_by(df, species) %>% summarise(n())

#3
select(df, extant)
##98 species extant
select(df, extinct)
#11 species extinct 

#4
print(df[,V4])
##8 familes 

#5
print(df[genus, species, masss,])

#7
mutate(df, (0.1995*(df[,mass])*))

#8
mean(df(c(7,8,48,63,72,91,93,95,100),)
  y<-3.95  
y<-mean(df[-c(7,8,48,49,52,63,72,91,93,95,100),])
x<-5.34
print("The average mass of extant species is" x "and the average mass of extinct species is" y)
#9
New_DF<-mutate(df, (0.1995*(df[continent,mass])*))
write.csv(New_DF,"desktop\\continent_mass_differences.csv", row.name = FALSE)



