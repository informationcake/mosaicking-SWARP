# swarp-container
A containerised version of the mosaicking software SWARP



docker run --name swarp -d -t -v "$(pwd)"/scripts:/opt/scripts/ swarp:latest

docker exec -it swarp /bin/bash

