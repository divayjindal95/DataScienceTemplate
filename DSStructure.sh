var=$PWD

echo $var


cd .template

cp ./requirements.txt ../
cp ./Readme.md ../

cd .. 

mkdir  data
cd data
mkdir external
mkdir raw
mkdir interim
mkdir processed
cd ..

mkdir docs

mkdir models

mkdir notebooks

mkdir references

mkdir reports
cd reports
mkdir figures
cd ..

mkdir src

echo "select the python version:"
echo "[1] python2"
echo "[2] python3"

read pyCounter

echo $pyCounter

if [ $pyCounter -eq 1 ]
then
        pyVer="python"
        echo $pyVer
else
        pyVer="python3"
        echo $pyVer
fi

virtualenv -p $pyVer venv








