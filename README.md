# A containerised version of the mosaicking software SWARP

**The SWARP website is here:** https://www.astromatic.net/software/swarp/

**The SWARP Github page is here:** https://github.com/astromatic/swarp

**The SWARP documentation (PDF download):** https://raw.githubusercontent.com/astromatic/swarp/legacy_doc/prevdoc/swarp.pdf

**Use this webpage to obtain the SDSS fields required for a certain mosaic:** https://dr12.sdss.org/mosaics/

**Use this webpage to obtain the LOFAR fields required for a certain mosaic:** https://vo.astron.nl/lotss_dr2/q/query_mosaics/form

## How to build and run the container

Clone this repository

Build the image

    docker build . -f ./Dockerfile --tag swarp:latest

Run the container

    docker run --name swarp -d -t -v "$(pwd)"/scripts:/opt/scripts/ swarp:latest


### Getting data

## SDSS data

Data must be downloaded outside of the container at the moment due to bugs with wget and the SDSS server.

Run the get-data-parallel.sh script from outside the container with your input mosaic name file (J*.sh) from the SDSS website. https://dr12.sdss.org/mosaics/
There are small and large versions in this repository.

## LOFAR

Run the get-data-parallel-lofar.sh script from outside the container with your input mosaic CSV file from the LOFAR surveys website https://vo.astron.nl/lotss_dr2/q/query_mosaics/form

### Making mosaics

Exec into the container

    docker exec -it swarp /bin/bash

After downloading the data into the small or large folders, run the J*.sh script.


### Options

Verbose is set to FULL, but you can change this inside the J*.sh script
