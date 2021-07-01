MESSAGE="\n==> updating "
UNCOOL="==> not the coolest way to run this script :..(\n"
GET_OUTDATED=`vagrant box outdated --global|grep outdated|awk -F\' '{print $2}'`

if test `which lolcat 2>/dev/null`
then
  for i in $GET_OUTDATED; do
    echo -e "$MESSAGE$i\n"|lolcat && vagrant box add $i
  done
else
  for i in $GET_OUTDATED; do
    echo -e "$MESSAGE$i\n$UNCOOL" && vagrant box add $i
  done
fi && vagrant box prune
