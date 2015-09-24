#!/usr/bin/python

import sys
from numpy import *


def loaddata(filename):

    file_r=open(filename)
    alldata=file_r.readlines()
    rowNumber=len(alldata)

    line=alldata[0]
    line=line.strip()
    listfromline=line.split(',')
    columnNumber=len(listfromline)

    data = zeros((rowNumber,columnNumber))

    index=0
    for line in alldata:
        line=line.strip()
        listfromline=line.split(',')
        data[index,:]=listfromline[0:columnNumber]
        index+=1

    return data

def dist_jueduizhi(v1,v2):
    res=0;
    for i in range(len(v1)):
        res=res+abs(v1[i]-v2[i]);
    return res


def classifier_knn(data_test,data_train):
    (testRowNum,testColumnNum)=shape(data_test)
    (trainRowNum,trainColumnNum)=shape(data_train)

    for i in range(testRowNum):
        v1=data_test[i,:];
        nearest=99999999;
        classlabel=-1;
        for j in range(trainRowNum):
            v2=data_train[j,:];
            v2_feature=v2[1:trainColumnNum];
            dist=dist_jueduizhi(v1,v2_feature)
            if dist < nearest:
                nearest=dist
                classlabel=v2[0]
        print "test data ",i," ,label: ",classlabel

file_train=sys.argv[1]
file_test=sys.argv[2]

data_train=loaddata(file_train)
data_test=loaddata(file_test)
classifier_knn(data_test,data_train)
