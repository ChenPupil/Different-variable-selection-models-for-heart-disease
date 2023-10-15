## To create a correlation coefficient plot
data$BMI=scale(data$BMI, center = TRUE, scale = TRUE)
data$PhysicalHealth=scale(data$PhysicalHealth, center = TRUE, scale = TRUE)
data$MentalHealth=scale(data$MentalHealth, center = TRUE, scale = TRUE)
data$AgeCategory=scale(data$AgeCategory, center = TRUE, scale = TRUE)
data$GenHealth=scale(data$GenHealth, center = TRUE, scale = TRUE)
data$SleepTime=scale(data$SleepTime, center = TRUE, scale = TRUE)
data<-data.matrix(data)
data_cor <- cor(data)
corrplot(data_cor, method = "square", order = "hclust", 
         tl.col = "black", tl.srt = 30,tl.cex =0.8)
##  Visualization
attach(data)
colnames(data)
HeartDisease=as.factor(HeartDisease)
Smoking=as.factor(Smoking)
AlcoholDrinking=as.factor(AlcoholDrinking)
Stroke=as.factor(Stroke)
DiffWalking=as.factor(DiffWalking)
Sex=as.factor(Sex)
Diabetic=as.factor(Diabetic)
PhysicalActivity=as.factor(PhysicalActivity)
Asthma=as.factor(Asthma)
KidneyDisease=as.factor(KidneyDisease)
SkinCancer=as.factor(SkinCancer)
detach(data)
## Generate cross-tabulated descriptive statistics for categorical variables and their relationship with heart disease
P1=ggplot(data,mapping=aes(x=as.factor(Smoking),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='Smoking')
P2=ggplot(data,mapping=aes(x=as.factor(AlcoholDrinking),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='AlcoholDrinking')
P3=ggplot(data,mapping=aes(x=as.factor(Stroke),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='Stroke')
P4=ggplot(data,mapping=aes(x=as.factor(DiffWalking),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='DiffWalking')
P5=ggplot(data,mapping=aes(x=as.factor(Sex),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='Sex')
P6=ggplot(data,mapping=aes(x=as.factor(Diabetic),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='Diabetic')
P7=ggplot(data,mapping=aes(x=as.factor(PhysicalActivity),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='PhysicalActivity')
P8=ggplot(data,mapping=aes(x=as.factor(Asthma),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='Asthma')
P9=ggplot(data,mapping=aes(x=as.factor(KidneyDisease),fill=as.factor(HeartDisease)))+
  geom_bar(position="dodge")+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  labs(x='KidneyDisease')
grid.arrange(grobs=list(P1,P2,P3,P4,P5,P6,P7,P8,P9),ncol=3,bottom='Generate cross-tabulated descriptive statistics for categorical variables and their relationship with heart disease')
# pie chart about heart disease patients
blank_theme <- theme_minimal()+
  theme(
    axis.title.x =element_blank() ,
    axis.title.y = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    panel.border = element_blank(),
    panel.grid=element_blank(),
    axis.ticks = element_blank(),
    plot.title=element_text(size=14, face="bold")
  )
P10<-ggplot(data=datarose,mapping=aes(x="HeartDisease",fill=as.factor(HeartDisease)))+
  geom_bar(stat="count",width=0.5,position='stack')+
  coord_polar("y", start=0)+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  guides(fill = guide_legend(title = NULL))+
  blank_theme+
  geom_text(stat="count",aes(label = ''), size=4, position=position_stack(vjust = 0.5))
# violin chart about BMI 
P11<-ggplot(data=data,mapping=aes(x=factor(HeartDisease),y=BMI))+
  geom_violin(fill='gray',scale='count')+
  geom_boxplot(width=0.2,outlier.colour = 'red')+
  stat_summary(fun.y='mean',geom='point',size=3,shape=18,colour='orange')+
  labs(x='HeartDisease')
P12<-ggplot(data=data,mapping=aes(x=factor(HeartDisease),y=AgeCategory))+
  geom_boxplot(fill='gray',color='steelblue',outlier.colour = 'red'
               ,outlier.fill ='red',outlier.shape = 24 )+
  stat_summary(fun.y='mean',geom='point',colour='black')+
  labs(x='HeartDisease')
P13<-ggplot(data=data,mapping = aes(x=SleepTime,fill=as.factor(HeartDisease)))+
  geom_histogram(bins=30)+
  xlim(0,11)+
  scale_fill_manual(values=c("#B5B5B5","#4A4A4A"))+
  theme(legend.title = element_blank(),legend.position = c(0.85,0.9),
        legend.background = element_blank(),legend.direction = 'horizontal')
grid.arrange(grobs=list(P10,P11,P12,P13),ncol=2)
