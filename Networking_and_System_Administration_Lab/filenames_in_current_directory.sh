echo "----- Filenames -----"
for i in `ls`
do
  if [ -f "$i" ]
  then
    echo "$i"
  fi
done
