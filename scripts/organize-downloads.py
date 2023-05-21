#!/bin/python3
import os

mvDownloadPath ='mv /home/boater/downloads/' 
downloadPath ='/home/boater/downloads/' 

officePath = '/home/boater/downloads/office-docs/'
officeTypes = [
        '*.pdf', '*.xls', '*.doc', '*.dot', '*.pot', '*.ppt', '*.pps', '*.xlsx',
        '*.docx', '*.dotx', '*.potx', '*.pptx', '*.ppsx', '*.xlsm', '*.docm',
        '*.dotm', '*.potm', '*.pptm', '*.ppsm'
        ]

mediaPath ='/home/boater/downloads/media-files/'
mediaTypes = [
        '*.png', '*.jpg', '*.heic', '*.mp4',
        ]


codePath = '/home/boater/downloads/coding-files/'
codeRelated = [
        '*.c', '*.o ', '*.h', '*.cpp ', '*.cs ', '*.js', '*.ts ', '*.jsx ', '*.tsx ',
        '*.sh ', '*.py', '*.java ', '*.javac', '*.json ', '*.sql ', '*.md '
        ]

miscPath = '/home/boater/downloads/misc/'

def move(fileName, dirName):
    #os.system('mv ' + downloadPath + fileName + ' ' + dirName)
    print(fileName)

for fileType in mediaTypes:
    os.system(mvDownloadPath + fileType + ' ' +  mediaPath)
for fileType in officeTypes:
    os.system(mvDownloadPath + fileType + ' ' +  officePath)
for fileType in codeRelated:
    os.system(mvDownloadPath + fileType + ' ' +  codePath)


# Move all remaining miscellaneous files to the 'misc/' folder
fileList = os.listdir(downloadPath)
for file in fileList:
    if False == os.path.isdir(downloadPath + file) :
        if os.path.isfile(downloadPath + file):
            fileName = file.replace(' ', '\ ')
            os.system(mvDownloadPath + fileName + ' ' + miscPath)
