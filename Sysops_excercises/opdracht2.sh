#!/bin/bash

GIT_REPO="https://github.com/Rac-Software-Development/fastapi_passworder.git "
DIRECTORY="passworder_test"
STATUS_CODE=$?

git clone $GIT_REPO $DIRECTORY
cd -- "/home/arief/Sysops_excercises/$DIRECTORY"

python3 -m unittest discover .
sleep 2

if [ $STATUS_CODE != 0 ] || [ -d $DIRECTORY ] ; then
    echo "Unit test has failed, Check if folder $DIRECTORY exists"
    exit 1

else
    echo "Working directory is $(pwd)"
    pip3 install -r requirements.txt --upgrade
    echo "Clone of repo successfull"
fi
    echo "Working directory is $(pwd)"

# Set the version of the passworder application in version.txt
touch version.txt
git describe --tags > version.txt
echo "New version of passworder is is $(cat version.txt)"
cd ..
echo "Working directory is $(pwd)"
mv passworder_test passworder
cd passworder/passworder
python3 main.py




