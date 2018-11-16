docker run --rm fpmatos/nodetesteds echo "Docker Image OK"

if [ ! $? -eq 0 ]; then
 echo "Docker Image Create Error!"
 exit 125
fi;