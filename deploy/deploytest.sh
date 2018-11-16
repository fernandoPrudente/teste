docker run --rm fpmatos/nodetest echo "Docker Image OK"

if [ ! $? -eq 0 ]; then
 echo "Docker Image Create Error!"
 exit 125
fi;