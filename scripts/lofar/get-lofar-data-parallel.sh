# download some LOFAR survey fields
# assuming you have retrieved a file list from the LOFAR surveys website and called it lofar-files.csv

# get list of file locations
grep "http" lofar-files.csv | cut -c-51 > lofar-files.txt

# download files in parallel
echo "downloading files..."
cat lofar-files.txt | xargs -P 30 -I{} wget -nc -q {}

# rename files to have .fits
ls P* | while read line; do mv $line $line$".fits"; done

# Now run swarp from the terminal as:
# swarp `ls P*.fits`
