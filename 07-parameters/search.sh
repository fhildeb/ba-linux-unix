# treegrep: grep-Kommando fuer alle Dateien eines ganzen Directorybaumes
# Quelle: Herold, H.: UNIX-Shells, Addison-Wesley, 1992
echo "usage: treegrep '[grep-options] suchausdruck' 'datei(en)' [directory]"
echo "Ohne Angabe eines Directorys wird das akt. Verzeichnis verwendet!"
if [ $# -lt 2 ]
then echo "zu wenige Parameter!"
exit 1
fi
regulaerer_ausdruck=$1
dir=${3:-`pwd`}
for name in `find $dir -type d -print`
do grep $regulaerer_ausdruck $name/$2
done
echo "treegrep beendet"
