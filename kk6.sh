#!/bin/bash
if [ -z $DISPLAY ]
then
DIALOG=dialog
else
if command -v kdialog &>/dev/null
then
DIALOG=kdialog
else
DIALOG=Xdialog
fi
fi

$DIALOG –title “Mi primer dialogo” \
–yesno “Si o no?” 10 30

case $? in
0)
echo “Has escogido si!!”;;
1)
echo “Has escodigo no!!”;;
255)
echo “Has cerrado el dialogo, sin decir si o no!!”;;
esac 
