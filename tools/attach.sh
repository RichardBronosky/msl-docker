if [[ -z $1 ]]; then
  echo "Usage: $0 container_id"
else
  docker exec -it $1 bash
fi
