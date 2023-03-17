# A script to download some LOFAR survey fields and make a mosaic.
# Assuming you have retrieved a file list (.csv) from the LOFAR surveys website and given it as an argument to this script.

# get list of file locations from an input csv file provided as an argument
grep "http" $1 | cut -c-51 > lofar-files.txt

# download files in parallel
echo "downloading files..."
cat lofar-files.txt | xargs -P 30 -I{} wget -nc -q {}

# rename files to have .fits
ls P* | while read line; do mv $line $line$".fits"; done

# Now run swarp (ensure you are inside the container)
swarp `ls P*.fits`

# ---

# Whilst SDSS data has the issue with wget not working from inside the container, LOFAR data does not have this issue. 

# Therefore you can run this whole script from inside the container, so uncomment the swarp line for full automation.
