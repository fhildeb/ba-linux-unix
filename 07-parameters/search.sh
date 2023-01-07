if [ $# -lt 2 ]
then echo "Too few parameters!"
    echo "Usage: bash search.sh 'grep-options' 'file' directory"
    echo "Without specification of a directory the current directory is used!"
    exit 1
fi
regulaerer_ausdruck=$1
dir=${3:-`pwd`}
echo $dir
for name in `find $dir -type d -print`
    do grep $regulaerer_ausdruck $name/$2
done
echo "Search ended"
