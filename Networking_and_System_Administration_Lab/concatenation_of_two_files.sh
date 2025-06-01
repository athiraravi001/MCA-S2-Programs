echo "Enter first filename : "
read a
if [ -f "$a" ]
then
  cat "$a"
else
  echo "File '$a' not found."
fi

echo "Enter second filename : "
read b
if [ -f "$b" ]
then
  cat "$b"
else
  echo "File '$b' not found."
fi

echo "----- After Concatenating -----"
cat "$a" "$b" > cc
cat cc

#---------------------------------------------------- OR ----------------------------------------------------

echo "Enter first filename"
read a
cat "$a"

echo "Enter second filename"
read b
cat "$b"

echo "----- After Concatenating -----"
cat "$a" "$b" > cc
cat cc
