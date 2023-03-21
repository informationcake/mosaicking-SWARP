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



### Notes on performance and options

At the end of the J*.sh script is the SWARP parameter file. SWARP needs enough RAM to read in each input image one at a time, but it needs enough disk space to create reprojected fits and weight images for each input file. At the end, it uses as much RAM as possible when co-adding all the frames together into the single final mosaic, but can use disk space to achieve this also. In practise the default is fine.

Verbose is set to NORMAL for scripts in this repository, but you can change this inside the J*.sh script.
Verbose is set to QUIET for J0*.sh scripts downloaded from the SDSS website.
VMEM_MAX (disk space to use as virtual memory) is set to 20GB - useful if you have very little RAM available.
MEM_MAX (RAM) is set to 110GB - mainly used at the end when co-adding images.

Creating large mosaics that have lots of small input files uses an enormous amount of disk space. A 5x5 degree mosaic created from 1700 smaller fits images would need 23 TB of free disk space to create the intermediary files before co-adding them all to make the final mosaic. This can be worked around by creating the mosaic in smaller pieces, but requires intervention by hand to achieve this.

When mosaicking together lots (100's) of small images the limiting factor is disk space. But SWARP can make large mosaics if the input images are large. For example, creating a 10x10 degree mosaic of LOFAR data: When mosaicking together 25 lofar images, each 600 MB, 8000x8000 pixels: it uses 20GB of disk space, 6GB RAM for reprojectionm, and 25GB RAM for coadd.



