# this script will search for and grab the fits file list from the main script, and download them in parallel

# get list of files
grep wget J013151.00+303432.0.sh | cut -c 17- > files.txt

# download files in parallel
cat files.txt | xargs -P 30 -I{} wget {}

# Then run ./J013151.00+303432.0.sh to make the mosaic
