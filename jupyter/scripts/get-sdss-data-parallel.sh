# this script will search for and grab the fits file list from the main script, and download them in parallel.
# it requires the J*.sh file as an argument from the SDSS mosaic generation server to grab the list of requires fields.

# get list of files
grep "https" $1 | cut -c 17- > sdss-files.txt

# download files in parallel
echo "downloading "$(wc -l < sdss-files.txt)" files..."
cat sdss-files.txt | xargs -P 30 -I{} wget -nc {}

# decompress files in parallel
echo "decompressing files..."
grep https $1 | cut -c 84- > bz2-files.txt
cat bz2-files.txt | xargs -P 30 -I{} bzip2 -d -k {}

# Then run ./J013151.00+303432.0.sh to make the mosaic
