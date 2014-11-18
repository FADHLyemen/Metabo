rm(list=ls())
ex<-read.table("E:\\ex.txt",header=T);#��ȡex����
attach(ex)#�����ݿ�д���ڴ�
save(ex,file="E:\\ex.Rdata");#�������ռ䱣��

ks.test(x1,x2)
#�Ը��������нṹ���ϵ����

#���� ƫ��ϵ�� �Ͷ�ϵ�� ����
skewness<-function (x, na.rm = FALSE) {
  if (na.rm) 
    x <- x[!is.na(x)]
  sum((x - mean(x))^3)/(length(x) * sd(x)^3)
}#��������ƫ��ϵ����
kurtosis<- function (x, na.rm = FALSE) 
{
  if (na.rm) 
    x <- x[!is.na(x)]
  sum((x - mean(x))^4)/(length(x) * var(x)^2) - 3
}#���������Ͷ�ϵ����
boxplot(ex[,1:5]) #ǰ5������������ͼ
colNum=4; #colNum��ʾ���ݿ�ex���б�
newData<-ex[,colNum];
summary(newData) #�������� 
var(newData)   #����
sd(newData)   #��׼��
fivenum(newData) #����(��Сֵ���ķ�֮һ��λ������λ�����ķ�֮����λ�������ֵ)
skewness(newData, na.rm = FALSE) #����ƫ��ϵ��
kurtosis(newData, na.rm = FALSE) #�����Ͷ�ϵ��
hist(newData,freq=F,main=paste(names(ex)[colNum],"��ֱ��ͼ"),labels=T,xlab=names(ex)[colNum],border='blue')
lines(density(newData, bw = "nrd0"),col="red")#��ֱ��ͼ�У������ܶ�����
stem(newData) #��Ҷͼ

plot(ecdf(newData), do.points=FALSE, verticals=TRUE)#���ƾ���ֲ�����ͼ
lines(newData, pnorm(newData, mean=mean(newData), sd=sd(newData)), lty=3,col="red")#�ھ���ֲ�����ͼ��������۷ֲ�������
qqnorm(newData,main=paste(names(ex)[colNum],"����̬QQͼ")); #������̬qqͼ
qqline(newData,col="red")#QQͼ��Ӧֱ��
plot(newData,z,xlab=names(ex)[colNum]) #ÿ����ֵ��y������ͼ
qqplot(y,z)#ÿ����ֵ��y��qqͼ
qqline(newData,col="red") #QQͼ��Ӧֱ��

#ͳ�Ƽ��鷨,���������Ƿ������̬�ֲ�
ks.test(newData, "pnorm",mean=mean(newData),sd=sd(newData)) #if ������>500��k-s��else s-w���˴�������Ϊ1000ѡ��K-S���飬
# shapiro.test(newData)




aa
shapiro.test(x2)



#�������Լ���
for (ii in 1:5){
  for (jj in ii+1:5){
    
  }
}
library(Rcmdr)
leveneTest(x3,group,center=median)

ks.test(x1, "pnorm",mean=mean(x1),sd=sd(x1)) #

#R�������л��� R 3.0.3 64bit 
#����һ����7�����ϲ�ͬ���ͱ��������ݿ�,�����������Ӧ�������
#�������ݿ�
rm(list=ls()) #������б���
myData<-data.frame( ID=c(1,2,3),
                    Name=c("xiaoA","xiaoB","xiaoC"),
                    Sex=c("M","M","F"),
                    Age=c(22,23,21),
                    Weight=c(68.032,65.332,50.123),
                    Height=c(173,168,160),
                    Score=c(98.99,95.25,90.15))
save(myData,file="E:\\ex.Rdata");#�������ռ䱣��
#�����ݿ���в���
#ѡȡ�ض���
attach(myData)#�Ա��б�������ѡ����ʹ�� attach������
#�������attach()����Ҫ��$��ȡ���ݿ���ĳһ�����ݡ�
myData[1,] #ѡ���һ��
myData[-1,]#ѡ���һ�������������
myData[Height>170,]#ѡ����ߴ���170����

#ѡȡ�ض���
myData[,1] #ѡ���һ��
myData[,-1] #ѡ���һ�������������
#���ݿ� �ϲ�
newRData<-rbind(myData,myData);#���кϲ�
newCData<-cbind(myData,myData);#���кϲ�
#�½����ݿ�
addData<-data.frame( newID=c(2,1,3),
                     Add=c(100,200,300))
attach(addData)
# ID ΪmyData addData ���б�������IDΪ��׼���ϲ��������ݿ�
merge(myData,addData,by.x="ID",by.y="newID")
# ����score �н������򣬴ӵ͵���
myData[order(myData[,7],decreasing=F),]

