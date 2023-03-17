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

Run the container, mounting your path so we can access data inside or outside of the container

    docker run --name swarp -d -t -v "$(pwd)"/scripts:/opt/scripts/ swarp:latest

Exec into the container where you can run swarp from the command line

    docker exec -it swarp /bin/bash
    

### Getting data & making mosaics

## SDSS data

SDSS data must be downloaded outside of the container at the moment due to bugs with wget and the SDSS server. 
First you should go to the SDSS website (https://dr12.sdss.org/mosaics/) and generate a J*.sh file for your selection. 
There are small and large examples of the J*.sh file in this repository that you can use.

Now run the get-sdss-data-parallel.sh script from outside the container with your J*.sh file as the input argument. For very large mosaics, the downloads can take a while and I've noticed it can hang on the final few files. You may need to cancel and restart the script, but it will not re-download files already obtained. It is best to check how many files are downloaded `ls \*.bz2 | wc -l` and compare it to what is expected.

Then to create the mosaic, run the J*.sh script from inside the container.

## LOFAR

This can all be run inside the container with one script. First, select a sky position and area from the LOFAR surveys website and download a CSV file containing the relevant file paths. https://vo.astron.nl/lotss_dr2/q/query_mosaics/form

Then run the get-lofar-data-parallel.sh script with the input mosaic CSV file. Data will be downloaded and a mosaic will be made.



### Options

Verbose is set to FULL, but you can change this inside the J*.sh script
