#R�������л����� R 3.0.3 64bit��R studio ���б�д

#����һ����7�����ϲ�ͬ���ͱ��������ݿ�,�����������Ӧ�������

#�������ݿ�

rm(list=ls());#������б���

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