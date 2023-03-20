#!/bin/bash
#
# This script will create a mosaic of SDSS images.
#
# To invoke this script do:
#
# $ /bin/bash J011700.00+280000.0.sh
#
hasPhotoObj=''
if [[ -n "${BOSS_PHOTOOBJ}" ]]; then
    if [[ -d ${BOSS_PHOTOOBJ}/frames/301 ]]; then
        echo "BOSS_PHOTOOBJ detected.  Will attempt to use files on disk."
        hasPhotoObj=True
    fi
fi
for cmd in swarp bzip2 wget; do
    hasCmd=$(which ${cmd} 2>/dev/null)
    if [[ -z "${hasCmd}" ]]; then
        echo "This script requires ${cmd}, which is not in your \$PATH."
        exit 1
    fi
done
if [[ -z "${hasPhotoObj}" ]]; then
    if [[ ! -f frame-r-008105-1-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0043.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0043.fits.bz2 > frame-r-008105-1-0043.fits
    fi
    if [[ ! -f frame-r-008116-2-0318.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0318.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0318.fits.bz2 > frame-r-008116-2-0318.fits
    fi
    if [[ ! -f frame-r-007757-5-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0114.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0114.fits.bz2 > frame-r-007757-5-0114.fits
    fi
    if [[ ! -f frame-r-007757-5-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0115.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0115.fits.bz2 > frame-r-007757-5-0115.fits
    fi
    if [[ ! -f frame-r-007757-6-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0114.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0114.fits.bz2 > frame-r-007757-6-0114.fits
    fi
    if [[ ! -f frame-r-008056-5-0037.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0037.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0037.fits.bz2 > frame-r-008056-5-0037.fits
    fi
    if [[ ! -f frame-r-008105-5-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0047.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0047.fits.bz2 > frame-r-008105-5-0047.fits
    fi
    if [[ ! -f frame-r-008105-4-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0045.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0045.fits.bz2 > frame-r-008105-4-0045.fits
    fi
    if [[ ! -f frame-r-008105-4-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0047.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0047.fits.bz2 > frame-r-008105-4-0047.fits
    fi
    if [[ ! -f frame-r-008116-4-0319.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0319.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0319.fits.bz2 > frame-r-008116-4-0319.fits
    fi
    if [[ ! -f frame-r-008105-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0047.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0047.fits.bz2 > frame-r-008105-2-0047.fits
    fi
    if [[ ! -f frame-r-008105-3-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0045.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0045.fits.bz2 > frame-r-008105-3-0045.fits
    fi
    if [[ ! -f frame-r-008105-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0046.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0046.fits.bz2 > frame-r-008105-3-0046.fits
    fi
    if [[ ! -f frame-r-008105-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0047.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0047.fits.bz2 > frame-r-008105-3-0047.fits
    fi
    if [[ ! -f frame-r-008116-3-0320.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0320.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0320.fits.bz2 > frame-r-008116-3-0320.fits
    fi
    if [[ ! -f frame-r-008116-3-0321.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0321.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0321.fits.bz2 > frame-r-008116-3-0321.fits
    fi
    if [[ ! -f frame-r-008105-1-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0045.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0045.fits.bz2 > frame-r-008105-1-0045.fits
    fi
    if [[ ! -f frame-r-008105-1-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0046.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0046.fits.bz2 > frame-r-008105-1-0046.fits
    fi
    if [[ ! -f frame-r-008105-1-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0047.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0047.fits.bz2 > frame-r-008105-1-0047.fits
    fi
    if [[ ! -f frame-r-008116-1-0319.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0319.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0319.fits.bz2 > frame-r-008116-1-0319.fits
    fi
    if [[ ! -f frame-r-008116-1-0320.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0320.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0320.fits.bz2 > frame-r-008116-1-0320.fits
    fi
    if [[ ! -f frame-r-008116-1-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0322.fits.bz2 > frame-r-008116-1-0322.fits
    fi
    if [[ ! -f frame-r-007757-5-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0117.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0117.fits.bz2 > frame-r-007757-5-0117.fits
    fi
    if [[ ! -f frame-r-007757-5-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0118.fits.bz2 > frame-r-007757-5-0118.fits
    fi
    if [[ ! -f frame-r-007757-6-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0116.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0116.fits.bz2 > frame-r-007757-6-0116.fits
    fi
    if [[ ! -f frame-r-007757-6-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0118.fits.bz2 > frame-r-007757-6-0118.fits
    fi
    if [[ ! -f frame-r-008056-5-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0040.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0040.fits.bz2 > frame-r-008056-5-0040.fits
    fi
    if [[ ! -f frame-r-008056-5-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0041.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0041.fits.bz2 > frame-r-008056-5-0041.fits
    fi
    if [[ ! -f frame-r-008056-6-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0038.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0038.fits.bz2 > frame-r-008056-6-0038.fits
    fi
    if [[ ! -f frame-r-008056-6-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0039.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0039.fits.bz2 > frame-r-008056-6-0039.fits
    fi
    if [[ ! -f frame-r-007757-4-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0117.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0117.fits.bz2 > frame-r-007757-4-0117.fits
    fi
    if [[ ! -f frame-r-007757-4-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0118.fits.bz2 > frame-r-007757-4-0118.fits
    fi
    if [[ ! -f frame-r-008056-4-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0040.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0040.fits.bz2 > frame-r-008056-4-0040.fits
    fi
    if [[ ! -f frame-r-007757-2-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0117.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0117.fits.bz2 > frame-r-007757-2-0117.fits
    fi
    if [[ ! -f frame-r-007757-3-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0116.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0116.fits.bz2 > frame-r-007757-3-0116.fits
    fi
    if [[ ! -f frame-r-007757-3-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0118.fits.bz2 > frame-r-007757-3-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0040.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0040.fits.bz2 > frame-r-008056-3-0040.fits
    fi
    if [[ ! -f frame-r-007757-1-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0118.fits.bz2 > frame-r-007757-1-0118.fits
    fi
    if [[ ! -f frame-r-008111-1-0175.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0175.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0175.fits.bz2 > frame-r-008111-1-0175.fits
    fi
    if [[ ! -f frame-r-008112-1-0035.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0035.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0035.fits.bz2 > frame-r-008112-1-0035.fits
    fi
    if [[ ! -f frame-r-008105-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0048.fits.bz2 > frame-r-008105-5-0048.fits
    fi
    if [[ ! -f frame-r-008105-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0051.fits.bz2 > frame-r-008105-5-0051.fits
    fi
    if [[ ! -f frame-r-008105-6-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0049.fits.bz2 > frame-r-008105-6-0049.fits
    fi
    if [[ ! -f frame-r-008105-6-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0051.fits.bz2 > frame-r-008105-6-0051.fits
    fi
    if [[ ! -f frame-r-008116-5-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0324.fits.bz2 > frame-r-008116-5-0324.fits
    fi
    if [[ ! -f frame-r-008116-5-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0325.fits.bz2 > frame-r-008116-5-0325.fits
    fi
    if [[ ! -f frame-r-008116-6-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0323.fits.bz2 > frame-r-008116-6-0323.fits
    fi
    if [[ ! -f frame-r-008116-6-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0324.fits.bz2 > frame-r-008116-6-0324.fits
    fi
    if [[ ! -f frame-r-008105-4-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0048.fits.bz2 > frame-r-008105-4-0048.fits
    fi
    if [[ ! -f frame-r-008116-4-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0323.fits.bz2 > frame-r-008116-4-0323.fits
    fi
    if [[ ! -f frame-r-008116-4-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0324.fits.bz2 > frame-r-008116-4-0324.fits
    fi
    if [[ ! -f frame-r-008105-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0048.fits.bz2 > frame-r-008105-2-0048.fits
    fi
    if [[ ! -f frame-r-008105-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0051.fits.bz2 > frame-r-008105-2-0051.fits
    fi
    if [[ ! -f frame-r-008105-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0048.fits.bz2 > frame-r-008105-3-0048.fits
    fi
    if [[ ! -f frame-r-008116-3-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0323.fits.bz2 > frame-r-008116-3-0323.fits
    fi
    if [[ ! -f frame-r-008105-1-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0049.fits.bz2 > frame-r-008105-1-0049.fits
    fi
    if [[ ! -f frame-r-008116-1-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0326.fits.bz2 > frame-r-008116-1-0326.fits
    fi
    if [[ ! -f frame-r-008116-2-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0323.fits.bz2 > frame-r-008116-2-0323.fits
    fi
    if [[ ! -f frame-r-008116-2-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0326.fits.bz2 > frame-r-008116-2-0326.fits
    fi
    if [[ ! -f frame-r-007757-5-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0120.fits.bz2 > frame-r-007757-5-0120.fits
    fi
    if [[ ! -f frame-r-007757-5-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0122.fits.bz2 > frame-r-007757-5-0122.fits
    fi
    if [[ ! -f frame-r-007757-6-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0121.fits.bz2 > frame-r-007757-6-0121.fits
    fi
    if [[ ! -f frame-r-008056-5-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0042.fits.bz2 > frame-r-008056-5-0042.fits
    fi
    if [[ ! -f frame-r-008056-5-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0043.fits.bz2 > frame-r-008056-5-0043.fits
    fi
    if [[ ! -f frame-r-008056-6-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0042.fits.bz2 > frame-r-008056-6-0042.fits
    fi
    if [[ ! -f frame-r-008056-6-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0043.fits.bz2 > frame-r-008056-6-0043.fits
    fi
    if [[ ! -f frame-r-008056-6-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0044.fits.bz2 > frame-r-008056-6-0044.fits
    fi
    if [[ ! -f frame-r-007757-4-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0120.fits.bz2 > frame-r-007757-4-0120.fits
    fi
    if [[ ! -f frame-r-007757-4-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0121.fits.bz2 > frame-r-007757-4-0121.fits
    fi
    if [[ ! -f frame-r-008056-4-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0042.fits.bz2 > frame-r-008056-4-0042.fits
    fi
    if [[ ! -f frame-r-008056-4-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0044.fits.bz2 > frame-r-008056-4-0044.fits
    fi
    if [[ ! -f frame-r-007757-2-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0121.fits.bz2 > frame-r-007757-2-0121.fits
    fi
    if [[ ! -f frame-r-007757-2-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0122.fits.bz2 > frame-r-007757-2-0122.fits
    fi
    if [[ ! -f frame-r-007757-3-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0121.fits.bz2 > frame-r-007757-3-0121.fits
    fi
    if [[ ! -f frame-r-008056-3-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0042.fits.bz2 > frame-r-008056-3-0042.fits
    fi
    if [[ ! -f frame-r-008056-3-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0044.fits.bz2 > frame-r-008056-3-0044.fits
    fi
    if [[ ! -f frame-r-008056-3-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0045.fits.bz2 > frame-r-008056-3-0045.fits
    fi
    if [[ ! -f frame-r-007757-1-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0120.fits.bz2 > frame-r-007757-1-0120.fits
    fi
    if [[ ! -f frame-r-007757-1-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0121.fits.bz2 > frame-r-007757-1-0121.fits
    fi
    if [[ ! -f frame-r-007757-1-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0122.fits.bz2 > frame-r-007757-1-0122.fits
    fi
    if [[ ! -f frame-r-008056-1-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0043.fits.bz2 > frame-r-008056-1-0043.fits
    fi
    if [[ ! -f frame-r-008056-1-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0044.fits.bz2 > frame-r-008056-1-0044.fits
    fi
    if [[ ! -f frame-r-008056-1-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0045.fits.bz2 > frame-r-008056-1-0045.fits
    fi
    if [[ ! -f frame-r-008056-2-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0045.fits.bz2 > frame-r-008056-2-0045.fits
    fi
    if [[ ! -f frame-r-004843-6-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0041.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0041.fits.bz2 > frame-r-004843-6-0041.fits
    fi
    if [[ ! -f frame-r-008055-6-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0072.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0072.fits.bz2 > frame-r-008055-6-0072.fits
    fi
    if [[ ! -f frame-r-008112-2-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0038.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0038.fits.bz2 > frame-r-008112-2-0038.fits
    fi
    if [[ ! -f frame-r-008111-1-0177.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0177.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0177.fits.bz2 > frame-r-008111-1-0177.fits
    fi
    if [[ ! -f frame-r-008111-2-0176.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0176.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0176.fits.bz2 > frame-r-008111-2-0176.fits
    fi
    if [[ ! -f frame-r-008111-2-0177.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0177.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0177.fits.bz2 > frame-r-008111-2-0177.fits
    fi
    if [[ ! -f frame-r-008111-2-0178.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0178.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0178.fits.bz2 > frame-r-008111-2-0178.fits
    fi
    if [[ ! -f frame-r-008112-1-0036.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0036.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0036.fits.bz2 > frame-r-008112-1-0036.fits
    fi
    if [[ ! -f frame-r-008112-1-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0039.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0039.fits.bz2 > frame-r-008112-1-0039.fits
    fi
    if [[ ! -f frame-r-008105-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0052.fits.bz2 > frame-r-008105-5-0052.fits
    fi
    if [[ ! -f frame-r-008105-5-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0054.fits.bz2 > frame-r-008105-5-0054.fits
    fi
    if [[ ! -f frame-r-008105-6-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0052.fits.bz2 > frame-r-008105-6-0052.fits
    fi
    if [[ ! -f frame-r-008105-6-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0053.fits.bz2 > frame-r-008105-6-0053.fits
    fi
    if [[ ! -f frame-r-008105-6-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0055.fits.bz2 > frame-r-008105-6-0055.fits
    fi
    if [[ ! -f frame-r-008116-5-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0327.fits.bz2 > frame-r-008116-5-0327.fits
    fi
    if [[ ! -f frame-r-008116-5-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0328.fits.bz2 > frame-r-008116-5-0328.fits
    fi
    if [[ ! -f frame-r-008116-5-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0329.fits.bz2 > frame-r-008116-5-0329.fits
    fi
    if [[ ! -f frame-r-008116-6-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0329.fits.bz2 > frame-r-008116-6-0329.fits
    fi
    if [[ ! -f frame-r-008116-6-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0330.fits.bz2 > frame-r-008116-6-0330.fits
    fi
    if [[ ! -f frame-r-008105-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0052.fits.bz2 > frame-r-008105-4-0052.fits
    fi
    if [[ ! -f frame-r-008105-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0053.fits.bz2 > frame-r-008105-4-0053.fits
    fi
    if [[ ! -f frame-r-008116-4-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0327.fits.bz2 > frame-r-008116-4-0327.fits
    fi
    if [[ ! -f frame-r-008116-4-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0328.fits.bz2 > frame-r-008116-4-0328.fits
    fi
    if [[ ! -f frame-r-008116-4-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0329.fits.bz2 > frame-r-008116-4-0329.fits
    fi
    if [[ ! -f frame-r-008105-2-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0053.fits.bz2 > frame-r-008105-2-0053.fits
    fi
    if [[ ! -f frame-r-008105-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0054.fits.bz2 > frame-r-008105-2-0054.fits
    fi
    if [[ ! -f frame-r-008105-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0055.fits.bz2 > frame-r-008105-2-0055.fits
    fi
    if [[ ! -f frame-r-008105-3-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0052.fits.bz2 > frame-r-008105-3-0052.fits
    fi
    if [[ ! -f frame-r-008105-3-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0053.fits.bz2 > frame-r-008105-3-0053.fits
    fi
    if [[ ! -f frame-r-008105-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0054.fits.bz2 > frame-r-008105-3-0054.fits
    fi
    if [[ ! -f frame-r-008105-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0055.fits.bz2 > frame-r-008105-3-0055.fits
    fi
    if [[ ! -f frame-r-008116-3-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0327.fits.bz2 > frame-r-008116-3-0327.fits
    fi
    if [[ ! -f frame-r-008116-3-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0328.fits.bz2 > frame-r-008116-3-0328.fits
    fi
    if [[ ! -f frame-r-008116-3-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0329.fits.bz2 > frame-r-008116-3-0329.fits
    fi
    if [[ ! -f frame-r-008116-3-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0330.fits.bz2 > frame-r-008116-3-0330.fits
    fi
    if [[ ! -f frame-r-008105-1-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0053.fits.bz2 > frame-r-008105-1-0053.fits
    fi
    if [[ ! -f frame-r-008105-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0054.fits.bz2 > frame-r-008105-1-0054.fits
    fi
    if [[ ! -f frame-r-008116-1-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0328.fits.bz2 > frame-r-008116-1-0328.fits
    fi
    if [[ ! -f frame-r-008116-1-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0330.fits.bz2 > frame-r-008116-1-0330.fits
    fi
    if [[ ! -f frame-r-008116-2-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0330.fits.bz2 > frame-r-008116-2-0330.fits
    fi
    if [[ ! -f frame-r-007757-5-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0126.fits.bz2 > frame-r-007757-5-0126.fits
    fi
    if [[ ! -f frame-r-007757-6-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0125.fits.bz2 > frame-r-007757-6-0125.fits
    fi
    if [[ ! -f frame-r-008056-6-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0048.fits.bz2 > frame-r-008056-6-0048.fits
    fi
    if [[ ! -f frame-r-007757-4-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0126.fits.bz2 > frame-r-007757-4-0126.fits
    fi
    if [[ ! -f frame-r-007757-3-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0124.fits.bz2 > frame-r-007757-3-0124.fits
    fi
    if [[ ! -f frame-r-008056-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0047.fits.bz2 > frame-r-008056-3-0047.fits
    fi
    if [[ ! -f frame-r-007757-1-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0123.fits.bz2 > frame-r-007757-1-0123.fits
    fi
    if [[ ! -f frame-r-007757-1-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0124.fits.bz2 > frame-r-007757-1-0124.fits
    fi
    if [[ ! -f frame-r-007757-1-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0126.fits.bz2 > frame-r-007757-1-0126.fits
    fi
    if [[ ! -f frame-r-008056-1-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0046.fits.bz2 > frame-r-008056-1-0046.fits
    fi
    if [[ ! -f frame-r-008056-1-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0048.fits.bz2 > frame-r-008056-1-0048.fits
    fi
    if [[ ! -f frame-r-008056-2-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0046.fits.bz2 > frame-r-008056-2-0046.fits
    fi
    if [[ ! -f frame-r-008056-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0047.fits.bz2 > frame-r-008056-2-0047.fits
    fi
    if [[ ! -f frame-r-004843-5-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0045.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0045.fits.bz2 > frame-r-004843-5-0045.fits
    fi
    if [[ ! -f frame-r-004843-6-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0042.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0042.fits.bz2 > frame-r-004843-6-0042.fits
    fi
    if [[ ! -f frame-r-008055-6-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0076.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0076.fits.bz2 > frame-r-008055-6-0076.fits
    fi
    if [[ ! -f frame-r-008055-6-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0077.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0077.fits.bz2 > frame-r-008055-6-0077.fits
    fi
    if [[ ! -f frame-r-008055-6-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0078.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0078.fits.bz2 > frame-r-008055-6-0078.fits
    fi
    if [[ ! -f frame-r-008112-2-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0040.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0040.fits.bz2 > frame-r-008112-2-0040.fits
    fi
    if [[ ! -f frame-r-008112-2-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0042.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0042.fits.bz2 > frame-r-008112-2-0042.fits
    fi
    if [[ ! -f frame-r-008112-2-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0043.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0043.fits.bz2 > frame-r-008112-2-0043.fits
    fi
    if [[ ! -f frame-r-008112-3-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0043.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0043.fits.bz2 > frame-r-008112-3-0043.fits
    fi
    if [[ ! -f frame-r-008111-1-0181.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0181.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0181.fits.bz2 > frame-r-008111-1-0181.fits
    fi
    if [[ ! -f frame-r-008111-1-0182.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0182.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0182.fits.bz2 > frame-r-008111-1-0182.fits
    fi
    if [[ ! -f frame-r-008111-2-0179.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0179.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0179.fits.bz2 > frame-r-008111-2-0179.fits
    fi
    if [[ ! -f frame-r-008111-2-0180.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0180.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0180.fits.bz2 > frame-r-008111-2-0180.fits
    fi
    if [[ ! -f frame-r-008111-2-0181.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0181.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0181.fits.bz2 > frame-r-008111-2-0181.fits
    fi
    if [[ ! -f frame-r-008111-2-0182.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0182.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0182.fits.bz2 > frame-r-008111-2-0182.fits
    fi
    if [[ ! -f frame-r-008112-1-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0040.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0040.fits.bz2 > frame-r-008112-1-0040.fits
    fi
    if [[ ! -f frame-r-008112-1-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0041.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0041.fits.bz2 > frame-r-008112-1-0041.fits
    fi
    if [[ ! -f frame-r-008112-1-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0043.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0043.fits.bz2 > frame-r-008112-1-0043.fits
    fi
    if [[ ! -f frame-r-008105-5-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0056.fits.bz2 > frame-r-008105-5-0056.fits
    fi
    if [[ ! -f frame-r-008105-5-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0057.fits.bz2 > frame-r-008105-5-0057.fits
    fi
    if [[ ! -f frame-r-008105-5-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0058.fits.bz2 > frame-r-008105-5-0058.fits
    fi
    if [[ ! -f frame-r-008105-6-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0056.fits.bz2 > frame-r-008105-6-0056.fits
    fi
    if [[ ! -f frame-r-008105-6-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0057.fits.bz2 > frame-r-008105-6-0057.fits
    fi
    if [[ ! -f frame-r-008116-5-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0331.fits.bz2 > frame-r-008116-5-0331.fits
    fi
    if [[ ! -f frame-r-008116-5-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0332.fits.bz2 > frame-r-008116-5-0332.fits
    fi
    if [[ ! -f frame-r-008116-6-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0331.fits.bz2 > frame-r-008116-6-0331.fits
    fi
    if [[ ! -f frame-r-008116-6-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0333.fits.bz2 > frame-r-008116-6-0333.fits
    fi
    if [[ ! -f frame-r-008105-4-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0057.fits.bz2 > frame-r-008105-4-0057.fits
    fi
    if [[ ! -f frame-r-008116-4-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0331.fits.bz2 > frame-r-008116-4-0331.fits
    fi
    if [[ ! -f frame-r-008105-2-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0056.fits.bz2 > frame-r-008105-2-0056.fits
    fi
    if [[ ! -f frame-r-008105-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0057.fits.bz2 > frame-r-008105-2-0057.fits
    fi
    if [[ ! -f frame-r-008105-2-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0058.fits.bz2 > frame-r-008105-2-0058.fits
    fi
    if [[ ! -f frame-r-008105-3-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0056.fits.bz2 > frame-r-008105-3-0056.fits
    fi
    if [[ ! -f frame-r-008105-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0057.fits.bz2 > frame-r-008105-3-0057.fits
    fi
    if [[ ! -f frame-r-008116-3-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0332.fits.bz2 > frame-r-008116-3-0332.fits
    fi
    if [[ ! -f frame-r-008105-1-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0057.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0057.fits.bz2 > frame-r-008105-1-0057.fits
    fi
    if [[ ! -f frame-r-008105-1-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0058.fits.bz2 > frame-r-008105-1-0058.fits
    fi
    if [[ ! -f frame-r-008116-1-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0332.fits.bz2 > frame-r-008116-1-0332.fits
    fi
    if [[ ! -f frame-r-008116-2-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0332.fits.bz2 > frame-r-008116-2-0332.fits
    fi
    if [[ ! -f frame-r-008116-2-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0333.fits.bz2 > frame-r-008116-2-0333.fits
    fi
    if [[ ! -f frame-r-007757-5-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0127.fits.bz2 > frame-r-007757-5-0127.fits
    fi
    if [[ ! -f frame-r-007757-5-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0128.fits.bz2 > frame-r-007757-5-0128.fits
    fi
    if [[ ! -f frame-r-007757-6-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0128.fits.bz2 > frame-r-007757-6-0128.fits
    fi
    if [[ ! -f frame-r-007757-6-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0130.fits.bz2 > frame-r-007757-6-0130.fits
    fi
    if [[ ! -f frame-r-008056-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0049.fits.bz2 > frame-r-008056-5-0049.fits
    fi
    if [[ ! -f frame-r-008056-6-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0052.fits.bz2 > frame-r-008056-6-0052.fits
    fi
    if [[ ! -f frame-r-007757-4-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0129.fits.bz2 > frame-r-007757-4-0129.fits
    fi
    if [[ ! -f frame-r-007757-4-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0130.fits.bz2 > frame-r-007757-4-0130.fits
    fi
    if [[ ! -f frame-r-008056-4-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0050.fits.bz2 > frame-r-008056-4-0050.fits
    fi
    if [[ ! -f frame-r-008056-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0052.fits.bz2 > frame-r-008056-4-0052.fits
    fi
    if [[ ! -f frame-r-007757-2-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0127.fits.bz2 > frame-r-007757-2-0127.fits
    fi
    if [[ ! -f frame-r-007757-2-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0128.fits.bz2 > frame-r-007757-2-0128.fits
    fi
    if [[ ! -f frame-r-007757-3-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0127.fits.bz2 > frame-r-007757-3-0127.fits
    fi
    if [[ ! -f frame-r-007757-3-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0128.fits.bz2 > frame-r-007757-3-0128.fits
    fi
    if [[ ! -f frame-r-007757-3-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0129.fits.bz2 > frame-r-007757-3-0129.fits
    fi
    if [[ ! -f frame-r-008056-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0049.fits.bz2 > frame-r-008056-3-0049.fits
    fi
    if [[ ! -f frame-r-008056-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0051.fits.bz2 > frame-r-008056-3-0051.fits
    fi
    if [[ ! -f frame-r-008056-3-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0052.fits.bz2 > frame-r-008056-3-0052.fits
    fi
    if [[ ! -f frame-r-008056-1-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0049.fits.bz2 > frame-r-008056-1-0049.fits
    fi
    if [[ ! -f frame-r-008056-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0051.fits.bz2 > frame-r-008056-1-0051.fits
    fi
    if [[ ! -f frame-r-008056-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0049.fits.bz2 > frame-r-008056-2-0049.fits
    fi
    if [[ ! -f frame-r-008056-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0051.fits.bz2 > frame-r-008056-2-0051.fits
    fi
    if [[ ! -f frame-r-008056-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0052.fits.bz2 > frame-r-008056-2-0052.fits
    fi
    if [[ ! -f frame-r-004843-5-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0046.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0046.fits.bz2 > frame-r-004843-5-0046.fits
    fi
    if [[ ! -f frame-r-004843-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0048.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0048.fits.bz2 > frame-r-004843-5-0048.fits
    fi
    if [[ ! -f frame-r-004843-6-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0047.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0047.fits.bz2 > frame-r-004843-6-0047.fits
    fi
    if [[ ! -f frame-r-004843-6-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0048.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0048.fits.bz2 > frame-r-004843-6-0048.fits
    fi
    if [[ ! -f frame-r-008055-5-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0079.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0079.fits.bz2 > frame-r-008055-5-0079.fits
    fi
    if [[ ! -f frame-r-008055-5-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0081.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0081.fits.bz2 > frame-r-008055-5-0081.fits
    fi
    if [[ ! -f frame-r-008055-5-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0082.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0082.fits.bz2 > frame-r-008055-5-0082.fits
    fi
    if [[ ! -f frame-r-008055-6-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0079.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0079.fits.bz2 > frame-r-008055-6-0079.fits
    fi
    if [[ ! -f frame-r-008055-6-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0082.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0082.fits.bz2 > frame-r-008055-6-0082.fits
    fi
    if [[ ! -f frame-r-008111-3-0184.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0184.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0184.fits.bz2 > frame-r-008111-3-0184.fits
    fi
    if [[ ! -f frame-r-008111-3-0185.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0185.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0185.fits.bz2 > frame-r-008111-3-0185.fits
    fi
    if [[ ! -f frame-r-008112-2-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0044.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0044.fits.bz2 > frame-r-008112-2-0044.fits
    fi
    if [[ ! -f frame-r-008112-2-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0046.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0046.fits.bz2 > frame-r-008112-2-0046.fits
    fi
    if [[ ! -f frame-r-008112-3-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0044.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0044.fits.bz2 > frame-r-008112-3-0044.fits
    fi
    if [[ ! -f frame-r-008112-3-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0045.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0045.fits.bz2 > frame-r-008112-3-0045.fits
    fi
    if [[ ! -f frame-r-008112-3-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0047.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0047.fits.bz2 > frame-r-008112-3-0047.fits
    fi
    if [[ ! -f frame-r-008111-1-0183.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0183.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0183.fits.bz2 > frame-r-008111-1-0183.fits
    fi
    if [[ ! -f frame-r-008111-1-0184.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0184.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0184.fits.bz2 > frame-r-008111-1-0184.fits
    fi
    if [[ ! -f frame-r-008111-1-0186.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0186.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0186.fits.bz2 > frame-r-008111-1-0186.fits
    fi
    if [[ ! -f frame-r-008111-2-0183.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0183.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0183.fits.bz2 > frame-r-008111-2-0183.fits
    fi
    if [[ ! -f frame-r-008111-2-0184.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0184.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0184.fits.bz2 > frame-r-008111-2-0184.fits
    fi
    if [[ ! -f frame-r-008111-2-0186.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0186.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0186.fits.bz2 > frame-r-008111-2-0186.fits
    fi
    if [[ ! -f frame-r-008112-1-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0046.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0046.fits.bz2 > frame-r-008112-1-0046.fits
    fi
    if [[ ! -f frame-r-008105-5-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0060.fits.bz2 > frame-r-008105-5-0060.fits
    fi
    if [[ ! -f frame-r-008105-5-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0062.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0062.fits.bz2 > frame-r-008105-5-0062.fits
    fi
    if [[ ! -f frame-r-008116-5-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0334.fits.bz2 > frame-r-008116-5-0334.fits
    fi
    if [[ ! -f frame-r-008116-5-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0336.fits.bz2 > frame-r-008116-5-0336.fits
    fi
    if [[ ! -f frame-r-008116-5-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0337.fits.bz2 > frame-r-008116-5-0337.fits
    fi
    if [[ ! -f frame-r-008116-6-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0334.fits.bz2 > frame-r-008116-6-0334.fits
    fi
    if [[ ! -f frame-r-008105-4-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0059.fits.bz2 > frame-r-008105-4-0059.fits
    fi
    if [[ ! -f frame-r-008105-4-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0061.fits.bz2 > frame-r-008105-4-0061.fits
    fi
    if [[ ! -f frame-r-008116-4-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0334.fits.bz2 > frame-r-008116-4-0334.fits
    fi
    if [[ ! -f frame-r-008116-4-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0336.fits.bz2 > frame-r-008116-4-0336.fits
    fi
    if [[ ! -f frame-r-008105-2-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0059.fits.bz2 > frame-r-008105-2-0059.fits
    fi
    if [[ ! -f frame-r-008105-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0059.fits.bz2 > frame-r-008105-3-0059.fits
    fi
    if [[ ! -f frame-r-008105-3-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0060.fits.bz2 > frame-r-008105-3-0060.fits
    fi
    if [[ ! -f frame-r-008105-3-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0061.fits.bz2 > frame-r-008105-3-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0115.fits.bz2 > frame-r-004800-6-0115.fits
    fi
    if [[ ! -f frame-r-004800-6-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0116.fits.bz2 > frame-r-004800-6-0116.fits
    fi
    if [[ ! -f frame-r-008116-3-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0335.fits.bz2 > frame-r-008116-3-0335.fits
    fi
    if [[ ! -f frame-r-008116-3-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0336.fits.bz2 > frame-r-008116-3-0336.fits
    fi
    if [[ ! -f frame-r-008116-3-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0337.fits.bz2 > frame-r-008116-3-0337.fits
    fi
    if [[ ! -f frame-r-008105-1-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0059.fits.bz2 > frame-r-008105-1-0059.fits
    fi
    if [[ ! -f frame-r-008105-1-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0061.fits.bz2 > frame-r-008105-1-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0111.fits.bz2 > frame-r-004800-6-0111.fits
    fi
    if [[ ! -f frame-r-008116-1-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0334.fits.bz2 > frame-r-008116-1-0334.fits
    fi
    if [[ ! -f frame-r-008116-1-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0335.fits.bz2 > frame-r-008116-1-0335.fits
    fi
    if [[ ! -f frame-r-008116-1-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0336.fits.bz2 > frame-r-008116-1-0336.fits
    fi
    if [[ ! -f frame-r-008116-1-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0337.fits.bz2 > frame-r-008116-1-0337.fits
    fi
    if [[ ! -f frame-r-008116-2-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0335.fits.bz2 > frame-r-008116-2-0335.fits
    fi
    if [[ ! -f frame-r-008116-2-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0337.fits.bz2 > frame-r-008116-2-0337.fits
    fi
    if [[ ! -f frame-r-007757-5-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0131.fits.bz2 > frame-r-007757-5-0131.fits
    fi
    if [[ ! -f frame-r-007757-6-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0132.fits.bz2 > frame-r-007757-6-0132.fits
    fi
    if [[ ! -f frame-r-008056-5-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0055.fits.bz2 > frame-r-008056-5-0055.fits
    fi
    if [[ ! -f frame-r-008056-5-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0056.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0056.fits.bz2 > frame-r-008056-5-0056.fits
    fi
    if [[ ! -f frame-r-008056-6-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0053.fits.bz2 > frame-r-008056-6-0053.fits
    fi
    if [[ ! -f frame-r-007757-4-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0132.fits.bz2 > frame-r-007757-4-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0102.fits.bz2 > frame-r-004800-6-0102.fits
    fi
    if [[ ! -f frame-r-008056-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0053.fits.bz2 > frame-r-008056-4-0053.fits
    fi
    if [[ ! -f frame-r-008056-4-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0055.fits.bz2 > frame-r-008056-4-0055.fits
    fi
    if [[ ! -f frame-r-008056-4-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0056.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0056.fits.bz2 > frame-r-008056-4-0056.fits
    fi
    if [[ ! -f frame-r-004800-6-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0096.fits.bz2 > frame-r-004800-6-0096.fits
    fi
    if [[ ! -f frame-r-007757-3-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0132.fits.bz2 > frame-r-007757-3-0132.fits
    fi
    if [[ ! -f frame-r-008056-3-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0053.fits.bz2 > frame-r-008056-3-0053.fits
    fi
    if [[ ! -f frame-r-008056-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0054.fits.bz2 > frame-r-008056-3-0054.fits
    fi
    if [[ ! -f frame-r-008056-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0055.fits.bz2 > frame-r-008056-3-0055.fits
    fi
    if [[ ! -f frame-r-008056-3-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0056.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0056.fits.bz2 > frame-r-008056-3-0056.fits
    fi
    if [[ ! -f frame-r-007757-1-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0131.fits.bz2 > frame-r-007757-1-0131.fits
    fi
    if [[ ! -f frame-r-007757-1-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0132.fits.bz2 > frame-r-007757-1-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0093.fits.bz2 > frame-r-004800-6-0093.fits
    fi
    if [[ ! -f frame-r-008056-1-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0053.fits.bz2 > frame-r-008056-1-0053.fits
    fi
    if [[ ! -f frame-r-008056-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0055.fits.bz2 > frame-r-008056-1-0055.fits
    fi
    if [[ ! -f frame-r-008056-2-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0053.fits.bz2 > frame-r-008056-2-0053.fits
    fi
    if [[ ! -f frame-r-008056-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0055.fits.bz2 > frame-r-008056-2-0055.fits
    fi
    if [[ ! -f frame-r-008056-2-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0056.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0056.fits.bz2 > frame-r-008056-2-0056.fits
    fi
    if [[ ! -f frame-r-004843-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0049.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0049.fits.bz2 > frame-r-004843-5-0049.fits
    fi
    if [[ ! -f frame-r-004843-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0051.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0051.fits.bz2 > frame-r-004843-5-0051.fits
    fi
    if [[ ! -f frame-r-004836-6-0471.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4836/6/frame-r-004836-6-0471.fits.bz2
        bzip2 -d -c -k frame-r-004836-6-0471.fits.bz2 > frame-r-004836-6-0471.fits
    fi
    if [[ ! -f frame-r-004836-6-0472.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4836/6/frame-r-004836-6-0472.fits.bz2
        bzip2 -d -c -k frame-r-004836-6-0472.fits.bz2 > frame-r-004836-6-0472.fits
    fi
    if [[ ! -f frame-r-008055-5-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0083.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0083.fits.bz2 > frame-r-008055-5-0083.fits
    fi
    if [[ ! -f frame-r-008055-5-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0084.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0084.fits.bz2 > frame-r-008055-5-0084.fits
    fi
    if [[ ! -f frame-r-008055-5-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0085.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0085.fits.bz2 > frame-r-008055-5-0085.fits
    fi
    if [[ ! -f frame-r-008055-6-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0085.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0085.fits.bz2 > frame-r-008055-6-0085.fits
    fi
    if [[ ! -f frame-r-004843-4-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0049.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0049.fits.bz2 > frame-r-004843-4-0049.fits
    fi
    if [[ ! -f frame-r-004843-4-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0051.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0051.fits.bz2 > frame-r-004843-4-0051.fits
    fi
    if [[ ! -f frame-r-004829-6-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0152.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0152.fits.bz2 > frame-r-004829-6-0152.fits
    fi
    if [[ ! -f frame-r-008111-4-0188.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0188.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0188.fits.bz2 > frame-r-008111-4-0188.fits
    fi
    if [[ ! -f frame-r-004829-5-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0153.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0153.fits.bz2 > frame-r-004829-5-0153.fits
    fi
    if [[ ! -f frame-r-004829-5-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0152.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0152.fits.bz2 > frame-r-004829-5-0152.fits
    fi
    if [[ ! -f frame-r-004829-6-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0149.fits.bz2 > frame-r-004829-6-0149.fits
    fi
    if [[ ! -f frame-r-004829-6-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0150.fits.bz2 > frame-r-004829-6-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0188.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0188.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0188.fits.bz2 > frame-r-008111-3-0188.fits
    fi
    if [[ ! -f frame-r-008111-3-0189.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0189.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0189.fits.bz2 > frame-r-008111-3-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0150.fits.bz2 > frame-r-004829-5-0150.fits
    fi
    if [[ ! -f frame-r-004829-6-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0148.fits.bz2 > frame-r-004829-6-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0048.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0048.fits.bz2 > frame-r-008112-2-0048.fits
    fi
    if [[ ! -f frame-r-004829-6-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0151.fits.bz2 > frame-r-004829-6-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0048.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0048.fits.bz2 > frame-r-008112-3-0048.fits
    fi
    if [[ ! -f frame-r-008112-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0049.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0049.fits.bz2 > frame-r-008112-3-0049.fits
    fi
    if [[ ! -f frame-r-004829-6-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0145.fits.bz2 > frame-r-004829-6-0145.fits
    fi
    if [[ ! -f frame-r-004829-6-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0144.fits.bz2 > frame-r-004829-6-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0188.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0188.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0188.fits.bz2 > frame-r-008111-1-0188.fits
    fi
    if [[ ! -f frame-r-008111-1-0189.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0189.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0189.fits.bz2 > frame-r-008111-1-0189.fits
    fi
    if [[ ! -f frame-r-004829-6-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0146.fits.bz2 > frame-r-004829-6-0146.fits
    fi
    if [[ ! -f frame-r-004829-6-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0147.fits.bz2 > frame-r-004829-6-0147.fits
    fi
    if [[ ! -f frame-r-004829-5-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0146.fits.bz2 > frame-r-004829-5-0146.fits
    fi
    if [[ ! -f frame-r-008112-1-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0048.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0048.fits.bz2 > frame-r-008112-1-0048.fits
    fi
    if [[ ! -f frame-r-008105-5-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0065.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0065.fits.bz2 > frame-r-008105-5-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0141.fits.bz2 > frame-r-004829-5-0141.fits
    fi
    if [[ ! -f frame-r-004829-6-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0143.fits.bz2 > frame-r-004829-6-0143.fits
    fi
    if [[ ! -f frame-r-008105-6-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0064.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0064.fits.bz2 > frame-r-008105-6-0064.fits
    fi
    if [[ ! -f frame-r-008105-6-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0065.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0065.fits.bz2 > frame-r-008105-6-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0142.fits.bz2 > frame-r-004829-5-0142.fits
    fi
    if [[ ! -f frame-r-004829-5-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0139.fits.bz2 > frame-r-004829-5-0139.fits
    fi
    if [[ ! -f frame-r-004829-6-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0138.fits.bz2 > frame-r-004829-6-0138.fits
    fi
    if [[ ! -f frame-r-004800-5-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0118.fits.bz2 > frame-r-004800-5-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0065.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0065.fits.bz2 > frame-r-008105-4-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0138.fits.bz2 > frame-r-004829-5-0138.fits
    fi
    if [[ ! -f frame-r-004829-5-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0135.fits.bz2 > frame-r-004829-5-0135.fits
    fi
    if [[ ! -f frame-r-004829-5-0136.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0136.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0136.fits.bz2 > frame-r-004829-5-0136.fits
    fi
    if [[ ! -f frame-r-004829-6-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0133.fits.bz2 > frame-r-004829-6-0133.fits
    fi
    if [[ ! -f frame-r-004829-6-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0132.fits.bz2 > frame-r-004829-6-0132.fits
    fi
    if [[ ! -f frame-r-004800-5-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0113.fits.bz2 > frame-r-004800-5-0113.fits
    fi
    if [[ ! -f frame-r-004800-5-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0112.fits.bz2 > frame-r-004800-5-0112.fits
    fi
    if [[ ! -f frame-r-004829-5-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0131.fits.bz2 > frame-r-004829-5-0131.fits
    fi
    if [[ ! -f frame-r-004829-5-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0132.fits.bz2 > frame-r-004829-5-0132.fits
    fi
    if [[ ! -f frame-r-004829-6-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0134.fits.bz2 > frame-r-004829-6-0134.fits
    fi
    if [[ ! -f frame-r-004800-5-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0115.fits.bz2 > frame-r-004800-5-0115.fits
    fi
    if [[ ! -f frame-r-004829-5-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0134.fits.bz2 > frame-r-004829-5-0134.fits
    fi
    if [[ ! -f frame-r-004800-5-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0114.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0114.fits.bz2 > frame-r-004800-5-0114.fits
    fi
    if [[ ! -f frame-r-008105-1-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0063.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0063.fits.bz2 > frame-r-008105-1-0063.fits
    fi
    if [[ ! -f frame-r-008105-1-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0064.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0064.fits.bz2 > frame-r-008105-1-0064.fits
    fi
    if [[ ! -f frame-r-004800-5-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0110.fits.bz2 > frame-r-004800-5-0110.fits
    fi
    if [[ ! -f frame-r-004829-5-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0129.fits.bz2 > frame-r-004829-5-0129.fits
    fi
    if [[ ! -f frame-r-004800-5-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0108.fits.bz2 > frame-r-004800-5-0108.fits
    fi
    if [[ ! -f frame-r-008116-2-0339.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0339.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0339.fits.bz2 > frame-r-008116-2-0339.fits
    fi
    if [[ ! -f frame-r-004829-6-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0125.fits.bz2 > frame-r-004829-6-0125.fits
    fi
    if [[ ! -f frame-r-004800-5-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0104.fits.bz2 > frame-r-004800-5-0104.fits
    fi
    if [[ ! -f frame-r-004829-5-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0123.fits.bz2 > frame-r-004829-5-0123.fits
    fi
    if [[ ! -f frame-r-004829-5-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0125.fits.bz2 > frame-r-004829-5-0125.fits
    fi
    if [[ ! -f frame-r-004800-5-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0106.fits.bz2 > frame-r-004800-5-0106.fits
    fi
    if [[ ! -f frame-r-004829-6-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0122.fits.bz2 > frame-r-004829-6-0122.fits
    fi
    if [[ ! -f frame-r-004800-5-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0103.fits.bz2 > frame-r-004800-5-0103.fits
    fi
    if [[ ! -f frame-r-008056-4-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0058.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0058.fits.bz2 > frame-r-008056-4-0058.fits
    fi
    if [[ ! -f frame-r-004829-5-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0119.fits.bz2 > frame-r-004829-5-0119.fits
    fi
    if [[ ! -f frame-r-004829-6-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0116.fits.bz2 > frame-r-004829-6-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0115.fits.bz2 > frame-r-004829-6-0115.fits
    fi
    if [[ ! -f frame-r-004800-5-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0097.fits.bz2 > frame-r-004800-5-0097.fits
    fi
    if [[ ! -f frame-r-004800-5-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0096.fits.bz2 > frame-r-004800-5-0096.fits
    fi
    if [[ ! -f frame-r-004829-5-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0116.fits.bz2 > frame-r-004829-5-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0118.fits.bz2 > frame-r-004829-6-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0057.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0057.fits.bz2 > frame-r-008056-3-0057.fits
    fi
    if [[ ! -f frame-r-008056-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0058.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0058.fits.bz2 > frame-r-008056-3-0058.fits
    fi
    if [[ ! -f frame-r-004829-5-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0117.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0117.fits.bz2 > frame-r-004829-5-0117.fits
    fi
    if [[ ! -f frame-r-004829-6-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0112.fits.bz2 > frame-r-004829-6-0112.fits
    fi
    if [[ ! -f frame-r-004829-6-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0113.fits.bz2 > frame-r-004829-6-0113.fits
    fi
    if [[ ! -f frame-r-004829-5-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0112.fits.bz2 > frame-r-004829-5-0112.fits
    fi
    if [[ ! -f frame-r-004829-5-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0113.fits.bz2 > frame-r-004829-5-0113.fits
    fi
    if [[ ! -f frame-r-004800-5-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0092.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0092.fits.bz2 > frame-r-004800-5-0092.fits
    fi
    if [[ ! -f frame-r-008056-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0057.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0057.fits.bz2 > frame-r-008056-2-0057.fits
    fi
    if [[ ! -f frame-r-004829-5-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0114.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0114.fits.bz2 > frame-r-004829-5-0114.fits
    fi
    if [[ ! -f frame-r-004843-6-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0053.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0053.fits.bz2 > frame-r-004843-6-0053.fits
    fi
    if [[ ! -f frame-r-004800-5-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0090.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0090.fits.bz2 > frame-r-004800-5-0090.fits
    fi
    if [[ ! -f frame-r-004829-6-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0110.fits.bz2 > frame-r-004829-6-0110.fits
    fi
    if [[ ! -f frame-r-004843-4-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0053.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0053.fits.bz2 > frame-r-004843-4-0053.fits
    fi
    if [[ ! -f frame-r-004836-4-0477.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4836/4/frame-r-004836-4-0477.fits.bz2
        bzip2 -d -c -k frame-r-004836-4-0477.fits.bz2 > frame-r-004836-4-0477.fits
    fi
    if [[ ! -f frame-r-004800-5-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0087.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0087.fits.bz2 > frame-r-004800-5-0087.fits
    fi
    if [[ ! -f frame-r-004829-5-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0106.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0106.fits.bz2 > frame-r-004829-5-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0087.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0087.fits.bz2 > frame-r-008055-4-0087.fits
    fi
    if [[ ! -f frame-r-008055-4-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0088.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0088.fits.bz2 > frame-r-008055-4-0088.fits
    fi
    if [[ ! -f frame-r-004829-5-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0105.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0105.fits.bz2 > frame-r-004829-5-0105.fits
    fi
    if [[ ! -f frame-r-008055-3-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0086.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0086.fits.bz2 > frame-r-008055-3-0086.fits
    fi
    if [[ ! -f frame-r-004800-5-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0083.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0083.fits.bz2 > frame-r-004800-5-0083.fits
    fi
    if [[ ! -f frame-r-004829-4-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0144.fits.bz2 > frame-r-004829-4-0144.fits
    fi
    if [[ ! -f frame-r-008111-4-0192.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0192.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0192.fits.bz2 > frame-r-008111-4-0192.fits
    fi
    if [[ ! -f frame-r-008111-4-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0193.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0193.fits.bz2 > frame-r-008111-4-0193.fits
    fi
    if [[ ! -f frame-r-008111-3-0191.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0191.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0191.fits.bz2 > frame-r-008111-3-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0149.fits.bz2 > frame-r-004829-4-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0054.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0054.fits.bz2 > frame-r-008112-2-0054.fits
    fi
    if [[ ! -f frame-r-008112-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0051.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0051.fits.bz2 > frame-r-008112-3-0051.fits
    fi
    if [[ ! -f frame-r-008112-3-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0052.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0052.fits.bz2 > frame-r-008112-3-0052.fits
    fi
    if [[ ! -f frame-r-004829-4-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0151.fits.bz2 > frame-r-004829-4-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0054.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0054.fits.bz2 > frame-r-008112-3-0054.fits
    fi
    if [[ ! -f frame-r-008111-1-0190.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0190.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0190.fits.bz2 > frame-r-008111-1-0190.fits
    fi
    if [[ ! -f frame-r-004829-4-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0145.fits.bz2 > frame-r-004829-4-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0192.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0192.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0192.fits.bz2 > frame-r-008111-1-0192.fits
    fi
    if [[ ! -f frame-r-008111-2-0190.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0190.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0190.fits.bz2 > frame-r-008111-2-0190.fits
    fi
    if [[ ! -f frame-r-004829-4-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0146.fits.bz2 > frame-r-004829-4-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0192.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0192.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0192.fits.bz2 > frame-r-008111-2-0192.fits
    fi
    if [[ ! -f frame-r-008111-2-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0193.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0193.fits.bz2 > frame-r-008111-2-0193.fits
    fi
    if [[ ! -f frame-r-008111-2-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0194.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0194.fits.bz2 > frame-r-008111-2-0194.fits
    fi
    if [[ ! -f frame-r-004829-4-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0141.fits.bz2 > frame-r-004829-4-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0069.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0069.fits.bz2 > frame-r-008105-5-0069.fits
    fi
    if [[ ! -f frame-r-008105-6-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0067.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0067.fits.bz2 > frame-r-008105-6-0067.fits
    fi
    if [[ ! -f frame-r-008105-6-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0068.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0068.fits.bz2 > frame-r-008105-6-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0143.fits.bz2 > frame-r-004829-4-0143.fits
    fi
    if [[ ! -f frame-r-008116-5-0341.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0341.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0341.fits.bz2 > frame-r-008116-5-0341.fits
    fi
    if [[ ! -f frame-r-008116-5-0343.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0343.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0343.fits.bz2 > frame-r-008116-5-0343.fits
    fi
    if [[ ! -f frame-r-008116-5-0345.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0345.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0345.fits.bz2 > frame-r-008116-5-0345.fits
    fi
    if [[ ! -f frame-r-008116-6-0345.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0345.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0345.fits.bz2 > frame-r-008116-6-0345.fits
    fi
    if [[ ! -f frame-r-008105-4-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0067.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0067.fits.bz2 > frame-r-008105-4-0067.fits
    fi
    if [[ ! -f frame-r-008105-4-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0068.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0068.fits.bz2 > frame-r-008105-4-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0138.fits.bz2 > frame-r-004829-4-0138.fits
    fi
    if [[ ! -f frame-r-004829-4-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0137.fits.bz2 > frame-r-004829-4-0137.fits
    fi
    if [[ ! -f frame-r-008105-4-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0070.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0070.fits.bz2 > frame-r-008105-4-0070.fits
    fi
    if [[ ! -f frame-r-004800-4-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0116.fits.bz2 > frame-r-004800-4-0116.fits
    fi
    if [[ ! -f frame-r-004800-4-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0117.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0117.fits.bz2 > frame-r-004800-4-0117.fits
    fi
    if [[ ! -f frame-r-004829-4-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0135.fits.bz2 > frame-r-004829-4-0135.fits
    fi
    if [[ ! -f frame-r-004829-4-0136.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0136.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0136.fits.bz2 > frame-r-004829-4-0136.fits
    fi
    if [[ ! -f frame-r-004800-3-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0117.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0117.fits.bz2 > frame-r-004800-3-0117.fits
    fi
    if [[ ! -f frame-r-004800-4-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0113.fits.bz2 > frame-r-004800-4-0113.fits
    fi
    if [[ ! -f frame-r-004829-4-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0131.fits.bz2 > frame-r-004829-4-0131.fits
    fi
    if [[ ! -f frame-r-004829-4-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0133.fits.bz2 > frame-r-004829-4-0133.fits
    fi
    if [[ ! -f frame-r-004800-3-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0112.fits.bz2 > frame-r-004800-3-0112.fits
    fi
    if [[ ! -f frame-r-004800-3-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0113.fits.bz2 > frame-r-004800-3-0113.fits
    fi
    if [[ ! -f frame-r-004800-4-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0115.fits.bz2 > frame-r-004800-4-0115.fits
    fi
    if [[ ! -f frame-r-004800-4-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0114.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0114.fits.bz2 > frame-r-004800-4-0114.fits
    fi
    if [[ ! -f frame-r-004829-4-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0128.fits.bz2 > frame-r-004829-4-0128.fits
    fi
    if [[ ! -f frame-r-004829-4-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0129.fits.bz2 > frame-r-004829-4-0129.fits
    fi
    if [[ ! -f frame-r-004829-4-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0130.fits.bz2 > frame-r-004829-4-0130.fits
    fi
    if [[ ! -f frame-r-004800-4-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0108.fits.bz2 > frame-r-004800-4-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0127.fits.bz2 > frame-r-004829-4-0127.fits
    fi
    if [[ ! -f frame-r-004800-4-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0104.fits.bz2 > frame-r-004800-4-0104.fits
    fi
    if [[ ! -f frame-r-004800-4-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0105.fits.bz2 > frame-r-004800-4-0105.fits
    fi
    if [[ ! -f frame-r-004829-4-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0123.fits.bz2 > frame-r-004829-4-0123.fits
    fi
    if [[ ! -f frame-r-004829-4-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0125.fits.bz2 > frame-r-004829-4-0125.fits
    fi
    if [[ ! -f frame-r-004800-3-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0106.fits.bz2 > frame-r-004800-3-0106.fits
    fi
    if [[ ! -f frame-r-004800-4-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0107.fits.bz2 > frame-r-004800-4-0107.fits
    fi
    if [[ ! -f frame-r-004800-3-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0107.fits.bz2 > frame-r-004800-3-0107.fits
    fi
    if [[ ! -f frame-r-004800-4-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0103.fits.bz2 > frame-r-004800-4-0103.fits
    fi
    if [[ ! -f frame-r-004800-3-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0101.fits.bz2 > frame-r-004800-3-0101.fits
    fi
    if [[ ! -f frame-r-004829-4-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0120.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0120.fits.bz2 > frame-r-004829-4-0120.fits
    fi
    if [[ ! -f frame-r-004800-3-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0100.fits.bz2 > frame-r-004800-3-0100.fits
    fi
    if [[ ! -f frame-r-004829-4-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0115.fits.bz2 > frame-r-004829-4-0115.fits
    fi
    if [[ ! -f frame-r-004829-4-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0116.fits.bz2 > frame-r-004829-4-0116.fits
    fi
    if [[ ! -f frame-r-004800-3-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0097.fits.bz2 > frame-r-004800-3-0097.fits
    fi
    if [[ ! -f frame-r-004800-4-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0098.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0098.fits.bz2 > frame-r-004800-4-0098.fits
    fi
    if [[ ! -f frame-r-004800-4-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0099.fits.bz2 > frame-r-004800-4-0099.fits
    fi
    if [[ ! -f frame-r-004800-3-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0098.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0098.fits.bz2 > frame-r-004800-3-0098.fits
    fi
    if [[ ! -f frame-r-004800-4-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0093.fits.bz2 > frame-r-004800-4-0093.fits
    fi
    if [[ ! -f frame-r-004800-4-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0094.fits.bz2 > frame-r-004800-4-0094.fits
    fi
    if [[ ! -f frame-r-004800-3-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0093.fits.bz2 > frame-r-004800-3-0093.fits
    fi
    if [[ ! -f frame-r-004800-3-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0094.fits.bz2 > frame-r-004800-3-0094.fits
    fi
    if [[ ! -f frame-r-004800-4-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0095.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0095.fits.bz2 > frame-r-004800-4-0095.fits
    fi
    if [[ ! -f frame-r-004800-3-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0095.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0095.fits.bz2 > frame-r-004800-3-0095.fits
    fi
    if [[ ! -f frame-r-004800-4-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0088.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0088.fits.bz2 > frame-r-004800-4-0088.fits
    fi
    if [[ ! -f frame-r-004829-4-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0107.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0107.fits.bz2 > frame-r-004829-4-0107.fits
    fi
    if [[ ! -f frame-r-004800-4-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0089.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0089.fits.bz2 > frame-r-004800-4-0089.fits
    fi
    if [[ ! -f frame-r-004829-4-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0108.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0108.fits.bz2 > frame-r-004829-4-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0110.fits.bz2 > frame-r-004829-4-0110.fits
    fi
    if [[ ! -f frame-r-004829-4-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0109.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0109.fits.bz2 > frame-r-004829-4-0109.fits
    fi
    if [[ ! -f frame-r-004800-3-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0091.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0091.fits.bz2 > frame-r-004800-3-0091.fits
    fi
    if [[ ! -f frame-r-004800-3-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0089.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0089.fits.bz2 > frame-r-004800-3-0089.fits
    fi
    if [[ ! -f frame-r-004800-4-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0085.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0085.fits.bz2 > frame-r-004800-4-0085.fits
    fi
    if [[ ! -f frame-r-004800-4-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0084.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0084.fits.bz2 > frame-r-004800-4-0084.fits
    fi
    if [[ ! -f frame-r-004836-4-0478.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4836/4/frame-r-004836-4-0478.fits.bz2
        bzip2 -d -c -k frame-r-004836-4-0478.fits.bz2 > frame-r-004836-4-0478.fits
    fi
    if [[ ! -f frame-r-004800-3-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0087.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0087.fits.bz2 > frame-r-004800-3-0087.fits
    fi
    if [[ ! -f frame-r-008055-4-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0092.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0092.fits.bz2 > frame-r-008055-4-0092.fits
    fi
    if [[ ! -f frame-r-008055-4-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0093.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0093.fits.bz2 > frame-r-008055-4-0093.fits
    fi
    if [[ ! -f frame-r-004800-4-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0083.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0083.fits.bz2 > frame-r-004800-4-0083.fits
    fi
    if [[ ! -f frame-r-004829-4-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0102.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0102.fits.bz2 > frame-r-004829-4-0102.fits
    fi
    if [[ ! -f frame-r-008055-3-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0092.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0092.fits.bz2 > frame-r-008055-3-0092.fits
    fi
    if [[ ! -f frame-r-008055-3-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0093.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0093.fits.bz2 > frame-r-008055-3-0093.fits
    fi
    if [[ ! -f frame-r-008111-4-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0196.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0196.fits.bz2 > frame-r-008111-4-0196.fits
    fi
    if [[ ! -f frame-r-008111-3-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0195.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0195.fits.bz2 > frame-r-008111-3-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0150.fits.bz2 > frame-r-004829-3-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0196.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0196.fits.bz2 > frame-r-008111-3-0196.fits
    fi
    if [[ ! -f frame-r-008111-3-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0197.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0197.fits.bz2 > frame-r-008111-3-0197.fits
    fi
    if [[ ! -f frame-r-008112-2-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0057.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0057.fits.bz2 > frame-r-008112-2-0057.fits
    fi
    if [[ ! -f frame-r-008112-3-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0055.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0055.fits.bz2 > frame-r-008112-3-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0144.fits.bz2 > frame-r-004829-3-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0196.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0196.fits.bz2 > frame-r-008111-1-0196.fits
    fi
    if [[ ! -f frame-r-008111-1-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0197.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0197.fits.bz2 > frame-r-008111-1-0197.fits
    fi
    if [[ ! -f frame-r-008111-2-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0195.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0195.fits.bz2 > frame-r-008111-2-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0147.fits.bz2 > frame-r-004829-3-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0057.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0057.fits.bz2 > frame-r-008112-1-0057.fits
    fi
    if [[ ! -f frame-r-008112-1-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0058.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0058.fits.bz2 > frame-r-008112-1-0058.fits
    fi
    if [[ ! -f frame-r-008105-5-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0071.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0071.fits.bz2 > frame-r-008105-5-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0140.fits.bz2 > frame-r-004829-3-0140.fits
    fi
    if [[ ! -f frame-r-008105-5-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0072.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0072.fits.bz2 > frame-r-008105-5-0072.fits
    fi
    if [[ ! -f frame-r-008105-6-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0071.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0071.fits.bz2 > frame-r-008105-6-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0143.fits.bz2 > frame-r-004829-3-0143.fits
    fi
    if [[ ! -f frame-r-004829-3-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0142.fits.bz2 > frame-r-004829-3-0142.fits
    fi
    if [[ ! -f frame-r-008105-6-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0073.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0073.fits.bz2 > frame-r-008105-6-0073.fits
    fi
    if [[ ! -f frame-r-008116-5-0346.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0346.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0346.fits.bz2 > frame-r-008116-5-0346.fits
    fi
    if [[ ! -f frame-r-008116-5-0348.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0348.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0348.fits.bz2 > frame-r-008116-5-0348.fits
    fi
    if [[ ! -f frame-r-008116-6-0348.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0348.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0348.fits.bz2 > frame-r-008116-6-0348.fits
    fi
    if [[ ! -f frame-r-008105-4-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0071.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0071.fits.bz2 > frame-r-008105-4-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0138.fits.bz2 > frame-r-004829-3-0138.fits
    fi
    if [[ ! -f frame-r-004829-3-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0137.fits.bz2 > frame-r-004829-3-0137.fits
    fi
    if [[ ! -f frame-r-004800-2-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0118.fits.bz2 > frame-r-004800-2-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0073.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0073.fits.bz2 > frame-r-008105-4-0073.fits
    fi
    if [[ ! -f frame-r-004829-3-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0133.fits.bz2 > frame-r-004829-3-0133.fits
    fi
    if [[ ! -f frame-r-004829-3-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0132.fits.bz2 > frame-r-004829-3-0132.fits
    fi
    if [[ ! -f frame-r-004829-3-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0131.fits.bz2 > frame-r-004829-3-0131.fits
    fi
    if [[ ! -f frame-r-004800-2-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0113.fits.bz2 > frame-r-004800-2-0113.fits
    fi
    if [[ ! -f frame-r-004800-2-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0115.fits.bz2 > frame-r-004800-2-0115.fits
    fi
    if [[ ! -f frame-r-008116-3-0347.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0347.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0347.fits.bz2 > frame-r-008116-3-0347.fits
    fi
    if [[ ! -f frame-r-004829-3-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0130.fits.bz2 > frame-r-004829-3-0130.fits
    fi
    if [[ ! -f frame-r-004829-3-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0127.fits.bz2 > frame-r-004829-3-0127.fits
    fi
    if [[ ! -f frame-r-004829-3-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0123.fits.bz2 > frame-r-004829-3-0123.fits
    fi
    if [[ ! -f frame-r-004829-3-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0125.fits.bz2 > frame-r-004829-3-0125.fits
    fi
    if [[ ! -f frame-r-004829-3-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0124.fits.bz2 > frame-r-004829-3-0124.fits
    fi
    if [[ ! -f frame-r-004800-2-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0104.fits.bz2 > frame-r-004800-2-0104.fits
    fi
    if [[ ! -f frame-r-004800-2-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0106.fits.bz2 > frame-r-004800-2-0106.fits
    fi
    if [[ ! -f frame-r-004800-2-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0107.fits.bz2 > frame-r-004800-2-0107.fits
    fi
    if [[ ! -f frame-r-004829-3-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0121.fits.bz2 > frame-r-004829-3-0121.fits
    fi
    if [[ ! -f frame-r-004800-2-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0102.fits.bz2 > frame-r-004800-2-0102.fits
    fi
    if [[ ! -f frame-r-004829-3-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0120.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0120.fits.bz2 > frame-r-004829-3-0120.fits
    fi
    if [[ ! -f frame-r-004829-3-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0119.fits.bz2 > frame-r-004829-3-0119.fits
    fi
    if [[ ! -f frame-r-008056-5-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0066.fits.bz2 > frame-r-008056-5-0066.fits
    fi
    if [[ ! -f frame-r-004829-3-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0115.fits.bz2 > frame-r-004829-3-0115.fits
    fi
    if [[ ! -f frame-r-004829-3-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0116.fits.bz2 > frame-r-004829-3-0116.fits
    fi
    if [[ ! -f frame-r-004800-2-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0097.fits.bz2 > frame-r-004800-2-0097.fits
    fi
    if [[ ! -f frame-r-004800-2-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0096.fits.bz2 > frame-r-004800-2-0096.fits
    fi
    if [[ ! -f frame-r-004800-2-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0099.fits.bz2 > frame-r-004800-2-0099.fits
    fi
    if [[ ! -f frame-r-008056-3-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0067.fits.bz2 > frame-r-008056-3-0067.fits
    fi
    if [[ ! -f frame-r-004829-3-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0112.fits.bz2 > frame-r-004829-3-0112.fits
    fi
    if [[ ! -f frame-r-004829-3-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0114.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0114.fits.bz2 > frame-r-004829-3-0114.fits
    fi
    if [[ ! -f frame-r-004800-2-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0093.fits.bz2 > frame-r-004800-2-0093.fits
    fi
    if [[ ! -f frame-r-004800-2-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0094.fits.bz2 > frame-r-004800-2-0094.fits
    fi
    if [[ ! -f frame-r-004829-2-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0114.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0114.fits.bz2 > frame-r-004829-2-0114.fits
    fi
    if [[ ! -f frame-r-008056-1-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0065.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0065.fits.bz2 > frame-r-008056-1-0065.fits
    fi
    if [[ ! -f frame-r-008056-1-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0066.fits.bz2 > frame-r-008056-1-0066.fits
    fi
    if [[ ! -f frame-r-004829-2-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0111.fits.bz2 > frame-r-004829-2-0111.fits
    fi
    if [[ ! -f frame-r-004843-5-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0061.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0061.fits.bz2 > frame-r-004843-5-0061.fits
    fi
    if [[ ! -f frame-r-004843-5-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0062.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0062.fits.bz2 > frame-r-004843-5-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0107.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0107.fits.bz2 > frame-r-004829-2-0107.fits
    fi
    if [[ ! -f frame-r-004843-5-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0063.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0063.fits.bz2 > frame-r-004843-5-0063.fits
    fi
    if [[ ! -f frame-r-004843-6-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0060.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0060.fits.bz2 > frame-r-004843-6-0060.fits
    fi
    if [[ ! -f frame-r-004843-6-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0061.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0061.fits.bz2 > frame-r-004843-6-0061.fits
    fi
    if [[ ! -f frame-r-004843-6-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0063.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0063.fits.bz2 > frame-r-004843-6-0063.fits
    fi
    if [[ ! -f frame-r-004829-2-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0108.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0108.fits.bz2 > frame-r-004829-2-0108.fits
    fi
    if [[ ! -f frame-r-004829-3-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0111.fits.bz2 > frame-r-004829-3-0111.fits
    fi
    if [[ ! -f frame-r-004843-4-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0060.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0060.fits.bz2 > frame-r-004843-4-0060.fits
    fi
    if [[ ! -f frame-r-004843-4-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0061.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0061.fits.bz2 > frame-r-004843-4-0061.fits
    fi
    if [[ ! -f frame-r-004843-4-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0063.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0063.fits.bz2 > frame-r-004843-4-0063.fits
    fi
    if [[ ! -f frame-r-008055-4-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0095.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0095.fits.bz2 > frame-r-008055-4-0095.fits
    fi
    if [[ ! -f frame-r-008055-4-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0096.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0096.fits.bz2 > frame-r-008055-4-0096.fits
    fi
    if [[ ! -f frame-r-004829-2-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0105.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0105.fits.bz2 > frame-r-004829-2-0105.fits
    fi
    if [[ ! -f frame-r-008055-3-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0096.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0096.fits.bz2 > frame-r-008055-3-0096.fits
    fi
    if [[ ! -f frame-r-004829-2-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0152.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0152.fits.bz2 > frame-r-004829-2-0152.fits
    fi
    if [[ ! -f frame-r-004829-2-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0149.fits.bz2 > frame-r-004829-2-0149.fits
    fi
    if [[ ! -f frame-r-008111-3-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0199.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0199.fits.bz2 > frame-r-008111-3-0199.fits
    fi
    if [[ ! -f frame-r-008111-3-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0200.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0200.fits.bz2 > frame-r-008111-3-0200.fits
    fi
    if [[ ! -f frame-r-004829-1-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0150.fits.bz2 > frame-r-004829-1-0150.fits
    fi
    if [[ ! -f frame-r-008112-2-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0061.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0061.fits.bz2 > frame-r-008112-2-0061.fits
    fi
    if [[ ! -f frame-r-004829-1-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0148.fits.bz2 > frame-r-004829-1-0148.fits
    fi
    if [[ ! -f frame-r-008112-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0059.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0059.fits.bz2 > frame-r-008112-3-0059.fits
    fi
    if [[ ! -f frame-r-008112-3-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0060.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0060.fits.bz2 > frame-r-008112-3-0060.fits
    fi
    if [[ ! -f frame-r-008112-3-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0061.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0061.fits.bz2 > frame-r-008112-3-0061.fits
    fi
    if [[ ! -f frame-r-004829-1-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0151.fits.bz2 > frame-r-004829-1-0151.fits
    fi
    if [[ ! -f frame-r-004829-2-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0144.fits.bz2 > frame-r-004829-2-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0199.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0199.fits.bz2 > frame-r-008111-1-0199.fits
    fi
    if [[ ! -f frame-r-004829-1-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0145.fits.bz2 > frame-r-004829-1-0145.fits
    fi
    if [[ ! -f frame-r-004829-1-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0144.fits.bz2 > frame-r-004829-1-0144.fits
    fi
    if [[ ! -f frame-r-004829-2-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0146.fits.bz2 > frame-r-004829-2-0146.fits
    fi
    if [[ ! -f frame-r-004829-2-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0147.fits.bz2 > frame-r-004829-2-0147.fits
    fi
    if [[ ! -f frame-r-008111-2-0199.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0199.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0199.fits.bz2 > frame-r-008111-2-0199.fits
    fi
    if [[ ! -f frame-r-004829-1-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0146.fits.bz2 > frame-r-004829-1-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0200.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0200.fits.bz2 > frame-r-008111-2-0200.fits
    fi
    if [[ ! -f frame-r-008112-1-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0059.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0059.fits.bz2 > frame-r-008112-1-0059.fits
    fi
    if [[ ! -f frame-r-008112-1-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0061.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0061.fits.bz2 > frame-r-008112-1-0061.fits
    fi
    if [[ ! -f frame-r-004829-2-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0140.fits.bz2 > frame-r-004829-2-0140.fits
    fi
    if [[ ! -f frame-r-004829-2-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0141.fits.bz2 > frame-r-004829-2-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0075.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0075.fits.bz2 > frame-r-008105-5-0075.fits
    fi
    if [[ ! -f frame-r-004829-1-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0140.fits.bz2 > frame-r-004829-1-0140.fits
    fi
    if [[ ! -f frame-r-004829-1-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0141.fits.bz2 > frame-r-004829-1-0141.fits
    fi
    if [[ ! -f frame-r-008105-6-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0074.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0074.fits.bz2 > frame-r-008105-6-0074.fits
    fi
    if [[ ! -f frame-r-004829-2-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0142.fits.bz2 > frame-r-004829-2-0142.fits
    fi
    if [[ ! -f frame-r-004829-2-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0139.fits.bz2 > frame-r-004829-2-0139.fits
    fi
    if [[ ! -f frame-r-008116-6-0350.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0350.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0350.fits.bz2 > frame-r-008116-6-0350.fits
    fi
    if [[ ! -f frame-r-008116-6-0351.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0351.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0351.fits.bz2 > frame-r-008116-6-0351.fits
    fi
    if [[ ! -f frame-r-008105-4-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0075.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0075.fits.bz2 > frame-r-008105-4-0075.fits
    fi
    if [[ ! -f frame-r-008105-4-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0076.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0076.fits.bz2 > frame-r-008105-4-0076.fits
    fi
    if [[ ! -f frame-r-004829-1-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0138.fits.bz2 > frame-r-004829-1-0138.fits
    fi
    if [[ ! -f frame-r-008116-4-0350.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0350.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0350.fits.bz2 > frame-r-008116-4-0350.fits
    fi
    if [[ ! -f frame-r-008116-4-0352.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0352.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0352.fits.bz2 > frame-r-008116-4-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0131.fits.bz2 > frame-r-004829-2-0131.fits
    fi
    if [[ ! -f frame-r-004800-1-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0113.fits.bz2 > frame-r-004800-1-0113.fits
    fi
    if [[ ! -f frame-r-004829-1-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0133.fits.bz2 > frame-r-004829-1-0133.fits
    fi
    if [[ ! -f frame-r-004829-2-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0134.fits.bz2 > frame-r-004829-2-0134.fits
    fi
    if [[ ! -f frame-r-004800-1-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0116.fits.bz2 > frame-r-004800-1-0116.fits
    fi
    if [[ ! -f frame-r-004829-1-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0134.fits.bz2 > frame-r-004829-1-0134.fits
    fi
    if [[ ! -f frame-r-004800-1-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0114.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0114.fits.bz2 > frame-r-004800-1-0114.fits
    fi
    if [[ ! -f frame-r-008116-3-0351.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0351.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0351.fits.bz2 > frame-r-008116-3-0351.fits
    fi
    if [[ ! -f frame-r-004829-2-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0130.fits.bz2 > frame-r-004829-2-0130.fits
    fi
    if [[ ! -f frame-r-004800-1-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0111.fits.bz2 > frame-r-004800-1-0111.fits
    fi
    if [[ ! -f frame-r-004800-1-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0110.fits.bz2 > frame-r-004800-1-0110.fits
    fi
    if [[ ! -f frame-r-004800-1-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0109.fits.bz2 > frame-r-004800-1-0109.fits
    fi
    if [[ ! -f frame-r-004829-1-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0128.fits.bz2 > frame-r-004829-1-0128.fits
    fi
    if [[ ! -f frame-r-004829-1-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0129.fits.bz2 > frame-r-004829-1-0129.fits
    fi
    if [[ ! -f frame-r-004800-1-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0108.fits.bz2 > frame-r-004800-1-0108.fits
    fi
    if [[ ! -f frame-r-008116-2-0350.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0350.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0350.fits.bz2 > frame-r-008116-2-0350.fits
    fi
    if [[ ! -f frame-r-004800-1-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0104.fits.bz2 > frame-r-004800-1-0104.fits
    fi
    if [[ ! -f frame-r-004800-1-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0106.fits.bz2 > frame-r-004800-1-0106.fits
    fi
    if [[ ! -f frame-r-004829-1-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0125.fits.bz2 > frame-r-004829-1-0125.fits
    fi
    if [[ ! -f frame-r-004800-1-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0107.fits.bz2 > frame-r-004800-1-0107.fits
    fi
    if [[ ! -f frame-r-004829-1-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0126.fits.bz2 > frame-r-004829-1-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0071.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0071.fits.bz2 > frame-r-008056-5-0071.fits
    fi
    if [[ ! -f frame-r-004829-2-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0122.fits.bz2 > frame-r-004829-2-0122.fits
    fi
    if [[ ! -f frame-r-004800-1-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0102.fits.bz2 > frame-r-004800-1-0102.fits
    fi
    if [[ ! -f frame-r-004829-1-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0121.fits.bz2 > frame-r-004829-1-0121.fits
    fi
    if [[ ! -f frame-r-004829-1-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0116.fits.bz2 > frame-r-004829-1-0116.fits
    fi
    if [[ ! -f frame-r-004829-1-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0115.fits.bz2 > frame-r-004829-1-0115.fits
    fi
    if [[ ! -f frame-r-004829-2-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0118.fits.bz2 > frame-r-004829-2-0118.fits
    fi
    if [[ ! -f frame-r-004800-1-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0099.fits.bz2 > frame-r-004800-1-0099.fits
    fi
    if [[ ! -f frame-r-004829-1-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0119.fits.bz2 > frame-r-004829-1-0119.fits
    fi
    if [[ ! -f frame-r-008056-3-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0069.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0069.fits.bz2 > frame-r-008056-3-0069.fits
    fi
    if [[ ! -f frame-r-008056-3-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0070.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0070.fits.bz2 > frame-r-008056-3-0070.fits
    fi
    if [[ ! -f frame-r-004829-1-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0112.fits.bz2 > frame-r-004829-1-0112.fits
    fi
    if [[ ! -f frame-r-004829-1-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0114.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0114.fits.bz2 > frame-r-004829-1-0114.fits
    fi
    if [[ ! -f frame-r-004829-1-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0113.fits.bz2 > frame-r-004829-1-0113.fits
    fi
    if [[ ! -f frame-r-008056-1-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0069.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0069.fits.bz2 > frame-r-008056-1-0069.fits
    fi
    if [[ ! -f frame-r-008056-2-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0069.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0069.fits.bz2 > frame-r-008056-2-0069.fits
    fi
    if [[ ! -f frame-r-008056-2-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0071.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0071.fits.bz2 > frame-r-008056-2-0071.fits
    fi
    if [[ ! -f frame-r-004843-5-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0065.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0065.fits.bz2 > frame-r-004843-5-0065.fits
    fi
    if [[ ! -f frame-r-004843-5-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0066.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0066.fits.bz2 > frame-r-004843-5-0066.fits
    fi
    if [[ ! -f frame-r-004843-6-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0066.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0066.fits.bz2 > frame-r-004843-6-0066.fits
    fi
    if [[ ! -f frame-r-004843-6-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0067.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0067.fits.bz2 > frame-r-004843-6-0067.fits
    fi
    if [[ ! -f frame-r-008055-5-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0098.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0098.fits.bz2 > frame-r-008055-5-0098.fits
    fi
    if [[ ! -f frame-r-008055-5-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0100.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0100.fits.bz2 > frame-r-008055-5-0100.fits
    fi
    if [[ ! -f frame-r-004800-1-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0092.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0092.fits.bz2 > frame-r-004800-1-0092.fits
    fi
    if [[ ! -f frame-r-004829-1-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0111.fits.bz2 > frame-r-004829-1-0111.fits
    fi
    if [[ ! -f frame-r-004843-4-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0066.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0066.fits.bz2 > frame-r-004843-4-0066.fits
    fi
    if [[ ! -f frame-r-008055-4-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0098.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0098.fits.bz2 > frame-r-008055-4-0098.fits
    fi
    if [[ ! -f frame-r-008055-4-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0100.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0100.fits.bz2 > frame-r-008055-4-0100.fits
    fi
    if [[ ! -f frame-r-007941-3-0029.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/3/frame-r-007941-3-0029.fits.bz2
        bzip2 -d -c -k frame-r-007941-3-0029.fits.bz2 > frame-r-007941-3-0029.fits
    fi
    if [[ ! -f frame-r-007941-3-0030.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/3/frame-r-007941-3-0030.fits.bz2
        bzip2 -d -c -k frame-r-007941-3-0030.fits.bz2 > frame-r-007941-3-0030.fits
    fi
    if [[ ! -f frame-r-007941-3-0031.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/3/frame-r-007941-3-0031.fits.bz2
        bzip2 -d -c -k frame-r-007941-3-0031.fits.bz2 > frame-r-007941-3-0031.fits
    fi
    if [[ ! -f frame-r-008112-2-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0063.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0063.fits.bz2 > frame-r-008112-2-0063.fits
    fi
    if [[ ! -f frame-r-008112-3-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0062.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0062.fits.bz2 > frame-r-008112-3-0062.fits
    fi
    if [[ ! -f frame-r-007941-1-0029.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0029.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0029.fits.bz2 > frame-r-007941-1-0029.fits
    fi
    if [[ ! -f frame-r-007941-1-0030.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0030.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0030.fits.bz2 > frame-r-007941-1-0030.fits
    fi
    if [[ ! -f frame-r-007941-1-0032.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0032.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0032.fits.bz2 > frame-r-007941-1-0032.fits
    fi
    if [[ ! -f frame-r-007941-2-0030.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0030.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0030.fits.bz2 > frame-r-007941-2-0030.fits
    fi
    if [[ ! -f frame-r-007941-2-0031.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0031.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0031.fits.bz2 > frame-r-007941-2-0031.fits
    fi
    if [[ ! -f frame-r-008105-6-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0079.fits.bz2 > frame-r-008105-6-0079.fits
    fi
    if [[ ! -f frame-r-008112-1-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0063.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0063.fits.bz2 > frame-r-008112-1-0063.fits
    fi
    if [[ ! -f frame-r-008105-5-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0081.fits.bz2 > frame-r-008105-5-0081.fits
    fi
    if [[ ! -f frame-r-008116-6-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0353.fits.bz2 > frame-r-008116-6-0353.fits
    fi
    if [[ ! -f frame-r-008105-4-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0078.fits.bz2 > frame-r-008105-4-0078.fits
    fi
    if [[ ! -f frame-r-008116-4-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0353.fits.bz2 > frame-r-008116-4-0353.fits
    fi
    if [[ ! -f frame-r-008116-4-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0354.fits.bz2 > frame-r-008116-4-0354.fits
    fi
    if [[ ! -f frame-r-008116-4-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0355.fits.bz2 > frame-r-008116-4-0355.fits
    fi
    if [[ ! -f frame-r-008105-2-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0079.fits.bz2 > frame-r-008105-2-0079.fits
    fi
    if [[ ! -f frame-r-008105-3-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0080.fits.bz2 > frame-r-008105-3-0080.fits
    fi
    if [[ ! -f frame-r-008105-3-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0081.fits.bz2 > frame-r-008105-3-0081.fits
    fi
    if [[ ! -f frame-r-008116-3-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0353.fits.bz2 > frame-r-008116-3-0353.fits
    fi
    if [[ ! -f frame-r-008116-3-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0355.fits.bz2 > frame-r-008116-3-0355.fits
    fi
    if [[ ! -f frame-r-008116-3-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0356.fits.bz2 > frame-r-008116-3-0356.fits
    fi
    if [[ ! -f frame-r-008105-1-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0078.fits.bz2 > frame-r-008105-1-0078.fits
    fi
    if [[ ! -f frame-r-008105-1-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0081.fits.bz2 > frame-r-008105-1-0081.fits
    fi
    if [[ ! -f frame-r-008116-1-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0354.fits.bz2 > frame-r-008116-1-0354.fits
    fi
    if [[ ! -f frame-r-008116-1-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0355.fits.bz2 > frame-r-008116-1-0355.fits
    fi
    if [[ ! -f frame-r-008116-1-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0356.fits.bz2 > frame-r-008116-1-0356.fits
    fi
    if [[ ! -f frame-r-008116-2-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0353.fits.bz2 > frame-r-008116-2-0353.fits
    fi
    if [[ ! -f frame-r-008116-2-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0354.fits.bz2 > frame-r-008116-2-0354.fits
    fi
    if [[ ! -f frame-r-008116-2-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0355.fits.bz2 > frame-r-008116-2-0355.fits
    fi
    if [[ ! -f frame-r-008116-2-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0356.fits.bz2 > frame-r-008116-2-0356.fits
    fi
    if [[ ! -f frame-r-007757-5-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0152.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0152.fits.bz2 > frame-r-007757-5-0152.fits
    fi
    if [[ ! -f frame-r-007937-6-0175.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0175.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0175.fits.bz2 > frame-r-007937-6-0175.fits
    fi
    if [[ ! -f frame-r-008056-5-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0072.fits.bz2 > frame-r-008056-5-0072.fits
    fi
    if [[ ! -f frame-r-008056-5-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0073.fits.bz2 > frame-r-008056-5-0073.fits
    fi
    if [[ ! -f frame-r-008056-5-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0074.fits.bz2 > frame-r-008056-5-0074.fits
    fi
    if [[ ! -f frame-r-008056-6-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0072.fits.bz2 > frame-r-008056-6-0072.fits
    fi
    if [[ ! -f frame-r-008056-6-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0073.fits.bz2 > frame-r-008056-6-0073.fits
    fi
    if [[ ! -f frame-r-008056-6-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0075.fits.bz2 > frame-r-008056-6-0075.fits
    fi
    if [[ ! -f frame-r-007757-4-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0150.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0150.fits.bz2 > frame-r-007757-4-0150.fits
    fi
    if [[ ! -f frame-r-007757-4-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0149.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0149.fits.bz2 > frame-r-007757-4-0149.fits
    fi
    if [[ ! -f frame-r-007757-4-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0151.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0151.fits.bz2 > frame-r-007757-4-0151.fits
    fi
    if [[ ! -f frame-r-008056-4-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0073.fits.bz2 > frame-r-008056-4-0073.fits
    fi
    if [[ ! -f frame-r-008056-4-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0074.fits.bz2 > frame-r-008056-4-0074.fits
    fi
    if [[ ! -f frame-r-008056-4-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0075.fits.bz2 > frame-r-008056-4-0075.fits
    fi
    if [[ ! -f frame-r-007757-2-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0150.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0150.fits.bz2 > frame-r-007757-2-0150.fits
    fi
    if [[ ! -f frame-r-007757-2-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0149.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0149.fits.bz2 > frame-r-007757-2-0149.fits
    fi
    if [[ ! -f frame-r-007757-2-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0151.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0151.fits.bz2 > frame-r-007757-2-0151.fits
    fi
    if [[ ! -f frame-r-007757-3-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0151.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0151.fits.bz2 > frame-r-007757-3-0151.fits
    fi
    if [[ ! -f frame-r-007757-3-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0152.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0152.fits.bz2 > frame-r-007757-3-0152.fits
    fi
    if [[ ! -f frame-r-007937-1-0176.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0176.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0176.fits.bz2 > frame-r-007937-1-0176.fits
    fi
    if [[ ! -f frame-r-008056-1-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0075.fits.bz2 > frame-r-008056-1-0075.fits
    fi
    if [[ ! -f frame-r-008056-2-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0072.fits.bz2 > frame-r-008056-2-0072.fits
    fi
    if [[ ! -f frame-r-008056-2-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0073.fits.bz2 > frame-r-008056-2-0073.fits
    fi
    if [[ ! -f frame-r-008056-2-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0075.fits.bz2 > frame-r-008056-2-0075.fits
    fi
    if [[ ! -f frame-r-004843-5-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0068.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0068.fits.bz2 > frame-r-004843-5-0068.fits
    fi
    if [[ ! -f frame-r-004843-5-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0070.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0070.fits.bz2 > frame-r-004843-5-0070.fits
    fi
    if [[ ! -f frame-r-004843-5-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0071.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0071.fits.bz2 > frame-r-004843-5-0071.fits
    fi
    if [[ ! -f frame-r-004843-6-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0070.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0070.fits.bz2 > frame-r-004843-6-0070.fits
    fi
    if [[ ! -f frame-r-004843-6-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0071.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0071.fits.bz2 > frame-r-004843-6-0071.fits
    fi
    if [[ ! -f frame-r-008055-5-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0101.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0101.fits.bz2 > frame-r-008055-5-0101.fits
    fi
    if [[ ! -f frame-r-008055-5-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0104.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0104.fits.bz2 > frame-r-008055-5-0104.fits
    fi
    if [[ ! -f frame-r-004843-4-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0067.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0067.fits.bz2 > frame-r-004843-4-0067.fits
    fi
    if [[ ! -f frame-r-004843-4-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0068.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0068.fits.bz2 > frame-r-004843-4-0068.fits
    fi
    if [[ ! -f frame-r-008055-4-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0104.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0104.fits.bz2 > frame-r-008055-4-0104.fits
    fi
    if [[ ! -f frame-r-008112-2-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0066.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0066.fits.bz2 > frame-r-008112-2-0066.fits
    fi
    if [[ ! -f frame-r-008112-2-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0067.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0067.fits.bz2 > frame-r-008112-2-0067.fits
    fi
    if [[ ! -f frame-r-007941-1-0033.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0033.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0033.fits.bz2 > frame-r-007941-1-0033.fits
    fi
    if [[ ! -f frame-r-007941-1-0035.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0035.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0035.fits.bz2 > frame-r-007941-1-0035.fits
    fi
    if [[ ! -f frame-r-007941-1-0036.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0036.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0036.fits.bz2 > frame-r-007941-1-0036.fits
    fi
    if [[ ! -f frame-r-007941-2-0034.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0034.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0034.fits.bz2 > frame-r-007941-2-0034.fits
    fi
    if [[ ! -f frame-r-007941-2-0035.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0035.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0035.fits.bz2 > frame-r-007941-2-0035.fits
    fi
    if [[ ! -f frame-r-007941-2-0036.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0036.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0036.fits.bz2 > frame-r-007941-2-0036.fits
    fi
    if [[ ! -f frame-r-008105-6-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0082.fits.bz2 > frame-r-008105-6-0082.fits
    fi
    if [[ ! -f frame-r-008105-6-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0085.fits.bz2 > frame-r-008105-6-0085.fits
    fi
    if [[ ! -f frame-r-008105-5-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0083.fits.bz2 > frame-r-008105-5-0083.fits
    fi
    if [[ ! -f frame-r-008105-5-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0084.fits.bz2 > frame-r-008105-5-0084.fits
    fi
    if [[ ! -f frame-r-008116-5-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0357.fits.bz2 > frame-r-008116-5-0357.fits
    fi
    if [[ ! -f frame-r-008116-5-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0358.fits.bz2 > frame-r-008116-5-0358.fits
    fi
    if [[ ! -f frame-r-008116-5-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0360.fits.bz2 > frame-r-008116-5-0360.fits
    fi
    if [[ ! -f frame-r-008116-6-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0358.fits.bz2 > frame-r-008116-6-0358.fits
    fi
    if [[ ! -f frame-r-008116-6-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0359.fits.bz2 > frame-r-008116-6-0359.fits
    fi
    if [[ ! -f frame-r-008105-4-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0083.fits.bz2 > frame-r-008105-4-0083.fits
    fi
    if [[ ! -f frame-r-008105-4-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0084.fits.bz2 > frame-r-008105-4-0084.fits
    fi
    if [[ ! -f frame-r-008116-4-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0357.fits.bz2 > frame-r-008116-4-0357.fits
    fi
    if [[ ! -f frame-r-008116-4-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0359.fits.bz2 > frame-r-008116-4-0359.fits
    fi
    if [[ ! -f frame-r-008105-2-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0082.fits.bz2 > frame-r-008105-2-0082.fits
    fi
    if [[ ! -f frame-r-008105-2-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0085.fits.bz2 > frame-r-008105-2-0085.fits
    fi
    if [[ ! -f frame-r-008105-3-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0082.fits.bz2 > frame-r-008105-3-0082.fits
    fi
    if [[ ! -f frame-r-008105-3-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0083.fits.bz2 > frame-r-008105-3-0083.fits
    fi
    if [[ ! -f frame-r-008105-3-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0084.fits.bz2 > frame-r-008105-3-0084.fits
    fi
    if [[ ! -f frame-r-008105-3-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0085.fits.bz2 > frame-r-008105-3-0085.fits
    fi
    if [[ ! -f frame-r-008105-1-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0084.fits.bz2 > frame-r-008105-1-0084.fits
    fi
    if [[ ! -f frame-r-008116-1-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0359.fits.bz2 > frame-r-008116-1-0359.fits
    fi
    if [[ ! -f frame-r-008116-2-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0357.fits.bz2 > frame-r-008116-2-0357.fits
    fi
    if [[ ! -f frame-r-008116-2-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0358.fits.bz2 > frame-r-008116-2-0358.fits
    fi
    if [[ ! -f frame-r-008116-2-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0359.fits.bz2 > frame-r-008116-2-0359.fits
    fi
    if [[ ! -f frame-r-007757-5-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0153.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0153.fits.bz2 > frame-r-007757-5-0153.fits
    fi
    if [[ ! -f frame-r-007757-5-0155.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0155.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0155.fits.bz2 > frame-r-007757-5-0155.fits
    fi
    if [[ ! -f frame-r-007757-5-0156.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0156.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0156.fits.bz2 > frame-r-007757-5-0156.fits
    fi
    if [[ ! -f frame-r-007937-6-0179.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0179.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0179.fits.bz2 > frame-r-007937-6-0179.fits
    fi
    if [[ ! -f frame-r-007937-6-0180.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0180.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0180.fits.bz2 > frame-r-007937-6-0180.fits
    fi
    if [[ ! -f frame-r-008056-5-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0077.fits.bz2 > frame-r-008056-5-0077.fits
    fi
    if [[ ! -f frame-r-007757-4-0154.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0154.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0154.fits.bz2 > frame-r-007757-4-0154.fits
    fi
    if [[ ! -f frame-r-008056-4-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0076.fits.bz2 > frame-r-008056-4-0076.fits
    fi
    if [[ ! -f frame-r-008056-4-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0078.fits.bz2 > frame-r-008056-4-0078.fits
    fi
    if [[ ! -f frame-r-007757-2-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0153.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0153.fits.bz2 > frame-r-007757-2-0153.fits
    fi
    if [[ ! -f frame-r-007757-2-0155.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0155.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0155.fits.bz2 > frame-r-007757-2-0155.fits
    fi
    if [[ ! -f frame-r-007757-3-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0153.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0153.fits.bz2 > frame-r-007757-3-0153.fits
    fi
    if [[ ! -f frame-r-007757-3-0156.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0156.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0156.fits.bz2 > frame-r-007757-3-0156.fits
    fi
    if [[ ! -f frame-r-008056-3-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0077.fits.bz2 > frame-r-008056-3-0077.fits
    fi
    if [[ ! -f frame-r-008056-1-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0076.fits.bz2 > frame-r-008056-1-0076.fits
    fi
    if [[ ! -f frame-r-008056-1-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0078.fits.bz2 > frame-r-008056-1-0078.fits
    fi
    if [[ ! -f frame-r-008056-1-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0079.fits.bz2 > frame-r-008056-1-0079.fits
    fi
    if [[ ! -f frame-r-008056-2-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0076.fits.bz2 > frame-r-008056-2-0076.fits
    fi
    if [[ ! -f frame-r-008056-2-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0078.fits.bz2 > frame-r-008056-2-0078.fits
    fi
    if [[ ! -f frame-r-008056-2-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0079.fits.bz2 > frame-r-008056-2-0079.fits
    fi
    if [[ ! -f frame-r-004843-5-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0072.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0072.fits.bz2 > frame-r-004843-5-0072.fits
    fi
    if [[ ! -f frame-r-004843-6-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0073.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0073.fits.bz2 > frame-r-004843-6-0073.fits
    fi
    if [[ ! -f frame-r-008055-5-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0107.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0107.fits.bz2 > frame-r-008055-5-0107.fits
    fi
    if [[ ! -f frame-r-008055-6-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0107.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0107.fits.bz2 > frame-r-008055-6-0107.fits
    fi
    if [[ ! -f frame-r-008055-6-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0108.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0108.fits.bz2 > frame-r-008055-6-0108.fits
    fi
    if [[ ! -f frame-r-007941-1-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0039.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0039.fits.bz2 > frame-r-007941-1-0039.fits
    fi
    if [[ ! -f frame-r-008105-6-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0086.fits.bz2 > frame-r-008105-6-0086.fits
    fi
    if [[ ! -f frame-r-008105-6-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0087.fits.bz2 > frame-r-008105-6-0087.fits
    fi
    if [[ ! -f frame-r-008105-6-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0088.fits.bz2 > frame-r-008105-6-0088.fits
    fi
    if [[ ! -f frame-r-008112-1-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0071.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0071.fits.bz2 > frame-r-008112-1-0071.fits
    fi
    if [[ ! -f frame-r-008105-5-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0087.fits.bz2 > frame-r-008105-5-0087.fits
    fi
    if [[ ! -f frame-r-008116-5-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0364.fits.bz2 > frame-r-008116-5-0364.fits
    fi
    if [[ ! -f frame-r-008116-6-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0361.fits.bz2 > frame-r-008116-6-0361.fits
    fi
    if [[ ! -f frame-r-008116-6-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0364.fits.bz2 > frame-r-008116-6-0364.fits
    fi
    if [[ ! -f frame-r-008105-4-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0088.fits.bz2 > frame-r-008105-4-0088.fits
    fi
    if [[ ! -f frame-r-008116-4-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0361.fits.bz2 > frame-r-008116-4-0361.fits
    fi
    if [[ ! -f frame-r-008116-4-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0362.fits.bz2 > frame-r-008116-4-0362.fits
    fi
    if [[ ! -f frame-r-008116-4-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0363.fits.bz2 > frame-r-008116-4-0363.fits
    fi
    if [[ ! -f frame-r-008116-4-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0364.fits.bz2 > frame-r-008116-4-0364.fits
    fi
    if [[ ! -f frame-r-008105-2-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0086.fits.bz2 > frame-r-008105-2-0086.fits
    fi
    if [[ ! -f frame-r-008105-2-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0087.fits.bz2 > frame-r-008105-2-0087.fits
    fi
    if [[ ! -f frame-r-008105-2-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0088.fits.bz2 > frame-r-008105-2-0088.fits
    fi
    if [[ ! -f frame-r-008105-3-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0089.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0089.fits.bz2 > frame-r-008105-3-0089.fits
    fi
    if [[ ! -f frame-r-008116-3-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0361.fits.bz2 > frame-r-008116-3-0361.fits
    fi
    if [[ ! -f frame-r-008116-3-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0363.fits.bz2 > frame-r-008116-3-0363.fits
    fi
    if [[ ! -f frame-r-008116-3-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0364.fits.bz2 > frame-r-008116-3-0364.fits
    fi
    if [[ ! -f frame-r-008105-1-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0087.fits.bz2 > frame-r-008105-1-0087.fits
    fi
    if [[ ! -f frame-r-008105-1-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0088.fits.bz2 > frame-r-008105-1-0088.fits
    fi
    if [[ ! -f frame-r-008105-1-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0089.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0089.fits.bz2 > frame-r-008105-1-0089.fits
    fi
    if [[ ! -f frame-r-008116-1-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0361.fits.bz2 > frame-r-008116-1-0361.fits
    fi
    if [[ ! -f frame-r-008116-1-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0362.fits.bz2 > frame-r-008116-1-0362.fits
    fi
    if [[ ! -f frame-r-008116-1-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0364.fits.bz2 > frame-r-008116-1-0364.fits
    fi
    if [[ ! -f frame-r-007757-5-0158.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0158.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0158.fits.bz2 > frame-r-007757-5-0158.fits
    fi
    if [[ ! -f frame-r-007757-5-0160.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0160.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0160.fits.bz2 > frame-r-007757-5-0160.fits
    fi
    if [[ ! -f frame-r-007937-6-0183.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0183.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0183.fits.bz2 > frame-r-007937-6-0183.fits
    fi
    if [[ ! -f frame-r-008056-5-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0080.fits.bz2 > frame-r-008056-5-0080.fits
    fi
    if [[ ! -f frame-r-008056-5-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0081.fits.bz2 > frame-r-008056-5-0081.fits
    fi
    if [[ ! -f frame-r-008056-5-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0082.fits.bz2 > frame-r-008056-5-0082.fits
    fi
    if [[ ! -f frame-r-008056-6-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0080.fits.bz2 > frame-r-008056-6-0080.fits
    fi
    if [[ ! -f frame-r-008056-6-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0083.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0083.fits.bz2 > frame-r-008056-6-0083.fits
    fi
    if [[ ! -f frame-r-007757-4-0157.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0157.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0157.fits.bz2 > frame-r-007757-4-0157.fits
    fi
    if [[ ! -f frame-r-007757-4-0160.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0160.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0160.fits.bz2 > frame-r-007757-4-0160.fits
    fi
    if [[ ! -f frame-r-008056-4-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0080.fits.bz2 > frame-r-008056-4-0080.fits
    fi
    if [[ ! -f frame-r-008056-4-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0081.fits.bz2 > frame-r-008056-4-0081.fits
    fi
    if [[ ! -f frame-r-008056-4-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0082.fits.bz2 > frame-r-008056-4-0082.fits
    fi
    if [[ ! -f frame-r-007757-2-0157.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0157.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0157.fits.bz2 > frame-r-007757-2-0157.fits
    fi
    if [[ ! -f frame-r-007757-2-0158.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0158.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0158.fits.bz2 > frame-r-007757-2-0158.fits
    fi
    if [[ ! -f frame-r-007757-2-0159.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0159.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0159.fits.bz2 > frame-r-007757-2-0159.fits
    fi
    if [[ ! -f frame-r-007757-2-0160.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0160.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0160.fits.bz2 > frame-r-007757-2-0160.fits
    fi
    if [[ ! -f frame-r-008056-3-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0082.fits.bz2 > frame-r-008056-3-0082.fits
    fi
    if [[ ! -f frame-r-007937-1-0182.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0182.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0182.fits.bz2 > frame-r-007937-1-0182.fits
    fi
    if [[ ! -f frame-r-007937-1-0183.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0183.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0183.fits.bz2 > frame-r-007937-1-0183.fits
    fi
    if [[ ! -f frame-r-007937-1-0184.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0184.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0184.fits.bz2 > frame-r-007937-1-0184.fits
    fi
    if [[ ! -f frame-r-008056-1-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0080.fits.bz2 > frame-r-008056-1-0080.fits
    fi
    if [[ ! -f frame-r-008056-1-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0082.fits.bz2 > frame-r-008056-1-0082.fits
    fi
    if [[ ! -f frame-r-008056-2-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0082.fits.bz2 > frame-r-008056-2-0082.fits
    fi
    if [[ ! -f frame-r-008055-6-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0109.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0109.fits.bz2 > frame-r-008055-6-0109.fits
    fi
    if [[ ! -f frame-r-008055-6-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0110.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0110.fits.bz2 > frame-r-008055-6-0110.fits
    fi
    if [[ ! -f frame-r-008116-5-0365.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0365.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0365.fits.bz2 > frame-r-008116-5-0365.fits
    fi
    if [[ ! -f frame-r-008105-4-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0091.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0091.fits.bz2 > frame-r-008105-4-0091.fits
    fi
    if [[ ! -f frame-r-008116-4-0365.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0365.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0365.fits.bz2 > frame-r-008116-4-0365.fits
    fi
    if [[ ! -f frame-r-008105-2-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0091.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0091.fits.bz2 > frame-r-008105-2-0091.fits
    fi
    if [[ ! -f frame-r-008105-2-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0092.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0092.fits.bz2 > frame-r-008105-2-0092.fits
    fi
    if [[ ! -f frame-r-008105-3-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0090.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0090.fits.bz2 > frame-r-008105-3-0090.fits
    fi
    if [[ ! -f frame-r-008105-3-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0091.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0091.fits.bz2 > frame-r-008105-3-0091.fits
    fi
    if [[ ! -f frame-r-008105-3-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0092.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0092.fits.bz2 > frame-r-008105-3-0092.fits
    fi
    if [[ ! -f frame-r-008116-3-0366.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0366.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0366.fits.bz2 > frame-r-008116-3-0366.fits
    fi
    if [[ ! -f frame-r-008105-1-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0091.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0091.fits.bz2 > frame-r-008105-1-0091.fits
    fi
    if [[ ! -f frame-r-008116-1-0365.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0365.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0365.fits.bz2 > frame-r-008116-1-0365.fits
    fi
    if [[ ! -f frame-r-008116-1-0366.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0366.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0366.fits.bz2 > frame-r-008116-1-0366.fits
    fi
    if [[ ! -f frame-r-008116-2-0365.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0365.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0365.fits.bz2 > frame-r-008116-2-0365.fits
    fi
    if [[ ! -f frame-r-008116-2-0367.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0367.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0367.fits.bz2 > frame-r-008116-2-0367.fits
    fi
    if [[ ! -f frame-r-007757-5-0163.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0163.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0163.fits.bz2 > frame-r-007757-5-0163.fits
    fi
    if [[ ! -f frame-r-007757-5-0164.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0164.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0164.fits.bz2 > frame-r-007757-5-0164.fits
    fi
    if [[ ! -f frame-r-007937-6-0186.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0186.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0186.fits.bz2 > frame-r-007937-6-0186.fits
    fi
    if [[ ! -f frame-r-007937-6-0187.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0187.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0187.fits.bz2 > frame-r-007937-6-0187.fits
    fi
    if [[ ! -f frame-r-007937-6-0188.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0188.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0188.fits.bz2 > frame-r-007937-6-0188.fits
    fi
    if [[ ! -f frame-r-008056-5-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0083.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0083.fits.bz2 > frame-r-008056-5-0083.fits
    fi
    if [[ ! -f frame-r-008056-5-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0084.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0084.fits.bz2 > frame-r-008056-5-0084.fits
    fi
    if [[ ! -f frame-r-008056-5-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0085.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0085.fits.bz2 > frame-r-008056-5-0085.fits
    fi
    if [[ ! -f frame-r-008056-5-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0086.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0086.fits.bz2 > frame-r-008056-5-0086.fits
    fi
    if [[ ! -f frame-r-008056-6-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0085.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0085.fits.bz2 > frame-r-008056-6-0085.fits
    fi
    if [[ ! -f frame-r-008056-6-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0086.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0086.fits.bz2 > frame-r-008056-6-0086.fits
    fi
    if [[ ! -f frame-r-007757-4-0162.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0162.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0162.fits.bz2 > frame-r-007757-4-0162.fits
    fi
    if [[ ! -f frame-r-007757-4-0163.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0163.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0163.fits.bz2 > frame-r-007757-4-0163.fits
    fi
    if [[ ! -f frame-r-008056-4-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0083.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0083.fits.bz2 > frame-r-008056-4-0083.fits
    fi
    if [[ ! -f frame-r-008056-4-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0084.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0084.fits.bz2 > frame-r-008056-4-0084.fits
    fi
    if [[ ! -f frame-r-008056-4-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0085.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0085.fits.bz2 > frame-r-008056-4-0085.fits
    fi
    if [[ ! -f frame-r-008056-4-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0086.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0086.fits.bz2 > frame-r-008056-4-0086.fits
    fi
    if [[ ! -f frame-r-007757-3-0161.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0161.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0161.fits.bz2 > frame-r-007757-3-0161.fits
    fi
    if [[ ! -f frame-r-008056-3-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0084.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0084.fits.bz2 > frame-r-008056-3-0084.fits
    fi
    if [[ ! -f frame-r-008116-1-0368.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0368.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0368.fits.bz2 > frame-r-008116-1-0368.fits
    fi
    if [[ ! -f frame-r-008116-2-0368.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0368.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0368.fits.bz2 > frame-r-008116-2-0368.fits
    fi
    if [[ ! -f frame-r-007937-6-0190.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0190.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0190.fits.bz2 > frame-r-007937-6-0190.fits
    fi
    if [[ ! -f frame-r-008105-2-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0043.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0043.fits.bz2 > frame-r-008105-2-0043.fits
    fi
    if [[ ! -f frame-r-008116-3-0318.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0318.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0318.fits.bz2 > frame-r-008116-3-0318.fits
    fi
    if [[ ! -f frame-r-008116-1-0318.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0318.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0318.fits.bz2 > frame-r-008116-1-0318.fits
    fi
    if [[ ! -f frame-r-007757-6-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0115.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0115.fits.bz2 > frame-r-007757-6-0115.fits
    fi
    if [[ ! -f frame-r-008056-6-0037.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0037.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0037.fits.bz2 > frame-r-008056-6-0037.fits
    fi
    if [[ ! -f frame-r-007757-4-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0115.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0115.fits.bz2 > frame-r-007757-4-0115.fits
    fi
    if [[ ! -f frame-r-008105-5-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0046.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0046.fits.bz2 > frame-r-008105-5-0046.fits
    fi
    if [[ ! -f frame-r-008116-5-0320.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0320.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0320.fits.bz2 > frame-r-008116-5-0320.fits
    fi
    if [[ ! -f frame-r-008116-5-0321.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0321.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0321.fits.bz2 > frame-r-008116-5-0321.fits
    fi
    if [[ ! -f frame-r-008116-5-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0322.fits.bz2 > frame-r-008116-5-0322.fits
    fi
    if [[ ! -f frame-r-008116-6-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0322.fits.bz2 > frame-r-008116-6-0322.fits
    fi
    if [[ ! -f frame-r-008105-4-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0046.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0046.fits.bz2 > frame-r-008105-4-0046.fits
    fi
    if [[ ! -f frame-r-008116-4-0320.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0320.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0320.fits.bz2 > frame-r-008116-4-0320.fits
    fi
    if [[ ! -f frame-r-008116-4-0321.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0321.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0321.fits.bz2 > frame-r-008116-4-0321.fits
    fi
    if [[ ! -f frame-r-008116-4-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0322.fits.bz2 > frame-r-008116-4-0322.fits
    fi
    if [[ ! -f frame-r-008105-2-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0044.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0044.fits.bz2 > frame-r-008105-2-0044.fits
    fi
    if [[ ! -f frame-r-008105-2-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0045.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0045.fits.bz2 > frame-r-008105-2-0045.fits
    fi
    if [[ ! -f frame-r-008105-2-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0046.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0046.fits.bz2 > frame-r-008105-2-0046.fits
    fi
    if [[ ! -f frame-r-008105-3-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0044.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0044.fits.bz2 > frame-r-008105-3-0044.fits
    fi
    if [[ ! -f frame-r-008116-3-0319.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0319.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0319.fits.bz2 > frame-r-008116-3-0319.fits
    fi
    if [[ ! -f frame-r-008116-3-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0322.fits.bz2 > frame-r-008116-3-0322.fits
    fi
    if [[ ! -f frame-r-008105-1-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0044.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0044.fits.bz2 > frame-r-008105-1-0044.fits
    fi
    if [[ ! -f frame-r-008116-1-0321.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0321.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0321.fits.bz2 > frame-r-008116-1-0321.fits
    fi
    if [[ ! -f frame-r-008116-2-0319.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0319.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0319.fits.bz2 > frame-r-008116-2-0319.fits
    fi
    if [[ ! -f frame-r-008116-2-0320.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0320.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0320.fits.bz2 > frame-r-008116-2-0320.fits
    fi
    if [[ ! -f frame-r-008116-2-0321.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0321.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0321.fits.bz2 > frame-r-008116-2-0321.fits
    fi
    if [[ ! -f frame-r-008116-2-0322.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0322.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0322.fits.bz2 > frame-r-008116-2-0322.fits
    fi
    if [[ ! -f frame-r-007757-5-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0116.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0116.fits.bz2 > frame-r-007757-5-0116.fits
    fi
    if [[ ! -f frame-r-007757-6-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0117.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0117.fits.bz2 > frame-r-007757-6-0117.fits
    fi
    if [[ ! -f frame-r-008056-5-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0038.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0038.fits.bz2 > frame-r-008056-5-0038.fits
    fi
    if [[ ! -f frame-r-008056-5-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0039.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0039.fits.bz2 > frame-r-008056-5-0039.fits
    fi
    if [[ ! -f frame-r-008056-6-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0040.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0040.fits.bz2 > frame-r-008056-6-0040.fits
    fi
    if [[ ! -f frame-r-008056-6-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0041.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0041.fits.bz2 > frame-r-008056-6-0041.fits
    fi
    if [[ ! -f frame-r-007757-4-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0116.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0116.fits.bz2 > frame-r-007757-4-0116.fits
    fi
    if [[ ! -f frame-r-008056-4-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0038.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0038.fits.bz2 > frame-r-008056-4-0038.fits
    fi
    if [[ ! -f frame-r-008056-4-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0039.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0039.fits.bz2 > frame-r-008056-4-0039.fits
    fi
    if [[ ! -f frame-r-008056-4-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0041.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0041.fits.bz2 > frame-r-008056-4-0041.fits
    fi
    if [[ ! -f frame-r-007757-2-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0118.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0118.fits.bz2 > frame-r-007757-2-0118.fits
    fi
    if [[ ! -f frame-r-007757-3-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0117.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0117.fits.bz2 > frame-r-007757-3-0117.fits
    fi
    if [[ ! -f frame-r-008056-3-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0039.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0039.fits.bz2 > frame-r-008056-3-0039.fits
    fi
    if [[ ! -f frame-r-008056-3-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0041.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0041.fits.bz2 > frame-r-008056-3-0041.fits
    fi
    if [[ ! -f frame-r-008056-2-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0040.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0040.fits.bz2 > frame-r-008056-2-0040.fits
    fi
    if [[ ! -f frame-r-008056-2-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0041.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0041.fits.bz2 > frame-r-008056-2-0041.fits
    fi
    if [[ ! -f frame-r-008111-1-0173.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0173.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0173.fits.bz2 > frame-r-008111-1-0173.fits
    fi
    if [[ ! -f frame-r-008111-1-0174.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0174.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0174.fits.bz2 > frame-r-008111-1-0174.fits
    fi
    if [[ ! -f frame-r-008105-5-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0049.fits.bz2 > frame-r-008105-5-0049.fits
    fi
    if [[ ! -f frame-r-008105-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0050.fits.bz2 > frame-r-008105-5-0050.fits
    fi
    if [[ ! -f frame-r-008105-6-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0048.fits.bz2 > frame-r-008105-6-0048.fits
    fi
    if [[ ! -f frame-r-008105-6-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0050.fits.bz2 > frame-r-008105-6-0050.fits
    fi
    if [[ ! -f frame-r-008116-5-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0323.fits.bz2 > frame-r-008116-5-0323.fits
    fi
    if [[ ! -f frame-r-008116-5-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0326.fits.bz2 > frame-r-008116-5-0326.fits
    fi
    if [[ ! -f frame-r-008116-6-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0325.fits.bz2 > frame-r-008116-6-0325.fits
    fi
    if [[ ! -f frame-r-008116-6-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0326.fits.bz2 > frame-r-008116-6-0326.fits
    fi
    if [[ ! -f frame-r-008105-4-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0049.fits.bz2 > frame-r-008105-4-0049.fits
    fi
    if [[ ! -f frame-r-008105-4-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0050.fits.bz2 > frame-r-008105-4-0050.fits
    fi
    if [[ ! -f frame-r-008105-4-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0051.fits.bz2 > frame-r-008105-4-0051.fits
    fi
    if [[ ! -f frame-r-008116-4-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0325.fits.bz2 > frame-r-008116-4-0325.fits
    fi
    if [[ ! -f frame-r-008116-4-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0326.fits.bz2 > frame-r-008116-4-0326.fits
    fi
    if [[ ! -f frame-r-008105-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0049.fits.bz2 > frame-r-008105-2-0049.fits
    fi
    if [[ ! -f frame-r-008105-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0050.fits.bz2 > frame-r-008105-2-0050.fits
    fi
    if [[ ! -f frame-r-008105-3-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0049.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0049.fits.bz2 > frame-r-008105-3-0049.fits
    fi
    if [[ ! -f frame-r-008105-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0050.fits.bz2 > frame-r-008105-3-0050.fits
    fi
    if [[ ! -f frame-r-008105-3-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0051.fits.bz2 > frame-r-008105-3-0051.fits
    fi
    if [[ ! -f frame-r-008116-3-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0324.fits.bz2 > frame-r-008116-3-0324.fits
    fi
    if [[ ! -f frame-r-008116-3-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0325.fits.bz2 > frame-r-008116-3-0325.fits
    fi
    if [[ ! -f frame-r-008116-3-0326.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0326.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0326.fits.bz2 > frame-r-008116-3-0326.fits
    fi
    if [[ ! -f frame-r-008105-1-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0048.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0048.fits.bz2 > frame-r-008105-1-0048.fits
    fi
    if [[ ! -f frame-r-008105-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0050.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0050.fits.bz2 > frame-r-008105-1-0050.fits
    fi
    if [[ ! -f frame-r-008105-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0051.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0051.fits.bz2 > frame-r-008105-1-0051.fits
    fi
    if [[ ! -f frame-r-008116-1-0323.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0323.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0323.fits.bz2 > frame-r-008116-1-0323.fits
    fi
    if [[ ! -f frame-r-008116-1-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0324.fits.bz2 > frame-r-008116-1-0324.fits
    fi
    if [[ ! -f frame-r-008116-1-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0325.fits.bz2 > frame-r-008116-1-0325.fits
    fi
    if [[ ! -f frame-r-008116-2-0324.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0324.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0324.fits.bz2 > frame-r-008116-2-0324.fits
    fi
    if [[ ! -f frame-r-008116-2-0325.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0325.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0325.fits.bz2 > frame-r-008116-2-0325.fits
    fi
    if [[ ! -f frame-r-007757-5-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0119.fits.bz2 > frame-r-007757-5-0119.fits
    fi
    if [[ ! -f frame-r-007757-5-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0121.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0121.fits.bz2 > frame-r-007757-5-0121.fits
    fi
    if [[ ! -f frame-r-007757-6-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0119.fits.bz2 > frame-r-007757-6-0119.fits
    fi
    if [[ ! -f frame-r-007757-6-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0120.fits.bz2 > frame-r-007757-6-0120.fits
    fi
    if [[ ! -f frame-r-007757-6-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0122.fits.bz2 > frame-r-007757-6-0122.fits
    fi
    if [[ ! -f frame-r-008056-5-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0044.fits.bz2 > frame-r-008056-5-0044.fits
    fi
    if [[ ! -f frame-r-008056-5-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0045.fits.bz2 > frame-r-008056-5-0045.fits
    fi
    if [[ ! -f frame-r-008056-6-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0045.fits.bz2 > frame-r-008056-6-0045.fits
    fi
    if [[ ! -f frame-r-007757-4-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0119.fits.bz2 > frame-r-007757-4-0119.fits
    fi
    if [[ ! -f frame-r-007757-4-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0122.fits.bz2 > frame-r-007757-4-0122.fits
    fi
    if [[ ! -f frame-r-008056-4-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0043.fits.bz2 > frame-r-008056-4-0043.fits
    fi
    if [[ ! -f frame-r-008056-4-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0045.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0045.fits.bz2 > frame-r-008056-4-0045.fits
    fi
    if [[ ! -f frame-r-007757-2-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0119.fits.bz2 > frame-r-007757-2-0119.fits
    fi
    if [[ ! -f frame-r-007757-2-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0120.fits.bz2 > frame-r-007757-2-0120.fits
    fi
    if [[ ! -f frame-r-007757-3-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0119.fits.bz2 > frame-r-007757-3-0119.fits
    fi
    if [[ ! -f frame-r-007757-3-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0120.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0120.fits.bz2 > frame-r-007757-3-0120.fits
    fi
    if [[ ! -f frame-r-007757-3-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0122.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0122.fits.bz2 > frame-r-007757-3-0122.fits
    fi
    if [[ ! -f frame-r-008056-3-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0043.fits.bz2 > frame-r-008056-3-0043.fits
    fi
    if [[ ! -f frame-r-007757-1-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0119.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0119.fits.bz2 > frame-r-007757-1-0119.fits
    fi
    if [[ ! -f frame-r-008056-1-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0042.fits.bz2 > frame-r-008056-1-0042.fits
    fi
    if [[ ! -f frame-r-008056-2-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0042.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0042.fits.bz2 > frame-r-008056-2-0042.fits
    fi
    if [[ ! -f frame-r-008056-2-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0043.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0043.fits.bz2 > frame-r-008056-2-0043.fits
    fi
    if [[ ! -f frame-r-008056-2-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0044.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0044.fits.bz2 > frame-r-008056-2-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0040.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0040.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0040.fits.bz2 > frame-r-004843-6-0040.fits
    fi
    if [[ ! -f frame-r-008055-6-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0073.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0073.fits.bz2 > frame-r-008055-6-0073.fits
    fi
    if [[ ! -f frame-r-008055-6-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0074.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0074.fits.bz2 > frame-r-008055-6-0074.fits
    fi
    if [[ ! -f frame-r-008112-2-0039.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0039.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0039.fits.bz2 > frame-r-008112-2-0039.fits
    fi
    if [[ ! -f frame-r-008111-1-0176.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0176.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0176.fits.bz2 > frame-r-008111-1-0176.fits
    fi
    if [[ ! -f frame-r-008111-1-0178.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0178.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0178.fits.bz2 > frame-r-008111-1-0178.fits
    fi
    if [[ ! -f frame-r-008112-1-0037.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0037.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0037.fits.bz2 > frame-r-008112-1-0037.fits
    fi
    if [[ ! -f frame-r-008112-1-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0038.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0038.fits.bz2 > frame-r-008112-1-0038.fits
    fi
    if [[ ! -f frame-r-008105-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0053.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0053.fits.bz2 > frame-r-008105-5-0053.fits
    fi
    if [[ ! -f frame-r-008105-5-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0055.fits.bz2 > frame-r-008105-5-0055.fits
    fi
    if [[ ! -f frame-r-008105-6-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0054.fits.bz2 > frame-r-008105-6-0054.fits
    fi
    if [[ ! -f frame-r-008116-5-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0330.fits.bz2 > frame-r-008116-5-0330.fits
    fi
    if [[ ! -f frame-r-008116-6-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0327.fits.bz2 > frame-r-008116-6-0327.fits
    fi
    if [[ ! -f frame-r-008116-6-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0328.fits.bz2 > frame-r-008116-6-0328.fits
    fi
    if [[ ! -f frame-r-008105-4-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0054.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0054.fits.bz2 > frame-r-008105-4-0054.fits
    fi
    if [[ ! -f frame-r-008105-4-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0055.fits.bz2 > frame-r-008105-4-0055.fits
    fi
    if [[ ! -f frame-r-008116-4-0330.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0330.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0330.fits.bz2 > frame-r-008116-4-0330.fits
    fi
    if [[ ! -f frame-r-008105-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0052.fits.bz2 > frame-r-008105-2-0052.fits
    fi
    if [[ ! -f frame-r-008105-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0052.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0052.fits.bz2 > frame-r-008105-1-0052.fits
    fi
    if [[ ! -f frame-r-008105-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0055.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0055.fits.bz2 > frame-r-008105-1-0055.fits
    fi
    if [[ ! -f frame-r-008116-1-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0327.fits.bz2 > frame-r-008116-1-0327.fits
    fi
    if [[ ! -f frame-r-008116-1-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0329.fits.bz2 > frame-r-008116-1-0329.fits
    fi
    if [[ ! -f frame-r-008116-2-0327.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0327.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0327.fits.bz2 > frame-r-008116-2-0327.fits
    fi
    if [[ ! -f frame-r-008116-2-0328.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0328.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0328.fits.bz2 > frame-r-008116-2-0328.fits
    fi
    if [[ ! -f frame-r-008116-2-0329.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0329.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0329.fits.bz2 > frame-r-008116-2-0329.fits
    fi
    if [[ ! -f frame-r-007757-5-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0123.fits.bz2 > frame-r-007757-5-0123.fits
    fi
    if [[ ! -f frame-r-007757-5-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0124.fits.bz2 > frame-r-007757-5-0124.fits
    fi
    if [[ ! -f frame-r-007757-5-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0125.fits.bz2 > frame-r-007757-5-0125.fits
    fi
    if [[ ! -f frame-r-007757-6-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0123.fits.bz2 > frame-r-007757-6-0123.fits
    fi
    if [[ ! -f frame-r-007757-6-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0124.fits.bz2 > frame-r-007757-6-0124.fits
    fi
    if [[ ! -f frame-r-007757-6-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0126.fits.bz2 > frame-r-007757-6-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0046.fits.bz2 > frame-r-008056-5-0046.fits
    fi
    if [[ ! -f frame-r-008056-5-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0047.fits.bz2 > frame-r-008056-5-0047.fits
    fi
    if [[ ! -f frame-r-008056-5-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0048.fits.bz2 > frame-r-008056-5-0048.fits
    fi
    if [[ ! -f frame-r-008056-6-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0046.fits.bz2 > frame-r-008056-6-0046.fits
    fi
    if [[ ! -f frame-r-008056-6-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0047.fits.bz2 > frame-r-008056-6-0047.fits
    fi
    if [[ ! -f frame-r-007757-4-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0123.fits.bz2 > frame-r-007757-4-0123.fits
    fi
    if [[ ! -f frame-r-007757-4-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0124.fits.bz2 > frame-r-007757-4-0124.fits
    fi
    if [[ ! -f frame-r-007757-4-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0125.fits.bz2 > frame-r-007757-4-0125.fits
    fi
    if [[ ! -f frame-r-008056-4-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0046.fits.bz2 > frame-r-008056-4-0046.fits
    fi
    if [[ ! -f frame-r-008056-4-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0047.fits.bz2 > frame-r-008056-4-0047.fits
    fi
    if [[ ! -f frame-r-008056-4-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0048.fits.bz2 > frame-r-008056-4-0048.fits
    fi
    if [[ ! -f frame-r-007757-2-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0123.fits.bz2 > frame-r-007757-2-0123.fits
    fi
    if [[ ! -f frame-r-007757-2-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0124.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0124.fits.bz2 > frame-r-007757-2-0124.fits
    fi
    if [[ ! -f frame-r-007757-2-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0125.fits.bz2 > frame-r-007757-2-0125.fits
    fi
    if [[ ! -f frame-r-007757-2-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0126.fits.bz2 > frame-r-007757-2-0126.fits
    fi
    if [[ ! -f frame-r-007757-3-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0123.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0123.fits.bz2 > frame-r-007757-3-0123.fits
    fi
    if [[ ! -f frame-r-007757-3-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0125.fits.bz2 > frame-r-007757-3-0125.fits
    fi
    if [[ ! -f frame-r-007757-3-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0126.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0126.fits.bz2 > frame-r-007757-3-0126.fits
    fi
    if [[ ! -f frame-r-008056-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0046.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0046.fits.bz2 > frame-r-008056-3-0046.fits
    fi
    if [[ ! -f frame-r-008056-3-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0048.fits.bz2 > frame-r-008056-3-0048.fits
    fi
    if [[ ! -f frame-r-007757-1-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0125.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0125.fits.bz2 > frame-r-007757-1-0125.fits
    fi
    if [[ ! -f frame-r-008056-1-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0047.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0047.fits.bz2 > frame-r-008056-1-0047.fits
    fi
    if [[ ! -f frame-r-008056-2-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0048.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0048.fits.bz2 > frame-r-008056-2-0048.fits
    fi
    if [[ ! -f frame-r-004843-5-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0043.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0043.fits.bz2 > frame-r-004843-5-0043.fits
    fi
    if [[ ! -f frame-r-004843-5-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0044.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0044.fits.bz2 > frame-r-004843-5-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0043.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0043.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0043.fits.bz2 > frame-r-004843-6-0043.fits
    fi
    if [[ ! -f frame-r-004843-6-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0044.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0044.fits.bz2 > frame-r-004843-6-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0045.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0045.fits.bz2 > frame-r-004843-6-0045.fits
    fi
    if [[ ! -f frame-r-008055-5-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0075.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0075.fits.bz2 > frame-r-008055-5-0075.fits
    fi
    if [[ ! -f frame-r-008055-5-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0076.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0076.fits.bz2 > frame-r-008055-5-0076.fits
    fi
    if [[ ! -f frame-r-008055-5-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0077.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0077.fits.bz2 > frame-r-008055-5-0077.fits
    fi
    if [[ ! -f frame-r-008055-5-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0078.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0078.fits.bz2 > frame-r-008055-5-0078.fits
    fi
    if [[ ! -f frame-r-008055-6-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0075.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0075.fits.bz2 > frame-r-008055-6-0075.fits
    fi
    if [[ ! -f frame-r-008111-3-0180.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0180.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0180.fits.bz2 > frame-r-008111-3-0180.fits
    fi
    if [[ ! -f frame-r-008111-3-0181.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0181.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0181.fits.bz2 > frame-r-008111-3-0181.fits
    fi
    if [[ ! -f frame-r-008111-3-0182.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0182.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0182.fits.bz2 > frame-r-008111-3-0182.fits
    fi
    if [[ ! -f frame-r-008112-2-0041.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0041.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0041.fits.bz2 > frame-r-008112-2-0041.fits
    fi
    if [[ ! -f frame-r-008111-1-0179.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0179.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0179.fits.bz2 > frame-r-008111-1-0179.fits
    fi
    if [[ ! -f frame-r-008111-1-0180.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0180.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0180.fits.bz2 > frame-r-008111-1-0180.fits
    fi
    if [[ ! -f frame-r-008112-1-0042.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0042.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0042.fits.bz2 > frame-r-008112-1-0042.fits
    fi
    if [[ ! -f frame-r-008105-6-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0058.fits.bz2 > frame-r-008105-6-0058.fits
    fi
    if [[ ! -f frame-r-008116-5-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0333.fits.bz2 > frame-r-008116-5-0333.fits
    fi
    if [[ ! -f frame-r-008116-6-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0332.fits.bz2 > frame-r-008116-6-0332.fits
    fi
    if [[ ! -f frame-r-008105-4-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0056.fits.bz2 > frame-r-008105-4-0056.fits
    fi
    if [[ ! -f frame-r-008105-4-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0058.fits.bz2 > frame-r-008105-4-0058.fits
    fi
    if [[ ! -f frame-r-008116-4-0332.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0332.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0332.fits.bz2 > frame-r-008116-4-0332.fits
    fi
    if [[ ! -f frame-r-008116-4-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0333.fits.bz2 > frame-r-008116-4-0333.fits
    fi
    if [[ ! -f frame-r-008105-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0058.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0058.fits.bz2 > frame-r-008105-3-0058.fits
    fi
    if [[ ! -f frame-r-008116-3-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0331.fits.bz2 > frame-r-008116-3-0331.fits
    fi
    if [[ ! -f frame-r-008116-3-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0333.fits.bz2 > frame-r-008116-3-0333.fits
    fi
    if [[ ! -f frame-r-008105-1-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0056.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0056.fits.bz2 > frame-r-008105-1-0056.fits
    fi
    if [[ ! -f frame-r-008116-1-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0331.fits.bz2 > frame-r-008116-1-0331.fits
    fi
    if [[ ! -f frame-r-008116-1-0333.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0333.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0333.fits.bz2 > frame-r-008116-1-0333.fits
    fi
    if [[ ! -f frame-r-008116-2-0331.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0331.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0331.fits.bz2 > frame-r-008116-2-0331.fits
    fi
    if [[ ! -f frame-r-007757-5-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0129.fits.bz2 > frame-r-007757-5-0129.fits
    fi
    if [[ ! -f frame-r-007757-5-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0130.fits.bz2 > frame-r-007757-5-0130.fits
    fi
    if [[ ! -f frame-r-007757-6-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0127.fits.bz2 > frame-r-007757-6-0127.fits
    fi
    if [[ ! -f frame-r-007757-6-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0129.fits.bz2 > frame-r-007757-6-0129.fits
    fi
    if [[ ! -f frame-r-008056-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0050.fits.bz2 > frame-r-008056-5-0050.fits
    fi
    if [[ ! -f frame-r-008056-5-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0051.fits.bz2 > frame-r-008056-5-0051.fits
    fi
    if [[ ! -f frame-r-008056-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0052.fits.bz2 > frame-r-008056-5-0052.fits
    fi
    if [[ ! -f frame-r-008056-6-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0049.fits.bz2 > frame-r-008056-6-0049.fits
    fi
    if [[ ! -f frame-r-008056-6-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0050.fits.bz2 > frame-r-008056-6-0050.fits
    fi
    if [[ ! -f frame-r-008056-6-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0051.fits.bz2 > frame-r-008056-6-0051.fits
    fi
    if [[ ! -f frame-r-007757-4-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0127.fits.bz2 > frame-r-007757-4-0127.fits
    fi
    if [[ ! -f frame-r-007757-4-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0128.fits.bz2 > frame-r-007757-4-0128.fits
    fi
    if [[ ! -f frame-r-008056-4-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0049.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0049.fits.bz2 > frame-r-008056-4-0049.fits
    fi
    if [[ ! -f frame-r-008056-4-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0051.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0051.fits.bz2 > frame-r-008056-4-0051.fits
    fi
    if [[ ! -f frame-r-007757-2-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0129.fits.bz2 > frame-r-007757-2-0129.fits
    fi
    if [[ ! -f frame-r-007757-2-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0130.fits.bz2 > frame-r-007757-2-0130.fits
    fi
    if [[ ! -f frame-r-007757-3-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0130.fits.bz2 > frame-r-007757-3-0130.fits
    fi
    if [[ ! -f frame-r-008056-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0050.fits.bz2 > frame-r-008056-3-0050.fits
    fi
    if [[ ! -f frame-r-007757-1-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0127.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0127.fits.bz2 > frame-r-007757-1-0127.fits
    fi
    if [[ ! -f frame-r-007757-1-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0128.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0128.fits.bz2 > frame-r-007757-1-0128.fits
    fi
    if [[ ! -f frame-r-007757-1-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0129.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0129.fits.bz2 > frame-r-007757-1-0129.fits
    fi
    if [[ ! -f frame-r-007757-1-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/1/frame-r-007757-1-0130.fits.bz2
        bzip2 -d -c -k frame-r-007757-1-0130.fits.bz2 > frame-r-007757-1-0130.fits
    fi
    if [[ ! -f frame-r-008056-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0050.fits.bz2 > frame-r-008056-1-0050.fits
    fi
    if [[ ! -f frame-r-008056-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0052.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0052.fits.bz2 > frame-r-008056-1-0052.fits
    fi
    if [[ ! -f frame-r-008056-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0050.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0050.fits.bz2 > frame-r-008056-2-0050.fits
    fi
    if [[ ! -f frame-r-004843-5-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0047.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0047.fits.bz2 > frame-r-004843-5-0047.fits
    fi
    if [[ ! -f frame-r-004843-6-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0046.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0046.fits.bz2 > frame-r-004843-6-0046.fits
    fi
    if [[ ! -f frame-r-008055-5-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0080.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0080.fits.bz2 > frame-r-008055-5-0080.fits
    fi
    if [[ ! -f frame-r-008055-6-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0080.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0080.fits.bz2 > frame-r-008055-6-0080.fits
    fi
    if [[ ! -f frame-r-008055-6-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0081.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0081.fits.bz2 > frame-r-008055-6-0081.fits
    fi
    if [[ ! -f frame-r-004843-4-0048.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0048.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0048.fits.bz2 > frame-r-004843-4-0048.fits
    fi
    if [[ ! -f frame-r-008055-4-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0079.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0079.fits.bz2 > frame-r-008055-4-0079.fits
    fi
    if [[ ! -f frame-r-008055-4-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0080.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0080.fits.bz2 > frame-r-008055-4-0080.fits
    fi
    if [[ ! -f frame-r-008055-4-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0081.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0081.fits.bz2 > frame-r-008055-4-0081.fits
    fi
    if [[ ! -f frame-r-008055-4-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0082.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0082.fits.bz2 > frame-r-008055-4-0082.fits
    fi
    if [[ ! -f frame-r-008111-3-0183.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0183.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0183.fits.bz2 > frame-r-008111-3-0183.fits
    fi
    if [[ ! -f frame-r-008111-3-0186.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0186.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0186.fits.bz2 > frame-r-008111-3-0186.fits
    fi
    if [[ ! -f frame-r-008112-2-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0045.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0045.fits.bz2 > frame-r-008112-2-0045.fits
    fi
    if [[ ! -f frame-r-008112-2-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0047.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0047.fits.bz2 > frame-r-008112-2-0047.fits
    fi
    if [[ ! -f frame-r-008112-3-0046.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0046.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0046.fits.bz2 > frame-r-008112-3-0046.fits
    fi
    if [[ ! -f frame-r-008111-1-0185.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0185.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0185.fits.bz2 > frame-r-008111-1-0185.fits
    fi
    if [[ ! -f frame-r-008111-2-0185.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0185.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0185.fits.bz2 > frame-r-008111-2-0185.fits
    fi
    if [[ ! -f frame-r-008112-1-0044.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0044.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0044.fits.bz2 > frame-r-008112-1-0044.fits
    fi
    if [[ ! -f frame-r-008112-1-0045.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0045.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0045.fits.bz2 > frame-r-008112-1-0045.fits
    fi
    if [[ ! -f frame-r-008112-1-0047.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0047.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0047.fits.bz2 > frame-r-008112-1-0047.fits
    fi
    if [[ ! -f frame-r-008105-5-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0059.fits.bz2 > frame-r-008105-5-0059.fits
    fi
    if [[ ! -f frame-r-008105-5-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0061.fits.bz2 > frame-r-008105-5-0061.fits
    fi
    if [[ ! -f frame-r-008105-6-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0059.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0059.fits.bz2 > frame-r-008105-6-0059.fits
    fi
    if [[ ! -f frame-r-008105-6-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0060.fits.bz2 > frame-r-008105-6-0060.fits
    fi
    if [[ ! -f frame-r-008105-6-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0061.fits.bz2 > frame-r-008105-6-0061.fits
    fi
    if [[ ! -f frame-r-008105-6-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0062.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0062.fits.bz2 > frame-r-008105-6-0062.fits
    fi
    if [[ ! -f frame-r-008116-5-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0335.fits.bz2 > frame-r-008116-5-0335.fits
    fi
    if [[ ! -f frame-r-008116-6-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0335.fits.bz2 > frame-r-008116-6-0335.fits
    fi
    if [[ ! -f frame-r-008116-6-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0336.fits.bz2 > frame-r-008116-6-0336.fits
    fi
    if [[ ! -f frame-r-008116-6-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0337.fits.bz2 > frame-r-008116-6-0337.fits
    fi
    if [[ ! -f frame-r-008105-4-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0060.fits.bz2 > frame-r-008105-4-0060.fits
    fi
    if [[ ! -f frame-r-004800-6-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0118.fits.bz2 > frame-r-004800-6-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0062.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0062.fits.bz2 > frame-r-008105-4-0062.fits
    fi
    if [[ ! -f frame-r-008116-4-0335.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0335.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0335.fits.bz2 > frame-r-008116-4-0335.fits
    fi
    if [[ ! -f frame-r-008116-4-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0337.fits.bz2 > frame-r-008116-4-0337.fits
    fi
    if [[ ! -f frame-r-008105-2-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0060.fits.bz2 > frame-r-008105-2-0060.fits
    fi
    if [[ ! -f frame-r-008105-2-0061.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0061.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0061.fits.bz2 > frame-r-008105-2-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0113.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0113.fits.bz2 > frame-r-004800-6-0113.fits
    fi
    if [[ ! -f frame-r-004800-6-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0112.fits.bz2 > frame-r-004800-6-0112.fits
    fi
    if [[ ! -f frame-r-008116-3-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0334.fits.bz2 > frame-r-008116-3-0334.fits
    fi
    if [[ ! -f frame-r-008105-1-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0060.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0060.fits.bz2 > frame-r-008105-1-0060.fits
    fi
    if [[ ! -f frame-r-004800-6-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0110.fits.bz2 > frame-r-004800-6-0110.fits
    fi
    if [[ ! -f frame-r-004800-6-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0109.fits.bz2 > frame-r-004800-6-0109.fits
    fi
    if [[ ! -f frame-r-008116-2-0334.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0334.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0334.fits.bz2 > frame-r-008116-2-0334.fits
    fi
    if [[ ! -f frame-r-008116-2-0336.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0336.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0336.fits.bz2 > frame-r-008116-2-0336.fits
    fi
    if [[ ! -f frame-r-007757-5-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0132.fits.bz2 > frame-r-007757-5-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0104.fits.bz2 > frame-r-004800-6-0104.fits
    fi
    if [[ ! -f frame-r-004800-6-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0105.fits.bz2 > frame-r-004800-6-0105.fits
    fi
    if [[ ! -f frame-r-007757-6-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/6/frame-r-007757-6-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-6-0131.fits.bz2 > frame-r-007757-6-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0107.fits.bz2 > frame-r-004800-6-0107.fits
    fi
    if [[ ! -f frame-r-004800-6-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0108.fits.bz2 > frame-r-004800-6-0108.fits
    fi
    if [[ ! -f frame-r-008056-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0053.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0053.fits.bz2 > frame-r-008056-5-0053.fits
    fi
    if [[ ! -f frame-r-008056-5-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0054.fits.bz2 > frame-r-008056-5-0054.fits
    fi
    if [[ ! -f frame-r-008056-6-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0054.fits.bz2 > frame-r-008056-6-0054.fits
    fi
    if [[ ! -f frame-r-008056-6-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0055.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0055.fits.bz2 > frame-r-008056-6-0055.fits
    fi
    if [[ ! -f frame-r-004800-6-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0106.fits.bz2 > frame-r-004800-6-0106.fits
    fi
    if [[ ! -f frame-r-007757-4-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0131.fits.bz2 > frame-r-007757-4-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0101.fits.bz2 > frame-r-004800-6-0101.fits
    fi
    if [[ ! -f frame-r-004800-6-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0103.fits.bz2 > frame-r-004800-6-0103.fits
    fi
    if [[ ! -f frame-r-008056-4-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0054.fits.bz2 > frame-r-008056-4-0054.fits
    fi
    if [[ ! -f frame-r-007757-2-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0131.fits.bz2 > frame-r-007757-2-0131.fits
    fi
    if [[ ! -f frame-r-007757-2-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0132.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0132.fits.bz2 > frame-r-007757-2-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0097.fits.bz2 > frame-r-004800-6-0097.fits
    fi
    if [[ ! -f frame-r-007757-3-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0131.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0131.fits.bz2 > frame-r-007757-3-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0098.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0098.fits.bz2 > frame-r-004800-6-0098.fits
    fi
    if [[ ! -f frame-r-004800-6-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0100.fits.bz2 > frame-r-004800-6-0100.fits
    fi
    if [[ ! -f frame-r-004800-6-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0099.fits.bz2 > frame-r-004800-6-0099.fits
    fi
    if [[ ! -f frame-r-004800-6-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0094.fits.bz2 > frame-r-004800-6-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0054.fits.bz2 > frame-r-008056-1-0054.fits
    fi
    if [[ ! -f frame-r-008056-1-0056.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0056.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0056.fits.bz2 > frame-r-008056-1-0056.fits
    fi
    if [[ ! -f frame-r-008056-2-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0054.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0054.fits.bz2 > frame-r-008056-2-0054.fits
    fi
    if [[ ! -f frame-r-004843-5-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0050.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0050.fits.bz2 > frame-r-004843-5-0050.fits
    fi
    if [[ ! -f frame-r-004843-5-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0052.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0052.fits.bz2 > frame-r-004843-5-0052.fits
    fi
    if [[ ! -f frame-r-004843-6-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0049.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0049.fits.bz2 > frame-r-004843-6-0049.fits
    fi
    if [[ ! -f frame-r-004843-6-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0051.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0051.fits.bz2 > frame-r-004843-6-0051.fits
    fi
    if [[ ! -f frame-r-004843-6-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0052.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0052.fits.bz2 > frame-r-004843-6-0052.fits
    fi
    if [[ ! -f frame-r-008055-6-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0083.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0083.fits.bz2 > frame-r-008055-6-0083.fits
    fi
    if [[ ! -f frame-r-008055-6-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0084.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0084.fits.bz2 > frame-r-008055-6-0084.fits
    fi
    if [[ ! -f frame-r-004843-4-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0050.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0050.fits.bz2 > frame-r-004843-4-0050.fits
    fi
    if [[ ! -f frame-r-004843-4-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0052.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0052.fits.bz2 > frame-r-004843-4-0052.fits
    fi
    if [[ ! -f frame-r-008055-4-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0083.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0083.fits.bz2 > frame-r-008055-4-0083.fits
    fi
    if [[ ! -f frame-r-008055-4-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0084.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0084.fits.bz2 > frame-r-008055-4-0084.fits
    fi
    if [[ ! -f frame-r-008055-4-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0085.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0085.fits.bz2 > frame-r-008055-4-0085.fits
    fi
    if [[ ! -f frame-r-008111-4-0187.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0187.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0187.fits.bz2 > frame-r-008111-4-0187.fits
    fi
    if [[ ! -f frame-r-008111-4-0189.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0189.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0189.fits.bz2 > frame-r-008111-4-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0149.fits.bz2 > frame-r-004829-5-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0049.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0049.fits.bz2 > frame-r-008112-2-0049.fits
    fi
    if [[ ! -f frame-r-008112-2-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0050.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0050.fits.bz2 > frame-r-008112-2-0050.fits
    fi
    if [[ ! -f frame-r-004829-5-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0148.fits.bz2 > frame-r-004829-5-0148.fits
    fi
    if [[ ! -f frame-r-004829-5-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0151.fits.bz2 > frame-r-004829-5-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0050.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0050.fits.bz2 > frame-r-008112-3-0050.fits
    fi
    if [[ ! -f frame-r-004829-5-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0145.fits.bz2 > frame-r-004829-5-0145.fits
    fi
    if [[ ! -f frame-r-004829-5-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0144.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0144.fits.bz2 > frame-r-004829-5-0144.fits
    fi
    if [[ ! -f frame-r-008111-2-0188.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0188.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0188.fits.bz2 > frame-r-008111-2-0188.fits
    fi
    if [[ ! -f frame-r-008111-2-0189.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0189.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0189.fits.bz2 > frame-r-008111-2-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0147.fits.bz2 > frame-r-004829-5-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0049.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0049.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0049.fits.bz2 > frame-r-008112-1-0049.fits
    fi
    if [[ ! -f frame-r-008112-1-0050.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0050.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0050.fits.bz2 > frame-r-008112-1-0050.fits
    fi
    if [[ ! -f frame-r-004829-6-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0140.fits.bz2 > frame-r-004829-6-0140.fits
    fi
    if [[ ! -f frame-r-004829-6-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0141.fits.bz2 > frame-r-004829-6-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0064.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0064.fits.bz2 > frame-r-008105-5-0064.fits
    fi
    if [[ ! -f frame-r-004829-5-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0140.fits.bz2 > frame-r-004829-5-0140.fits
    fi
    if [[ ! -f frame-r-004829-6-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0142.fits.bz2 > frame-r-004829-6-0142.fits
    fi
    if [[ ! -f frame-r-004829-5-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0143.fits.bz2 > frame-r-004829-5-0143.fits
    fi
    if [[ ! -f frame-r-008116-5-0339.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0339.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0339.fits.bz2 > frame-r-008116-5-0339.fits
    fi
    if [[ ! -f frame-r-008116-5-0340.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0340.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0340.fits.bz2 > frame-r-008116-5-0340.fits
    fi
    if [[ ! -f frame-r-008116-6-0339.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0339.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0339.fits.bz2 > frame-r-008116-6-0339.fits
    fi
    if [[ ! -f frame-r-008116-6-0340.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0340.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0340.fits.bz2 > frame-r-008116-6-0340.fits
    fi
    if [[ ! -f frame-r-004829-6-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0137.fits.bz2 > frame-r-004829-6-0137.fits
    fi
    if [[ ! -f frame-r-008105-4-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0064.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0064.fits.bz2 > frame-r-008105-4-0064.fits
    fi
    if [[ ! -f frame-r-004829-5-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0137.fits.bz2 > frame-r-004829-5-0137.fits
    fi
    if [[ ! -f frame-r-004829-6-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0135.fits.bz2 > frame-r-004829-6-0135.fits
    fi
    if [[ ! -f frame-r-004829-6-0136.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0136.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0136.fits.bz2 > frame-r-004829-6-0136.fits
    fi
    if [[ ! -f frame-r-004800-5-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0117.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0117.fits.bz2 > frame-r-004800-5-0117.fits
    fi
    if [[ ! -f frame-r-004800-5-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0116.fits.bz2 > frame-r-004800-5-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0139.fits.bz2 > frame-r-004829-6-0139.fits
    fi
    if [[ ! -f frame-r-004829-6-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0131.fits.bz2 > frame-r-004829-6-0131.fits
    fi
    if [[ ! -f frame-r-004829-5-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0133.fits.bz2 > frame-r-004829-5-0133.fits
    fi
    if [[ ! -f frame-r-004829-6-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0128.fits.bz2 > frame-r-004829-6-0128.fits
    fi
    if [[ ! -f frame-r-008105-1-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0062.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0062.fits.bz2 > frame-r-008105-1-0062.fits
    fi
    if [[ ! -f frame-r-004829-6-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0129.fits.bz2 > frame-r-004829-6-0129.fits
    fi
    if [[ ! -f frame-r-004800-5-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0109.fits.bz2 > frame-r-004800-5-0109.fits
    fi
    if [[ ! -f frame-r-004800-5-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0111.fits.bz2 > frame-r-004800-5-0111.fits
    fi
    if [[ ! -f frame-r-004829-5-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0128.fits.bz2 > frame-r-004829-5-0128.fits
    fi
    if [[ ! -f frame-r-004829-5-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0130.fits.bz2 > frame-r-004829-5-0130.fits
    fi
    if [[ ! -f frame-r-004829-6-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0127.fits.bz2 > frame-r-004829-6-0127.fits
    fi
    if [[ ! -f frame-r-004829-5-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0127.fits.bz2 > frame-r-004829-5-0127.fits
    fi
    if [[ ! -f frame-r-008116-2-0338.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0338.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0338.fits.bz2 > frame-r-008116-2-0338.fits
    fi
    if [[ ! -f frame-r-004829-6-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0123.fits.bz2 > frame-r-004829-6-0123.fits
    fi
    if [[ ! -f frame-r-004829-6-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0124.fits.bz2 > frame-r-004829-6-0124.fits
    fi
    if [[ ! -f frame-r-004800-5-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0105.fits.bz2 > frame-r-004800-5-0105.fits
    fi
    if [[ ! -f frame-r-004829-5-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0124.fits.bz2 > frame-r-004829-5-0124.fits
    fi
    if [[ ! -f frame-r-004829-6-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0126.fits.bz2 > frame-r-004829-6-0126.fits
    fi
    if [[ ! -f frame-r-004800-5-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0107.fits.bz2 > frame-r-004800-5-0107.fits
    fi
    if [[ ! -f frame-r-004829-5-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0126.fits.bz2 > frame-r-004829-5-0126.fits
    fi
    if [[ ! -f frame-r-004829-6-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0120.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0120.fits.bz2 > frame-r-004829-6-0120.fits
    fi
    if [[ ! -f frame-r-004829-6-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0121.fits.bz2 > frame-r-004829-6-0121.fits
    fi
    if [[ ! -f frame-r-004800-5-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0101.fits.bz2 > frame-r-004800-5-0101.fits
    fi
    if [[ ! -f frame-r-004800-5-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0102.fits.bz2 > frame-r-004800-5-0102.fits
    fi
    if [[ ! -f frame-r-004829-5-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0120.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0120.fits.bz2 > frame-r-004829-5-0120.fits
    fi
    if [[ ! -f frame-r-004829-5-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0122.fits.bz2 > frame-r-004829-5-0122.fits
    fi
    if [[ ! -f frame-r-004829-5-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0121.fits.bz2 > frame-r-004829-5-0121.fits
    fi
    if [[ ! -f frame-r-008056-4-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0057.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0057.fits.bz2 > frame-r-008056-4-0057.fits
    fi
    if [[ ! -f frame-r-004800-5-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0100.fits.bz2 > frame-r-004800-5-0100.fits
    fi
    if [[ ! -f frame-r-004829-5-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0115.fits.bz2 > frame-r-004829-5-0115.fits
    fi
    if [[ ! -f frame-r-004829-6-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0119.fits.bz2 > frame-r-004829-6-0119.fits
    fi
    if [[ ! -f frame-r-004800-5-0098.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0098.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0098.fits.bz2 > frame-r-004800-5-0098.fits
    fi
    if [[ ! -f frame-r-004800-5-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0099.fits.bz2 > frame-r-004800-5-0099.fits
    fi
    if [[ ! -f frame-r-004829-5-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0118.fits.bz2 > frame-r-004829-5-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0059.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0059.fits.bz2 > frame-r-008056-3-0059.fits
    fi
    if [[ ! -f frame-r-004800-5-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0093.fits.bz2 > frame-r-004800-5-0093.fits
    fi
    if [[ ! -f frame-r-004800-5-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0094.fits.bz2 > frame-r-004800-5-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0057.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0057.fits.bz2 > frame-r-008056-1-0057.fits
    fi
    if [[ ! -f frame-r-004829-5-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0111.fits.bz2 > frame-r-004829-5-0111.fits
    fi
    if [[ ! -f frame-r-004800-5-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0095.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0095.fits.bz2 > frame-r-004800-5-0095.fits
    fi
    if [[ ! -f frame-r-004843-5-0053.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0053.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0053.fits.bz2 > frame-r-004843-5-0053.fits
    fi
    if [[ ! -f frame-r-004800-5-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0088.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0088.fits.bz2 > frame-r-004800-5-0088.fits
    fi
    if [[ ! -f frame-r-004829-5-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0107.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0107.fits.bz2 > frame-r-004829-5-0107.fits
    fi
    if [[ ! -f frame-r-004800-5-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0089.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0089.fits.bz2 > frame-r-004800-5-0089.fits
    fi
    if [[ ! -f frame-r-004800-5-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0091.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0091.fits.bz2 > frame-r-004800-5-0091.fits
    fi
    if [[ ! -f frame-r-004829-5-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0108.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0108.fits.bz2 > frame-r-004829-5-0108.fits
    fi
    if [[ ! -f frame-r-004829-5-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0109.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0109.fits.bz2 > frame-r-004829-5-0109.fits
    fi
    if [[ ! -f frame-r-004829-5-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0110.fits.bz2 > frame-r-004829-5-0110.fits
    fi
    if [[ ! -f frame-r-008055-5-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0086.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0086.fits.bz2 > frame-r-008055-5-0086.fits
    fi
    if [[ ! -f frame-r-008055-5-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0087.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0087.fits.bz2 > frame-r-008055-5-0087.fits
    fi
    if [[ ! -f frame-r-004829-6-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/6/frame-r-004829-6-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-6-0111.fits.bz2 > frame-r-004829-6-0111.fits
    fi
    if [[ ! -f frame-r-004800-5-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0085.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0085.fits.bz2 > frame-r-004800-5-0085.fits
    fi
    if [[ ! -f frame-r-004800-5-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0084.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0084.fits.bz2 > frame-r-004800-5-0084.fits
    fi
    if [[ ! -f frame-r-004829-5-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0103.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0103.fits.bz2 > frame-r-004829-5-0103.fits
    fi
    if [[ ! -f frame-r-004836-4-0476.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4836/4/frame-r-004836-4-0476.fits.bz2
        bzip2 -d -c -k frame-r-004836-4-0476.fits.bz2 > frame-r-004836-4-0476.fits
    fi
    if [[ ! -f frame-r-004800-5-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0086.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0086.fits.bz2 > frame-r-004800-5-0086.fits
    fi
    if [[ ! -f frame-r-008055-4-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0086.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0086.fits.bz2 > frame-r-008055-4-0086.fits
    fi
    if [[ ! -f frame-r-008055-4-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0089.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0089.fits.bz2 > frame-r-008055-4-0089.fits
    fi
    if [[ ! -f frame-r-008055-3-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0087.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0087.fits.bz2 > frame-r-008055-3-0087.fits
    fi
    if [[ ! -f frame-r-004829-5-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0102.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0102.fits.bz2 > frame-r-004829-5-0102.fits
    fi
    if [[ ! -f frame-r-008111-4-0190.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0190.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0190.fits.bz2 > frame-r-008111-4-0190.fits
    fi
    if [[ ! -f frame-r-008111-4-0191.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0191.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0191.fits.bz2 > frame-r-008111-4-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0153.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0153.fits.bz2 > frame-r-004829-4-0153.fits
    fi
    if [[ ! -f frame-r-004829-4-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0152.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0152.fits.bz2 > frame-r-004829-4-0152.fits
    fi
    if [[ ! -f frame-r-008111-3-0190.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0190.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0190.fits.bz2 > frame-r-008111-3-0190.fits
    fi
    if [[ ! -f frame-r-008111-3-0192.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0192.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0192.fits.bz2 > frame-r-008111-3-0192.fits
    fi
    if [[ ! -f frame-r-004829-4-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0150.fits.bz2 > frame-r-004829-4-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0193.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0193.fits.bz2 > frame-r-008111-3-0193.fits
    fi
    if [[ ! -f frame-r-008112-2-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0051.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0051.fits.bz2 > frame-r-008112-2-0051.fits
    fi
    if [[ ! -f frame-r-008112-2-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0052.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0052.fits.bz2 > frame-r-008112-2-0052.fits
    fi
    if [[ ! -f frame-r-004829-4-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0148.fits.bz2 > frame-r-004829-4-0148.fits
    fi
    if [[ ! -f frame-r-008111-1-0191.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0191.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0191.fits.bz2 > frame-r-008111-1-0191.fits
    fi
    if [[ ! -f frame-r-008111-1-0193.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0193.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0193.fits.bz2 > frame-r-008111-1-0193.fits
    fi
    if [[ ! -f frame-r-008111-1-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0194.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0194.fits.bz2 > frame-r-008111-1-0194.fits
    fi
    if [[ ! -f frame-r-008111-2-0191.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0191.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0191.fits.bz2 > frame-r-008111-2-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0147.fits.bz2 > frame-r-004829-4-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0051.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0051.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0051.fits.bz2 > frame-r-008112-1-0051.fits
    fi
    if [[ ! -f frame-r-008112-1-0052.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0052.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0052.fits.bz2 > frame-r-008112-1-0052.fits
    fi
    if [[ ! -f frame-r-008112-1-0054.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0054.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0054.fits.bz2 > frame-r-008112-1-0054.fits
    fi
    if [[ ! -f frame-r-008105-5-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0067.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0067.fits.bz2 > frame-r-008105-5-0067.fits
    fi
    if [[ ! -f frame-r-008105-5-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0068.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0068.fits.bz2 > frame-r-008105-5-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0140.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0140.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0140.fits.bz2 > frame-r-004829-4-0140.fits
    fi
    if [[ ! -f frame-r-008105-5-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0070.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0070.fits.bz2 > frame-r-008105-5-0070.fits
    fi
    if [[ ! -f frame-r-004829-4-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0142.fits.bz2 > frame-r-004829-4-0142.fits
    fi
    if [[ ! -f frame-r-008105-6-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0069.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0069.fits.bz2 > frame-r-008105-6-0069.fits
    fi
    if [[ ! -f frame-r-008105-6-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0070.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0070.fits.bz2 > frame-r-008105-6-0070.fits
    fi
    if [[ ! -f frame-r-008116-5-0342.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0342.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0342.fits.bz2 > frame-r-008116-5-0342.fits
    fi
    if [[ ! -f frame-r-004829-4-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0139.fits.bz2 > frame-r-004829-4-0139.fits
    fi
    if [[ ! -f frame-r-008116-5-0344.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0344.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0344.fits.bz2 > frame-r-008116-5-0344.fits
    fi
    if [[ ! -f frame-r-008116-6-0341.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0341.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0341.fits.bz2 > frame-r-008116-6-0341.fits
    fi
    if [[ ! -f frame-r-008116-6-0342.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0342.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0342.fits.bz2 > frame-r-008116-6-0342.fits
    fi
    if [[ ! -f frame-r-008116-6-0343.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0343.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0343.fits.bz2 > frame-r-008116-6-0343.fits
    fi
    if [[ ! -f frame-r-008116-6-0344.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0344.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0344.fits.bz2 > frame-r-008116-6-0344.fits
    fi
    if [[ ! -f frame-r-004800-4-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0118.fits.bz2 > frame-r-004800-4-0118.fits
    fi
    if [[ ! -f frame-r-004800-3-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0118.fits.bz2 > frame-r-004800-3-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0069.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0069.fits.bz2 > frame-r-008105-4-0069.fits
    fi
    if [[ ! -f frame-r-004800-3-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0116.fits.bz2 > frame-r-004800-3-0116.fits
    fi
    if [[ ! -f frame-r-004800-4-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0112.fits.bz2 > frame-r-004800-4-0112.fits
    fi
    if [[ ! -f frame-r-004829-4-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0132.fits.bz2 > frame-r-004829-4-0132.fits
    fi
    if [[ ! -f frame-r-004829-4-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0134.fits.bz2 > frame-r-004829-4-0134.fits
    fi
    if [[ ! -f frame-r-004800-3-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0115.fits.bz2 > frame-r-004800-3-0115.fits
    fi
    if [[ ! -f frame-r-004800-3-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0114.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0114.fits.bz2 > frame-r-004800-3-0114.fits
    fi
    if [[ ! -f frame-r-004800-4-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0110.fits.bz2 > frame-r-004800-4-0110.fits
    fi
    if [[ ! -f frame-r-004800-4-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0109.fits.bz2 > frame-r-004800-4-0109.fits
    fi
    if [[ ! -f frame-r-004800-4-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0111.fits.bz2 > frame-r-004800-4-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0109.fits.bz2 > frame-r-004800-3-0109.fits
    fi
    if [[ ! -f frame-r-004800-3-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0111.fits.bz2 > frame-r-004800-3-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0110.fits.bz2 > frame-r-004800-3-0110.fits
    fi
    if [[ ! -f frame-r-004800-3-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0108.fits.bz2 > frame-r-004800-3-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0124.fits.bz2 > frame-r-004829-4-0124.fits
    fi
    if [[ ! -f frame-r-004800-3-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0105.fits.bz2 > frame-r-004800-3-0105.fits
    fi
    if [[ ! -f frame-r-004800-3-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0104.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0104.fits.bz2 > frame-r-004800-3-0104.fits
    fi
    if [[ ! -f frame-r-004829-4-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0126.fits.bz2 > frame-r-004829-4-0126.fits
    fi
    if [[ ! -f frame-r-004800-4-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0106.fits.bz2 > frame-r-004800-4-0106.fits
    fi
    if [[ ! -f frame-r-004800-4-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0101.fits.bz2 > frame-r-004800-4-0101.fits
    fi
    if [[ ! -f frame-r-004800-4-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0102.fits.bz2 > frame-r-004800-4-0102.fits
    fi
    if [[ ! -f frame-r-004829-4-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0122.fits.bz2 > frame-r-004829-4-0122.fits
    fi
    if [[ ! -f frame-r-004829-4-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0121.fits.bz2 > frame-r-004829-4-0121.fits
    fi
    if [[ ! -f frame-r-004800-3-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0102.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0102.fits.bz2 > frame-r-004800-3-0102.fits
    fi
    if [[ ! -f frame-r-004800-3-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0103.fits.bz2 > frame-r-004800-3-0103.fits
    fi
    if [[ ! -f frame-r-004800-4-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0100.fits.bz2 > frame-r-004800-4-0100.fits
    fi
    if [[ ! -f frame-r-004829-4-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0119.fits.bz2 > frame-r-004829-4-0119.fits
    fi
    if [[ ! -f frame-r-004800-4-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0097.fits.bz2 > frame-r-004800-4-0097.fits
    fi
    if [[ ! -f frame-r-004800-4-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0096.fits.bz2 > frame-r-004800-4-0096.fits
    fi
    if [[ ! -f frame-r-004800-3-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0096.fits.bz2 > frame-r-004800-3-0096.fits
    fi
    if [[ ! -f frame-r-004829-4-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0118.fits.bz2 > frame-r-004829-4-0118.fits
    fi
    if [[ ! -f frame-r-004800-3-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0099.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0099.fits.bz2 > frame-r-004800-3-0099.fits
    fi
    if [[ ! -f frame-r-004829-4-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0117.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0117.fits.bz2 > frame-r-004829-4-0117.fits
    fi
    if [[ ! -f frame-r-004829-4-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0112.fits.bz2 > frame-r-004829-4-0112.fits
    fi
    if [[ ! -f frame-r-004829-4-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0113.fits.bz2 > frame-r-004829-4-0113.fits
    fi
    if [[ ! -f frame-r-004829-4-0114.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0114.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0114.fits.bz2 > frame-r-004829-4-0114.fits
    fi
    if [[ ! -f frame-r-004800-4-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0092.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0092.fits.bz2 > frame-r-004800-4-0092.fits
    fi
    if [[ ! -f frame-r-004829-4-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0111.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0111.fits.bz2 > frame-r-004829-4-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0092.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0092.fits.bz2 > frame-r-004800-3-0092.fits
    fi
    if [[ ! -f frame-r-004800-3-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0088.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0088.fits.bz2 > frame-r-004800-3-0088.fits
    fi
    if [[ ! -f frame-r-004800-4-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0091.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0091.fits.bz2 > frame-r-004800-4-0091.fits
    fi
    if [[ ! -f frame-r-004800-4-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0090.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0090.fits.bz2 > frame-r-004800-4-0090.fits
    fi
    if [[ ! -f frame-r-004800-3-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0090.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0090.fits.bz2 > frame-r-004800-3-0090.fits
    fi
    if [[ ! -f frame-r-004800-3-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0086.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0086.fits.bz2 > frame-r-004800-3-0086.fits
    fi
    if [[ ! -f frame-r-004829-4-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0106.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0106.fits.bz2 > frame-r-004829-4-0106.fits
    fi
    if [[ ! -f frame-r-004829-4-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0104.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0104.fits.bz2 > frame-r-004829-4-0104.fits
    fi
    if [[ ! -f frame-r-004829-4-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0103.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0103.fits.bz2 > frame-r-004829-4-0103.fits
    fi
    if [[ ! -f frame-r-004800-3-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0085.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0085.fits.bz2 > frame-r-004800-3-0085.fits
    fi
    if [[ ! -f frame-r-004800-3-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/3/frame-r-004800-3-0084.fits.bz2
        bzip2 -d -c -k frame-r-004800-3-0084.fits.bz2 > frame-r-004800-3-0084.fits
    fi
    if [[ ! -f frame-r-004800-4-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0086.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0086.fits.bz2 > frame-r-004800-4-0086.fits
    fi
    if [[ ! -f frame-r-004800-4-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/4/frame-r-004800-4-0087.fits.bz2
        bzip2 -d -c -k frame-r-004800-4-0087.fits.bz2 > frame-r-004800-4-0087.fits
    fi
    if [[ ! -f frame-r-004829-4-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/4/frame-r-004829-4-0105.fits.bz2
        bzip2 -d -c -k frame-r-004829-4-0105.fits.bz2 > frame-r-004829-4-0105.fits
    fi
    if [[ ! -f frame-r-008111-4-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0194.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0194.fits.bz2 > frame-r-008111-4-0194.fits
    fi
    if [[ ! -f frame-r-004829-3-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0152.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0152.fits.bz2 > frame-r-004829-3-0152.fits
    fi
    if [[ ! -f frame-r-008111-4-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0195.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0195.fits.bz2 > frame-r-008111-4-0195.fits
    fi
    if [[ ! -f frame-r-008111-4-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/4/frame-r-008111-4-0197.fits.bz2
        bzip2 -d -c -k frame-r-008111-4-0197.fits.bz2 > frame-r-008111-4-0197.fits
    fi
    if [[ ! -f frame-r-008111-3-0194.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/3/frame-r-008111-3-0194.fits.bz2
        bzip2 -d -c -k frame-r-008111-3-0194.fits.bz2 > frame-r-008111-3-0194.fits
    fi
    if [[ ! -f frame-r-004829-3-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0149.fits.bz2 > frame-r-004829-3-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0055.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0055.fits.bz2 > frame-r-008112-2-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0148.fits.bz2 > frame-r-004829-3-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0058.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0058.fits.bz2 > frame-r-008112-2-0058.fits
    fi
    if [[ ! -f frame-r-004829-3-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0151.fits.bz2 > frame-r-004829-3-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0057.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0057.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0057.fits.bz2 > frame-r-008112-3-0057.fits
    fi
    if [[ ! -f frame-r-008112-3-0058.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0058.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0058.fits.bz2 > frame-r-008112-3-0058.fits
    fi
    if [[ ! -f frame-r-004829-3-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0145.fits.bz2 > frame-r-004829-3-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0195.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0195.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0195.fits.bz2 > frame-r-008111-1-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0146.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0146.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0146.fits.bz2 > frame-r-004829-3-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0196.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0196.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0196.fits.bz2 > frame-r-008111-2-0196.fits
    fi
    if [[ ! -f frame-r-008111-2-0197.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/2/frame-r-008111-2-0197.fits.bz2
        bzip2 -d -c -k frame-r-008111-2-0197.fits.bz2 > frame-r-008111-2-0197.fits
    fi
    if [[ ! -f frame-r-008112-1-0055.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0055.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0055.fits.bz2 > frame-r-008112-1-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0141.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0141.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0141.fits.bz2 > frame-r-004829-3-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0073.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0073.fits.bz2 > frame-r-008105-5-0073.fits
    fi
    if [[ ! -f frame-r-008105-6-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0072.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0072.fits.bz2 > frame-r-008105-6-0072.fits
    fi
    if [[ ! -f frame-r-004829-3-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0139.fits.bz2 > frame-r-004829-3-0139.fits
    fi
    if [[ ! -f frame-r-008116-5-0347.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0347.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0347.fits.bz2 > frame-r-008116-5-0347.fits
    fi
    if [[ ! -f frame-r-008116-6-0346.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0346.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0346.fits.bz2 > frame-r-008116-6-0346.fits
    fi
    if [[ ! -f frame-r-008116-6-0347.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0347.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0347.fits.bz2 > frame-r-008116-6-0347.fits
    fi
    if [[ ! -f frame-r-008105-4-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0072.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0072.fits.bz2 > frame-r-008105-4-0072.fits
    fi
    if [[ ! -f frame-r-004829-3-0136.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0136.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0136.fits.bz2 > frame-r-004829-3-0136.fits
    fi
    if [[ ! -f frame-r-004829-3-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0135.fits.bz2 > frame-r-004829-3-0135.fits
    fi
    if [[ ! -f frame-r-004800-2-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0116.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0116.fits.bz2 > frame-r-004800-2-0116.fits
    fi
    if [[ ! -f frame-r-004800-2-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0117.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0117.fits.bz2 > frame-r-004800-2-0117.fits
    fi
    if [[ ! -f frame-r-004800-2-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0112.fits.bz2 > frame-r-004800-2-0112.fits
    fi
    if [[ ! -f frame-r-004829-3-0134.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0134.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0134.fits.bz2 > frame-r-004829-3-0134.fits
    fi
    if [[ ! -f frame-r-008116-3-0348.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0348.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0348.fits.bz2 > frame-r-008116-3-0348.fits
    fi
    if [[ ! -f frame-r-004829-3-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0129.fits.bz2 > frame-r-004829-3-0129.fits
    fi
    if [[ ! -f frame-r-004829-3-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0128.fits.bz2 > frame-r-004829-3-0128.fits
    fi
    if [[ ! -f frame-r-004800-2-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0111.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0111.fits.bz2 > frame-r-004800-2-0111.fits
    fi
    if [[ ! -f frame-r-004800-2-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0109.fits.bz2 > frame-r-004800-2-0109.fits
    fi
    if [[ ! -f frame-r-004800-2-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0110.fits.bz2 > frame-r-004800-2-0110.fits
    fi
    if [[ ! -f frame-r-004800-2-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0108.fits.bz2 > frame-r-004800-2-0108.fits
    fi
    if [[ ! -f frame-r-004800-2-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0105.fits.bz2 > frame-r-004800-2-0105.fits
    fi
    if [[ ! -f frame-r-004829-3-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0126.fits.bz2 > frame-r-004829-3-0126.fits
    fi
    if [[ ! -f frame-r-004829-3-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0122.fits.bz2 > frame-r-004829-3-0122.fits
    fi
    if [[ ! -f frame-r-004800-2-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0101.fits.bz2 > frame-r-004800-2-0101.fits
    fi
    if [[ ! -f frame-r-007757-4-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0143.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0143.fits.bz2 > frame-r-007757-4-0143.fits
    fi
    if [[ ! -f frame-r-007757-4-0144.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0144.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0144.fits.bz2 > frame-r-007757-4-0144.fits
    fi
    if [[ ! -f frame-r-007757-4-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0145.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0145.fits.bz2 > frame-r-007757-4-0145.fits
    fi
    if [[ ! -f frame-r-008056-4-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0066.fits.bz2 > frame-r-008056-4-0066.fits
    fi
    if [[ ! -f frame-r-008056-4-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0067.fits.bz2 > frame-r-008056-4-0067.fits
    fi
    if [[ ! -f frame-r-008056-5-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0067.fits.bz2 > frame-r-008056-5-0067.fits
    fi
    if [[ ! -f frame-r-004829-3-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0118.fits.bz2 > frame-r-004829-3-0118.fits
    fi
    if [[ ! -f frame-r-004800-2-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0100.fits.bz2 > frame-r-004800-2-0100.fits
    fi
    if [[ ! -f frame-r-008056-3-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0065.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0065.fits.bz2 > frame-r-008056-3-0065.fits
    fi
    if [[ ! -f frame-r-008056-3-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0066.fits.bz2 > frame-r-008056-3-0066.fits
    fi
    if [[ ! -f frame-r-004829-3-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0113.fits.bz2 > frame-r-004829-3-0113.fits
    fi
    if [[ ! -f frame-r-004829-2-0113.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0113.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0113.fits.bz2 > frame-r-004829-2-0113.fits
    fi
    if [[ ! -f frame-r-004829-2-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0112.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0112.fits.bz2 > frame-r-004829-2-0112.fits
    fi
    if [[ ! -f frame-r-008056-1-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0064.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0064.fits.bz2 > frame-r-008056-1-0064.fits
    fi
    if [[ ! -f frame-r-008056-1-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0067.fits.bz2 > frame-r-008056-1-0067.fits
    fi
    if [[ ! -f frame-r-008056-2-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0065.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0065.fits.bz2 > frame-r-008056-2-0065.fits
    fi
    if [[ ! -f frame-r-008056-2-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0066.fits.bz2 > frame-r-008056-2-0066.fits
    fi
    if [[ ! -f frame-r-008056-2-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0067.fits.bz2 > frame-r-008056-2-0067.fits
    fi
    if [[ ! -f frame-r-004843-5-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0060.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0060.fits.bz2 > frame-r-004843-5-0060.fits
    fi
    if [[ ! -f frame-r-004829-3-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/3/frame-r-004829-3-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-3-0110.fits.bz2 > frame-r-004829-3-0110.fits
    fi
    if [[ ! -f frame-r-004843-6-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0062.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0062.fits.bz2 > frame-r-004843-6-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0110.fits.bz2 > frame-r-004829-2-0110.fits
    fi
    if [[ ! -f frame-r-004829-2-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0109.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0109.fits.bz2 > frame-r-004829-2-0109.fits
    fi
    if [[ ! -f frame-r-008055-5-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0094.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0094.fits.bz2 > frame-r-008055-5-0094.fits
    fi
    if [[ ! -f frame-r-008055-5-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0095.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0095.fits.bz2 > frame-r-008055-5-0095.fits
    fi
    if [[ ! -f frame-r-008055-5-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0096.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0096.fits.bz2 > frame-r-008055-5-0096.fits
    fi
    if [[ ! -f frame-r-008055-5-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0097.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0097.fits.bz2 > frame-r-008055-5-0097.fits
    fi
    if [[ ! -f frame-r-004800-2-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0091.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0091.fits.bz2 > frame-r-004800-2-0091.fits
    fi
    if [[ ! -f frame-r-004800-2-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0092.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0092.fits.bz2 > frame-r-004800-2-0092.fits
    fi
    if [[ ! -f frame-r-004843-4-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0062.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0062.fits.bz2 > frame-r-004843-4-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0104.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0104.fits.bz2 > frame-r-004829-2-0104.fits
    fi
    if [[ ! -f frame-r-004829-2-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0103.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0103.fits.bz2 > frame-r-004829-2-0103.fits
    fi
    if [[ ! -f frame-r-004829-2-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0106.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0106.fits.bz2 > frame-r-004829-2-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0094.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0094.fits.bz2 > frame-r-008055-4-0094.fits
    fi
    if [[ ! -f frame-r-008055-3-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0094.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0094.fits.bz2 > frame-r-008055-3-0094.fits
    fi
    if [[ ! -f frame-r-008055-3-0095.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/3/frame-r-008055-3-0095.fits.bz2
        bzip2 -d -c -k frame-r-008055-3-0095.fits.bz2 > frame-r-008055-3-0095.fits
    fi
    if [[ ! -f frame-r-004829-2-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0150.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0150.fits.bz2 > frame-r-004829-2-0150.fits
    fi
    if [[ ! -f frame-r-004829-1-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0149.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0149.fits.bz2 > frame-r-004829-1-0149.fits
    fi
    if [[ ! -f frame-r-004829-2-0148.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0148.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0148.fits.bz2 > frame-r-004829-2-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0059.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0059.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0059.fits.bz2 > frame-r-008112-2-0059.fits
    fi
    if [[ ! -f frame-r-008112-2-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0060.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0060.fits.bz2 > frame-r-008112-2-0060.fits
    fi
    if [[ ! -f frame-r-004829-2-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0151.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0151.fits.bz2 > frame-r-004829-2-0151.fits
    fi
    if [[ ! -f frame-r-004829-2-0145.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0145.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0145.fits.bz2 > frame-r-004829-2-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0200.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8111/1/frame-r-008111-1-0200.fits.bz2
        bzip2 -d -c -k frame-r-008111-1-0200.fits.bz2 > frame-r-008111-1-0200.fits
    fi
    if [[ ! -f frame-r-004829-1-0147.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0147.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0147.fits.bz2 > frame-r-004829-1-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0060.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0060.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0060.fits.bz2 > frame-r-008112-1-0060.fits
    fi
    if [[ ! -f frame-r-008105-5-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0074.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0074.fits.bz2 > frame-r-008105-5-0074.fits
    fi
    if [[ ! -f frame-r-008105-5-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0076.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0076.fits.bz2 > frame-r-008105-5-0076.fits
    fi
    if [[ ! -f frame-r-004829-2-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0143.fits.bz2 > frame-r-004829-2-0143.fits
    fi
    if [[ ! -f frame-r-008105-6-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0075.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0075.fits.bz2 > frame-r-008105-6-0075.fits
    fi
    if [[ ! -f frame-r-008105-6-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0076.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0076.fits.bz2 > frame-r-008105-6-0076.fits
    fi
    if [[ ! -f frame-r-004829-1-0143.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0143.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0143.fits.bz2 > frame-r-004829-1-0143.fits
    fi
    if [[ ! -f frame-r-004829-1-0142.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0142.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0142.fits.bz2 > frame-r-004829-1-0142.fits
    fi
    if [[ ! -f frame-r-008116-5-0350.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0350.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0350.fits.bz2 > frame-r-008116-5-0350.fits
    fi
    if [[ ! -f frame-r-008116-5-0351.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0351.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0351.fits.bz2 > frame-r-008116-5-0351.fits
    fi
    if [[ ! -f frame-r-004829-1-0139.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0139.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0139.fits.bz2 > frame-r-004829-1-0139.fits
    fi
    if [[ ! -f frame-r-008105-4-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0074.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0074.fits.bz2 > frame-r-008105-4-0074.fits
    fi
    if [[ ! -f frame-r-004829-2-0138.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0138.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0138.fits.bz2 > frame-r-004829-2-0138.fits
    fi
    if [[ ! -f frame-r-004829-2-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0137.fits.bz2 > frame-r-004829-2-0137.fits
    fi
    if [[ ! -f frame-r-004800-1-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0118.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0118.fits.bz2 > frame-r-004800-1-0118.fits
    fi
    if [[ ! -f frame-r-004829-1-0137.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0137.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0137.fits.bz2 > frame-r-004829-1-0137.fits
    fi
    if [[ ! -f frame-r-004829-2-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0135.fits.bz2 > frame-r-004829-2-0135.fits
    fi
    if [[ ! -f frame-r-004829-2-0136.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0136.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0136.fits.bz2 > frame-r-004829-2-0136.fits
    fi
    if [[ ! -f frame-r-008116-4-0351.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0351.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0351.fits.bz2 > frame-r-008116-4-0351.fits
    fi
    if [[ ! -f frame-r-004829-2-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0132.fits.bz2 > frame-r-004829-2-0132.fits
    fi
    if [[ ! -f frame-r-004829-2-0133.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0133.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0133.fits.bz2 > frame-r-004829-2-0133.fits
    fi
    if [[ ! -f frame-r-004800-1-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0112.fits.bz2 > frame-r-004800-1-0112.fits
    fi
    if [[ ! -f frame-r-004829-1-0131.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0131.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0131.fits.bz2 > frame-r-004829-1-0131.fits
    fi
    if [[ ! -f frame-r-004829-1-0132.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0132.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0132.fits.bz2 > frame-r-004829-1-0132.fits
    fi
    if [[ ! -f frame-r-004800-1-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0115.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0115.fits.bz2 > frame-r-004800-1-0115.fits
    fi
    if [[ ! -f frame-r-004829-1-0135.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0135.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0135.fits.bz2 > frame-r-004829-1-0135.fits
    fi
    if [[ ! -f frame-r-008116-3-0352.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0352.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0352.fits.bz2 > frame-r-008116-3-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0129.fits.bz2 > frame-r-004829-2-0129.fits
    fi
    if [[ ! -f frame-r-004829-2-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0128.fits.bz2 > frame-r-004829-2-0128.fits
    fi
    if [[ ! -f frame-r-004829-1-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0130.fits.bz2 > frame-r-004829-1-0130.fits
    fi
    if [[ ! -f frame-r-004829-2-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0127.fits.bz2 > frame-r-004829-2-0127.fits
    fi
    if [[ ! -f frame-r-004829-1-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0127.fits.bz2 > frame-r-004829-1-0127.fits
    fi
    if [[ ! -f frame-r-008116-2-0351.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0351.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0351.fits.bz2 > frame-r-008116-2-0351.fits
    fi
    if [[ ! -f frame-r-008116-2-0352.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0352.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0352.fits.bz2 > frame-r-008116-2-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0123.fits.bz2 > frame-r-004829-2-0123.fits
    fi
    if [[ ! -f frame-r-004829-2-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0125.fits.bz2 > frame-r-004829-2-0125.fits
    fi
    if [[ ! -f frame-r-004829-2-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0124.fits.bz2 > frame-r-004829-2-0124.fits
    fi
    if [[ ! -f frame-r-004800-1-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0105.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0105.fits.bz2 > frame-r-004800-1-0105.fits
    fi
    if [[ ! -f frame-r-004829-1-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0124.fits.bz2 > frame-r-004829-1-0124.fits
    fi
    if [[ ! -f frame-r-004829-1-0123.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0123.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0123.fits.bz2 > frame-r-004829-1-0123.fits
    fi
    if [[ ! -f frame-r-004829-2-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0126.fits.bz2 > frame-r-004829-2-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0070.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0070.fits.bz2 > frame-r-008056-5-0070.fits
    fi
    if [[ ! -f frame-r-004829-2-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0121.fits.bz2 > frame-r-004829-2-0121.fits
    fi
    if [[ ! -f frame-r-004800-1-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0101.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0101.fits.bz2 > frame-r-004800-1-0101.fits
    fi
    if [[ ! -f frame-r-004800-1-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0103.fits.bz2 > frame-r-004800-1-0103.fits
    fi
    if [[ ! -f frame-r-004829-1-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0122.fits.bz2 > frame-r-004829-1-0122.fits
    fi
    if [[ ! -f frame-r-004829-2-0119.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0119.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0119.fits.bz2 > frame-r-004829-2-0119.fits
    fi
    if [[ ! -f frame-r-004829-2-0120.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0120.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0120.fits.bz2 > frame-r-004829-2-0120.fits
    fi
    if [[ ! -f frame-r-008056-4-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0069.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0069.fits.bz2 > frame-r-008056-4-0069.fits
    fi
    if [[ ! -f frame-r-008056-4-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0070.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0070.fits.bz2 > frame-r-008056-4-0070.fits
    fi
    if [[ ! -f frame-r-008056-4-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0071.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0071.fits.bz2 > frame-r-008056-4-0071.fits
    fi
    if [[ ! -f frame-r-004829-2-0115.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0115.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0115.fits.bz2 > frame-r-004829-2-0115.fits
    fi
    if [[ ! -f frame-r-004829-2-0116.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0116.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0116.fits.bz2 > frame-r-004829-2-0116.fits
    fi
    if [[ ! -f frame-r-004800-1-0097.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0097.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0097.fits.bz2 > frame-r-004800-1-0097.fits
    fi
    if [[ ! -f frame-r-004800-1-0096.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0096.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0096.fits.bz2 > frame-r-004800-1-0096.fits
    fi
    if [[ ! -f frame-r-004800-1-0100.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0100.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0100.fits.bz2 > frame-r-004800-1-0100.fits
    fi
    if [[ ! -f frame-r-004829-1-0118.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0118.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0118.fits.bz2 > frame-r-004829-1-0118.fits
    fi
    if [[ ! -f frame-r-004829-2-0117.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0117.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0117.fits.bz2 > frame-r-004829-2-0117.fits
    fi
    if [[ ! -f frame-r-008056-3-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0071.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0071.fits.bz2 > frame-r-008056-3-0071.fits
    fi
    if [[ ! -f frame-r-004800-1-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0093.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0093.fits.bz2 > frame-r-004800-1-0093.fits
    fi
    if [[ ! -f frame-r-004800-1-0094.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0094.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0094.fits.bz2 > frame-r-004800-1-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0070.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0070.fits.bz2 > frame-r-008056-1-0070.fits
    fi
    if [[ ! -f frame-r-008056-1-0071.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0071.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0071.fits.bz2 > frame-r-008056-1-0071.fits
    fi
    if [[ ! -f frame-r-008056-2-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0070.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0070.fits.bz2 > frame-r-008056-2-0070.fits
    fi
    if [[ ! -f frame-r-004829-1-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0107.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0107.fits.bz2 > frame-r-004829-1-0107.fits
    fi
    if [[ ! -f frame-r-004843-6-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0065.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0065.fits.bz2 > frame-r-004843-6-0065.fits
    fi
    if [[ ! -f frame-r-008055-5-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0099.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0099.fits.bz2 > frame-r-008055-5-0099.fits
    fi
    if [[ ! -f frame-r-004800-1-0091.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/1/frame-r-004800-1-0091.fits.bz2
        bzip2 -d -c -k frame-r-004800-1-0091.fits.bz2 > frame-r-004800-1-0091.fits
    fi
    if [[ ! -f frame-r-004829-1-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0110.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0110.fits.bz2 > frame-r-004829-1-0110.fits
    fi
    if [[ ! -f frame-r-004843-4-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/4/frame-r-004843-4-0065.fits.bz2
        bzip2 -d -c -k frame-r-004843-4-0065.fits.bz2 > frame-r-004843-4-0065.fits
    fi
    if [[ ! -f frame-r-004829-1-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0103.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0103.fits.bz2 > frame-r-004829-1-0103.fits
    fi
    if [[ ! -f frame-r-004829-1-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0104.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0104.fits.bz2 > frame-r-004829-1-0104.fits
    fi
    if [[ ! -f frame-r-004829-1-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/1/frame-r-004829-1-0106.fits.bz2
        bzip2 -d -c -k frame-r-004829-1-0106.fits.bz2 > frame-r-004829-1-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0099.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0099.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0099.fits.bz2 > frame-r-008055-4-0099.fits
    fi
    if [[ ! -f frame-r-007941-3-0032.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/3/frame-r-007941-3-0032.fits.bz2
        bzip2 -d -c -k frame-r-007941-3-0032.fits.bz2 > frame-r-007941-3-0032.fits
    fi
    if [[ ! -f frame-r-008112-2-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0062.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0062.fits.bz2 > frame-r-008112-2-0062.fits
    fi
    if [[ ! -f frame-r-008112-2-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0064.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0064.fits.bz2 > frame-r-008112-2-0064.fits
    fi
    if [[ ! -f frame-r-008112-2-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/2/frame-r-008112-2-0065.fits.bz2
        bzip2 -d -c -k frame-r-008112-2-0065.fits.bz2 > frame-r-008112-2-0065.fits
    fi
    if [[ ! -f frame-r-008112-3-0063.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/3/frame-r-008112-3-0063.fits.bz2
        bzip2 -d -c -k frame-r-008112-3-0063.fits.bz2 > frame-r-008112-3-0063.fits
    fi
    if [[ ! -f frame-r-007941-1-0031.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0031.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0031.fits.bz2 > frame-r-007941-1-0031.fits
    fi
    if [[ ! -f frame-r-007941-2-0029.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0029.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0029.fits.bz2 > frame-r-007941-2-0029.fits
    fi
    if [[ ! -f frame-r-007941-2-0032.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0032.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0032.fits.bz2 > frame-r-007941-2-0032.fits
    fi
    if [[ ! -f frame-r-008105-6-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0078.fits.bz2 > frame-r-008105-6-0078.fits
    fi
    if [[ ! -f frame-r-008105-6-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0080.fits.bz2 > frame-r-008105-6-0080.fits
    fi
    if [[ ! -f frame-r-008105-6-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0081.fits.bz2 > frame-r-008105-6-0081.fits
    fi
    if [[ ! -f frame-r-008112-1-0062.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0062.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0062.fits.bz2 > frame-r-008112-1-0062.fits
    fi
    if [[ ! -f frame-r-008112-1-0064.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0064.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0064.fits.bz2 > frame-r-008112-1-0064.fits
    fi
    if [[ ! -f frame-r-008112-1-0065.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0065.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0065.fits.bz2 > frame-r-008112-1-0065.fits
    fi
    if [[ ! -f frame-r-008105-5-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0078.fits.bz2 > frame-r-008105-5-0078.fits
    fi
    if [[ ! -f frame-r-008105-5-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0079.fits.bz2 > frame-r-008105-5-0079.fits
    fi
    if [[ ! -f frame-r-008105-5-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0080.fits.bz2 > frame-r-008105-5-0080.fits
    fi
    if [[ ! -f frame-r-008116-5-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0353.fits.bz2 > frame-r-008116-5-0353.fits
    fi
    if [[ ! -f frame-r-008116-5-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0354.fits.bz2 > frame-r-008116-5-0354.fits
    fi
    if [[ ! -f frame-r-008116-5-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0355.fits.bz2 > frame-r-008116-5-0355.fits
    fi
    if [[ ! -f frame-r-008116-5-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0356.fits.bz2 > frame-r-008116-5-0356.fits
    fi
    if [[ ! -f frame-r-008116-6-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0354.fits.bz2 > frame-r-008116-6-0354.fits
    fi
    if [[ ! -f frame-r-008116-6-0355.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0355.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0355.fits.bz2 > frame-r-008116-6-0355.fits
    fi
    if [[ ! -f frame-r-008116-6-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0356.fits.bz2 > frame-r-008116-6-0356.fits
    fi
    if [[ ! -f frame-r-008105-4-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0079.fits.bz2 > frame-r-008105-4-0079.fits
    fi
    if [[ ! -f frame-r-008105-4-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0080.fits.bz2 > frame-r-008105-4-0080.fits
    fi
    if [[ ! -f frame-r-008105-4-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0081.fits.bz2 > frame-r-008105-4-0081.fits
    fi
    if [[ ! -f frame-r-008116-4-0356.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0356.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0356.fits.bz2 > frame-r-008116-4-0356.fits
    fi
    if [[ ! -f frame-r-008105-2-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0078.fits.bz2 > frame-r-008105-2-0078.fits
    fi
    if [[ ! -f frame-r-008105-2-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0080.fits.bz2 > frame-r-008105-2-0080.fits
    fi
    if [[ ! -f frame-r-008105-2-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0081.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0081.fits.bz2 > frame-r-008105-2-0081.fits
    fi
    if [[ ! -f frame-r-008105-3-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0078.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0078.fits.bz2 > frame-r-008105-3-0078.fits
    fi
    if [[ ! -f frame-r-008105-3-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0079.fits.bz2 > frame-r-008105-3-0079.fits
    fi
    if [[ ! -f frame-r-008116-3-0354.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0354.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0354.fits.bz2 > frame-r-008116-3-0354.fits
    fi
    if [[ ! -f frame-r-008105-1-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0079.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0079.fits.bz2 > frame-r-008105-1-0079.fits
    fi
    if [[ ! -f frame-r-008105-1-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0080.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0080.fits.bz2 > frame-r-008105-1-0080.fits
    fi
    if [[ ! -f frame-r-008116-1-0353.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0353.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0353.fits.bz2 > frame-r-008116-1-0353.fits
    fi
    if [[ ! -f frame-r-007757-5-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0150.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0150.fits.bz2 > frame-r-007757-5-0150.fits
    fi
    if [[ ! -f frame-r-007757-5-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0149.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0149.fits.bz2 > frame-r-007757-5-0149.fits
    fi
    if [[ ! -f frame-r-007757-5-0151.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0151.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0151.fits.bz2 > frame-r-007757-5-0151.fits
    fi
    if [[ ! -f frame-r-007937-6-0174.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0174.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0174.fits.bz2 > frame-r-007937-6-0174.fits
    fi
    if [[ ! -f frame-r-007937-6-0176.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0176.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0176.fits.bz2 > frame-r-007937-6-0176.fits
    fi
    if [[ ! -f frame-r-007937-6-0177.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0177.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0177.fits.bz2 > frame-r-007937-6-0177.fits
    fi
    if [[ ! -f frame-r-008056-5-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0075.fits.bz2 > frame-r-008056-5-0075.fits
    fi
    if [[ ! -f frame-r-008056-6-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0074.fits.bz2 > frame-r-008056-6-0074.fits
    fi
    if [[ ! -f frame-r-007757-4-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0152.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0152.fits.bz2 > frame-r-007757-4-0152.fits
    fi
    if [[ ! -f frame-r-008056-4-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0072.fits.bz2 > frame-r-008056-4-0072.fits
    fi
    if [[ ! -f frame-r-007757-2-0152.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0152.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0152.fits.bz2 > frame-r-007757-2-0152.fits
    fi
    if [[ ! -f frame-r-007757-3-0150.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0150.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0150.fits.bz2 > frame-r-007757-3-0150.fits
    fi
    if [[ ! -f frame-r-007757-3-0149.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0149.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0149.fits.bz2 > frame-r-007757-3-0149.fits
    fi
    if [[ ! -f frame-r-008056-3-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0072.fits.bz2 > frame-r-008056-3-0072.fits
    fi
    if [[ ! -f frame-r-008056-3-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0073.fits.bz2 > frame-r-008056-3-0073.fits
    fi
    if [[ ! -f frame-r-008056-3-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0074.fits.bz2 > frame-r-008056-3-0074.fits
    fi
    if [[ ! -f frame-r-008056-3-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0075.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0075.fits.bz2 > frame-r-008056-3-0075.fits
    fi
    if [[ ! -f frame-r-007937-1-0174.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0174.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0174.fits.bz2 > frame-r-007937-1-0174.fits
    fi
    if [[ ! -f frame-r-007937-1-0175.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0175.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0175.fits.bz2 > frame-r-007937-1-0175.fits
    fi
    if [[ ! -f frame-r-007937-1-0177.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0177.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0177.fits.bz2 > frame-r-007937-1-0177.fits
    fi
    if [[ ! -f frame-r-008056-1-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0072.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0072.fits.bz2 > frame-r-008056-1-0072.fits
    fi
    if [[ ! -f frame-r-008056-1-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0073.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0073.fits.bz2 > frame-r-008056-1-0073.fits
    fi
    if [[ ! -f frame-r-008056-1-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0074.fits.bz2 > frame-r-008056-1-0074.fits
    fi
    if [[ ! -f frame-r-008056-2-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0074.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0074.fits.bz2 > frame-r-008056-2-0074.fits
    fi
    if [[ ! -f frame-r-004843-5-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0067.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0067.fits.bz2 > frame-r-004843-5-0067.fits
    fi
    if [[ ! -f frame-r-004843-5-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0069.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0069.fits.bz2 > frame-r-004843-5-0069.fits
    fi
    if [[ ! -f frame-r-004843-6-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0068.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0068.fits.bz2 > frame-r-004843-6-0068.fits
    fi
    if [[ ! -f frame-r-004843-6-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0069.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0069.fits.bz2 > frame-r-004843-6-0069.fits
    fi
    if [[ ! -f frame-r-008055-5-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0102.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0102.fits.bz2 > frame-r-008055-5-0102.fits
    fi
    if [[ ! -f frame-r-008055-5-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0103.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0103.fits.bz2 > frame-r-008055-5-0103.fits
    fi
    if [[ ! -f frame-r-008055-6-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0101.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0101.fits.bz2 > frame-r-008055-6-0101.fits
    fi
    if [[ ! -f frame-r-008055-6-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0102.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0102.fits.bz2 > frame-r-008055-6-0102.fits
    fi
    if [[ ! -f frame-r-008055-6-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0103.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0103.fits.bz2 > frame-r-008055-6-0103.fits
    fi
    if [[ ! -f frame-r-008055-6-0104.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0104.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0104.fits.bz2 > frame-r-008055-6-0104.fits
    fi
    if [[ ! -f frame-r-008055-4-0101.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0101.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0101.fits.bz2 > frame-r-008055-4-0101.fits
    fi
    if [[ ! -f frame-r-008055-4-0102.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0102.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0102.fits.bz2 > frame-r-008055-4-0102.fits
    fi
    if [[ ! -f frame-r-008055-4-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/4/frame-r-008055-4-0103.fits.bz2
        bzip2 -d -c -k frame-r-008055-4-0103.fits.bz2 > frame-r-008055-4-0103.fits
    fi
    if [[ ! -f frame-r-007941-1-0034.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0034.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0034.fits.bz2 > frame-r-007941-1-0034.fits
    fi
    if [[ ! -f frame-r-007941-2-0033.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/2/frame-r-007941-2-0033.fits.bz2
        bzip2 -d -c -k frame-r-007941-2-0033.fits.bz2 > frame-r-007941-2-0033.fits
    fi
    if [[ ! -f frame-r-008105-6-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0083.fits.bz2 > frame-r-008105-6-0083.fits
    fi
    if [[ ! -f frame-r-008105-6-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/6/frame-r-008105-6-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-6-0084.fits.bz2 > frame-r-008105-6-0084.fits
    fi
    if [[ ! -f frame-r-008112-1-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0066.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0066.fits.bz2 > frame-r-008112-1-0066.fits
    fi
    if [[ ! -f frame-r-008112-1-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0067.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0067.fits.bz2 > frame-r-008112-1-0067.fits
    fi
    if [[ ! -f frame-r-008112-1-0068.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0068.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0068.fits.bz2 > frame-r-008112-1-0068.fits
    fi
    if [[ ! -f frame-r-008112-1-0069.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0069.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0069.fits.bz2 > frame-r-008112-1-0069.fits
    fi
    if [[ ! -f frame-r-008105-5-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0082.fits.bz2 > frame-r-008105-5-0082.fits
    fi
    if [[ ! -f frame-r-008105-5-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0085.fits.bz2 > frame-r-008105-5-0085.fits
    fi
    if [[ ! -f frame-r-008116-5-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0359.fits.bz2 > frame-r-008116-5-0359.fits
    fi
    if [[ ! -f frame-r-008116-6-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0357.fits.bz2 > frame-r-008116-6-0357.fits
    fi
    if [[ ! -f frame-r-008116-6-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0360.fits.bz2 > frame-r-008116-6-0360.fits
    fi
    if [[ ! -f frame-r-008105-4-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0082.fits.bz2 > frame-r-008105-4-0082.fits
    fi
    if [[ ! -f frame-r-008105-4-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0085.fits.bz2 > frame-r-008105-4-0085.fits
    fi
    if [[ ! -f frame-r-008116-4-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0358.fits.bz2 > frame-r-008116-4-0358.fits
    fi
    if [[ ! -f frame-r-008116-4-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0360.fits.bz2 > frame-r-008116-4-0360.fits
    fi
    if [[ ! -f frame-r-008105-2-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0083.fits.bz2 > frame-r-008105-2-0083.fits
    fi
    if [[ ! -f frame-r-008105-2-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0084.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0084.fits.bz2 > frame-r-008105-2-0084.fits
    fi
    if [[ ! -f frame-r-008116-3-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0357.fits.bz2 > frame-r-008116-3-0357.fits
    fi
    if [[ ! -f frame-r-008116-3-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0358.fits.bz2 > frame-r-008116-3-0358.fits
    fi
    if [[ ! -f frame-r-008116-3-0359.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0359.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0359.fits.bz2 > frame-r-008116-3-0359.fits
    fi
    if [[ ! -f frame-r-008116-3-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0360.fits.bz2 > frame-r-008116-3-0360.fits
    fi
    if [[ ! -f frame-r-008105-1-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0082.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0082.fits.bz2 > frame-r-008105-1-0082.fits
    fi
    if [[ ! -f frame-r-008105-1-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0083.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0083.fits.bz2 > frame-r-008105-1-0083.fits
    fi
    if [[ ! -f frame-r-008105-1-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0085.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0085.fits.bz2 > frame-r-008105-1-0085.fits
    fi
    if [[ ! -f frame-r-008116-1-0357.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0357.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0357.fits.bz2 > frame-r-008116-1-0357.fits
    fi
    if [[ ! -f frame-r-008116-1-0358.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0358.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0358.fits.bz2 > frame-r-008116-1-0358.fits
    fi
    if [[ ! -f frame-r-008116-1-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0360.fits.bz2 > frame-r-008116-1-0360.fits
    fi
    if [[ ! -f frame-r-008116-2-0360.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0360.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0360.fits.bz2 > frame-r-008116-2-0360.fits
    fi
    if [[ ! -f frame-r-007757-5-0154.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0154.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0154.fits.bz2 > frame-r-007757-5-0154.fits
    fi
    if [[ ! -f frame-r-007937-6-0178.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0178.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0178.fits.bz2 > frame-r-007937-6-0178.fits
    fi
    if [[ ! -f frame-r-007937-6-0181.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0181.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0181.fits.bz2 > frame-r-007937-6-0181.fits
    fi
    if [[ ! -f frame-r-008056-5-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0076.fits.bz2 > frame-r-008056-5-0076.fits
    fi
    if [[ ! -f frame-r-008056-5-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0078.fits.bz2 > frame-r-008056-5-0078.fits
    fi
    if [[ ! -f frame-r-008056-5-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0079.fits.bz2 > frame-r-008056-5-0079.fits
    fi
    if [[ ! -f frame-r-008056-6-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0076.fits.bz2 > frame-r-008056-6-0076.fits
    fi
    if [[ ! -f frame-r-008056-6-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0077.fits.bz2 > frame-r-008056-6-0077.fits
    fi
    if [[ ! -f frame-r-008056-6-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0078.fits.bz2 > frame-r-008056-6-0078.fits
    fi
    if [[ ! -f frame-r-008056-6-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0079.fits.bz2 > frame-r-008056-6-0079.fits
    fi
    if [[ ! -f frame-r-007757-4-0153.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0153.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0153.fits.bz2 > frame-r-007757-4-0153.fits
    fi
    if [[ ! -f frame-r-007757-4-0155.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0155.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0155.fits.bz2 > frame-r-007757-4-0155.fits
    fi
    if [[ ! -f frame-r-007757-4-0156.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0156.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0156.fits.bz2 > frame-r-007757-4-0156.fits
    fi
    if [[ ! -f frame-r-008056-4-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0077.fits.bz2 > frame-r-008056-4-0077.fits
    fi
    if [[ ! -f frame-r-008056-4-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/4/frame-r-008056-4-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-4-0079.fits.bz2 > frame-r-008056-4-0079.fits
    fi
    if [[ ! -f frame-r-007757-2-0154.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0154.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0154.fits.bz2 > frame-r-007757-2-0154.fits
    fi
    if [[ ! -f frame-r-007757-2-0156.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0156.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0156.fits.bz2 > frame-r-007757-2-0156.fits
    fi
    if [[ ! -f frame-r-007757-3-0154.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0154.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0154.fits.bz2 > frame-r-007757-3-0154.fits
    fi
    if [[ ! -f frame-r-007757-3-0155.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0155.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0155.fits.bz2 > frame-r-007757-3-0155.fits
    fi
    if [[ ! -f frame-r-008056-3-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0076.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0076.fits.bz2 > frame-r-008056-3-0076.fits
    fi
    if [[ ! -f frame-r-008056-3-0078.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0078.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0078.fits.bz2 > frame-r-008056-3-0078.fits
    fi
    if [[ ! -f frame-r-008056-3-0079.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0079.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0079.fits.bz2 > frame-r-008056-3-0079.fits
    fi
    if [[ ! -f frame-r-007937-1-0178.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0178.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0178.fits.bz2 > frame-r-007937-1-0178.fits
    fi
    if [[ ! -f frame-r-007937-1-0179.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0179.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0179.fits.bz2 > frame-r-007937-1-0179.fits
    fi
    if [[ ! -f frame-r-007937-1-0180.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0180.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0180.fits.bz2 > frame-r-007937-1-0180.fits
    fi
    if [[ ! -f frame-r-007937-1-0181.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0181.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0181.fits.bz2 > frame-r-007937-1-0181.fits
    fi
    if [[ ! -f frame-r-008056-1-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0077.fits.bz2 > frame-r-008056-1-0077.fits
    fi
    if [[ ! -f frame-r-008056-2-0077.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0077.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0077.fits.bz2 > frame-r-008056-2-0077.fits
    fi
    if [[ ! -f frame-r-004843-5-0073.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/5/frame-r-004843-5-0073.fits.bz2
        bzip2 -d -c -k frame-r-004843-5-0073.fits.bz2 > frame-r-004843-5-0073.fits
    fi
    if [[ ! -f frame-r-004843-6-0072.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0072.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0072.fits.bz2 > frame-r-004843-6-0072.fits
    fi
    if [[ ! -f frame-r-004843-6-0074.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0074.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0074.fits.bz2 > frame-r-004843-6-0074.fits
    fi
    if [[ ! -f frame-r-004843-6-0075.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0075.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0075.fits.bz2 > frame-r-004843-6-0075.fits
    fi
    if [[ ! -f frame-r-008055-5-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0105.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0105.fits.bz2 > frame-r-008055-5-0105.fits
    fi
    if [[ ! -f frame-r-008055-5-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0106.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0106.fits.bz2 > frame-r-008055-5-0106.fits
    fi
    if [[ ! -f frame-r-008055-5-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/5/frame-r-008055-5-0108.fits.bz2
        bzip2 -d -c -k frame-r-008055-5-0108.fits.bz2 > frame-r-008055-5-0108.fits
    fi
    if [[ ! -f frame-r-008055-6-0105.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0105.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0105.fits.bz2 > frame-r-008055-6-0105.fits
    fi
    if [[ ! -f frame-r-008055-6-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0106.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0106.fits.bz2 > frame-r-008055-6-0106.fits
    fi
    if [[ ! -f frame-r-007941-1-0037.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0037.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0037.fits.bz2 > frame-r-007941-1-0037.fits
    fi
    if [[ ! -f frame-r-007941-1-0038.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7941/1/frame-r-007941-1-0038.fits.bz2
        bzip2 -d -c -k frame-r-007941-1-0038.fits.bz2 > frame-r-007941-1-0038.fits
    fi
    if [[ ! -f frame-r-008112-1-0070.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8112/1/frame-r-008112-1-0070.fits.bz2
        bzip2 -d -c -k frame-r-008112-1-0070.fits.bz2 > frame-r-008112-1-0070.fits
    fi
    if [[ ! -f frame-r-008105-5-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0086.fits.bz2 > frame-r-008105-5-0086.fits
    fi
    if [[ ! -f frame-r-008105-5-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0088.fits.bz2 > frame-r-008105-5-0088.fits
    fi
    if [[ ! -f frame-r-008105-5-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0089.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0089.fits.bz2 > frame-r-008105-5-0089.fits
    fi
    if [[ ! -f frame-r-008116-5-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0361.fits.bz2 > frame-r-008116-5-0361.fits
    fi
    if [[ ! -f frame-r-008116-5-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0362.fits.bz2 > frame-r-008116-5-0362.fits
    fi
    if [[ ! -f frame-r-008116-5-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0363.fits.bz2 > frame-r-008116-5-0363.fits
    fi
    if [[ ! -f frame-r-008116-6-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0362.fits.bz2 > frame-r-008116-6-0362.fits
    fi
    if [[ ! -f frame-r-008116-6-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/6/frame-r-008116-6-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-6-0363.fits.bz2 > frame-r-008116-6-0363.fits
    fi
    if [[ ! -f frame-r-008105-4-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0086.fits.bz2 > frame-r-008105-4-0086.fits
    fi
    if [[ ! -f frame-r-008105-4-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0087.fits.bz2 > frame-r-008105-4-0087.fits
    fi
    if [[ ! -f frame-r-008105-4-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0089.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0089.fits.bz2 > frame-r-008105-4-0089.fits
    fi
    if [[ ! -f frame-r-008105-2-0089.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0089.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0089.fits.bz2 > frame-r-008105-2-0089.fits
    fi
    if [[ ! -f frame-r-008105-3-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0086.fits.bz2 > frame-r-008105-3-0086.fits
    fi
    if [[ ! -f frame-r-008105-3-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0087.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0087.fits.bz2 > frame-r-008105-3-0087.fits
    fi
    if [[ ! -f frame-r-008105-3-0088.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/3/frame-r-008105-3-0088.fits.bz2
        bzip2 -d -c -k frame-r-008105-3-0088.fits.bz2 > frame-r-008105-3-0088.fits
    fi
    if [[ ! -f frame-r-008116-3-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0362.fits.bz2 > frame-r-008116-3-0362.fits
    fi
    if [[ ! -f frame-r-008105-1-0086.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0086.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0086.fits.bz2 > frame-r-008105-1-0086.fits
    fi
    if [[ ! -f frame-r-008116-1-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0363.fits.bz2 > frame-r-008116-1-0363.fits
    fi
    if [[ ! -f frame-r-008116-2-0361.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0361.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0361.fits.bz2 > frame-r-008116-2-0361.fits
    fi
    if [[ ! -f frame-r-008116-2-0362.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0362.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0362.fits.bz2 > frame-r-008116-2-0362.fits
    fi
    if [[ ! -f frame-r-008116-2-0363.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0363.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0363.fits.bz2 > frame-r-008116-2-0363.fits
    fi
    if [[ ! -f frame-r-008116-2-0364.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0364.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0364.fits.bz2 > frame-r-008116-2-0364.fits
    fi
    if [[ ! -f frame-r-007757-5-0157.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0157.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0157.fits.bz2 > frame-r-007757-5-0157.fits
    fi
    if [[ ! -f frame-r-007757-5-0159.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0159.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0159.fits.bz2 > frame-r-007757-5-0159.fits
    fi
    if [[ ! -f frame-r-007937-6-0182.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0182.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0182.fits.bz2 > frame-r-007937-6-0182.fits
    fi
    if [[ ! -f frame-r-007937-6-0184.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0184.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0184.fits.bz2 > frame-r-007937-6-0184.fits
    fi
    if [[ ! -f frame-r-007937-6-0185.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0185.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0185.fits.bz2 > frame-r-007937-6-0185.fits
    fi
    if [[ ! -f frame-r-008056-6-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0081.fits.bz2 > frame-r-008056-6-0081.fits
    fi
    if [[ ! -f frame-r-008056-6-0082.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0082.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0082.fits.bz2 > frame-r-008056-6-0082.fits
    fi
    if [[ ! -f frame-r-007757-4-0158.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0158.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0158.fits.bz2 > frame-r-007757-4-0158.fits
    fi
    if [[ ! -f frame-r-007757-4-0159.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0159.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0159.fits.bz2 > frame-r-007757-4-0159.fits
    fi
    if [[ ! -f frame-r-007757-3-0157.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0157.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0157.fits.bz2 > frame-r-007757-3-0157.fits
    fi
    if [[ ! -f frame-r-007757-3-0158.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0158.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0158.fits.bz2 > frame-r-007757-3-0158.fits
    fi
    if [[ ! -f frame-r-007757-3-0159.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0159.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0159.fits.bz2 > frame-r-007757-3-0159.fits
    fi
    if [[ ! -f frame-r-007757-3-0160.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0160.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0160.fits.bz2 > frame-r-007757-3-0160.fits
    fi
    if [[ ! -f frame-r-008056-3-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0080.fits.bz2 > frame-r-008056-3-0080.fits
    fi
    if [[ ! -f frame-r-008056-3-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0081.fits.bz2 > frame-r-008056-3-0081.fits
    fi
    if [[ ! -f frame-r-007937-1-0185.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/1/frame-r-007937-1-0185.fits.bz2
        bzip2 -d -c -k frame-r-007937-1-0185.fits.bz2 > frame-r-007937-1-0185.fits
    fi
    if [[ ! -f frame-r-008056-1-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/1/frame-r-008056-1-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-1-0081.fits.bz2 > frame-r-008056-1-0081.fits
    fi
    if [[ ! -f frame-r-008056-2-0080.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0080.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0080.fits.bz2 > frame-r-008056-2-0080.fits
    fi
    if [[ ! -f frame-r-008056-2-0081.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0081.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0081.fits.bz2 > frame-r-008056-2-0081.fits
    fi
    if [[ ! -f frame-r-004843-6-0076.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4843/6/frame-r-004843-6-0076.fits.bz2
        bzip2 -d -c -k frame-r-004843-6-0076.fits.bz2 > frame-r-004843-6-0076.fits
    fi
    if [[ ! -f frame-r-008055-6-0111.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8055/6/frame-r-008055-6-0111.fits.bz2
        bzip2 -d -c -k frame-r-008055-6-0111.fits.bz2 > frame-r-008055-6-0111.fits
    fi
    if [[ ! -f frame-r-008105-5-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/5/frame-r-008105-5-0090.fits.bz2
        bzip2 -d -c -k frame-r-008105-5-0090.fits.bz2 > frame-r-008105-5-0090.fits
    fi
    if [[ ! -f frame-r-008116-5-0366.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/5/frame-r-008116-5-0366.fits.bz2
        bzip2 -d -c -k frame-r-008116-5-0366.fits.bz2 > frame-r-008116-5-0366.fits
    fi
    if [[ ! -f frame-r-008105-4-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/4/frame-r-008105-4-0090.fits.bz2
        bzip2 -d -c -k frame-r-008105-4-0090.fits.bz2 > frame-r-008105-4-0090.fits
    fi
    if [[ ! -f frame-r-008116-4-0366.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0366.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0366.fits.bz2 > frame-r-008116-4-0366.fits
    fi
    if [[ ! -f frame-r-008116-4-0367.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/4/frame-r-008116-4-0367.fits.bz2
        bzip2 -d -c -k frame-r-008116-4-0367.fits.bz2 > frame-r-008116-4-0367.fits
    fi
    if [[ ! -f frame-r-008105-2-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0090.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0090.fits.bz2 > frame-r-008105-2-0090.fits
    fi
    if [[ ! -f frame-r-008116-3-0365.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0365.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0365.fits.bz2 > frame-r-008116-3-0365.fits
    fi
    if [[ ! -f frame-r-008116-3-0367.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0367.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0367.fits.bz2 > frame-r-008116-3-0367.fits
    fi
    if [[ ! -f frame-r-008105-1-0090.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0090.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0090.fits.bz2 > frame-r-008105-1-0090.fits
    fi
    if [[ ! -f frame-r-008105-1-0092.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0092.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0092.fits.bz2 > frame-r-008105-1-0092.fits
    fi
    if [[ ! -f frame-r-008116-1-0367.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0367.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0367.fits.bz2 > frame-r-008116-1-0367.fits
    fi
    if [[ ! -f frame-r-008116-2-0366.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0366.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0366.fits.bz2 > frame-r-008116-2-0366.fits
    fi
    if [[ ! -f frame-r-007757-5-0161.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0161.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0161.fits.bz2 > frame-r-007757-5-0161.fits
    fi
    if [[ ! -f frame-r-007757-5-0162.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0162.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0162.fits.bz2 > frame-r-007757-5-0162.fits
    fi
    if [[ ! -f frame-r-007937-6-0189.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7937/6/frame-r-007937-6-0189.fits.bz2
        bzip2 -d -c -k frame-r-007937-6-0189.fits.bz2 > frame-r-007937-6-0189.fits
    fi
    if [[ ! -f frame-r-008056-6-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0084.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0084.fits.bz2 > frame-r-008056-6-0084.fits
    fi
    if [[ ! -f frame-r-007757-4-0161.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0161.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0161.fits.bz2 > frame-r-007757-4-0161.fits
    fi
    if [[ ! -f frame-r-007757-4-0164.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/4/frame-r-007757-4-0164.fits.bz2
        bzip2 -d -c -k frame-r-007757-4-0164.fits.bz2 > frame-r-007757-4-0164.fits
    fi
    if [[ ! -f frame-r-007757-2-0161.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0161.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0161.fits.bz2 > frame-r-007757-2-0161.fits
    fi
    if [[ ! -f frame-r-007757-2-0162.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/2/frame-r-007757-2-0162.fits.bz2
        bzip2 -d -c -k frame-r-007757-2-0162.fits.bz2 > frame-r-007757-2-0162.fits
    fi
    if [[ ! -f frame-r-007757-3-0162.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0162.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0162.fits.bz2 > frame-r-007757-3-0162.fits
    fi
    if [[ ! -f frame-r-007757-3-0163.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/3/frame-r-007757-3-0163.fits.bz2
        bzip2 -d -c -k frame-r-007757-3-0163.fits.bz2 > frame-r-007757-3-0163.fits
    fi
    if [[ ! -f frame-r-008056-3-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0083.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0083.fits.bz2 > frame-r-008056-3-0083.fits
    fi
    if [[ ! -f frame-r-008056-3-0085.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/3/frame-r-008056-3-0085.fits.bz2
        bzip2 -d -c -k frame-r-008056-3-0085.fits.bz2 > frame-r-008056-3-0085.fits
    fi
    if [[ ! -f frame-r-008056-2-0083.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0083.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0083.fits.bz2 > frame-r-008056-2-0083.fits
    fi
    if [[ ! -f frame-r-008056-2-0084.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/2/frame-r-008056-2-0084.fits.bz2
        bzip2 -d -c -k frame-r-008056-2-0084.fits.bz2 > frame-r-008056-2-0084.fits
    fi
    if [[ ! -f frame-r-008105-2-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/2/frame-r-008105-2-0093.fits.bz2
        bzip2 -d -c -k frame-r-008105-2-0093.fits.bz2 > frame-r-008105-2-0093.fits
    fi
    if [[ ! -f frame-r-008116-3-0368.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/3/frame-r-008116-3-0368.fits.bz2
        bzip2 -d -c -k frame-r-008116-3-0368.fits.bz2 > frame-r-008116-3-0368.fits
    fi
    if [[ ! -f frame-r-008105-1-0093.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8105/1/frame-r-008105-1-0093.fits.bz2
        bzip2 -d -c -k frame-r-008105-1-0093.fits.bz2 > frame-r-008105-1-0093.fits
    fi
    if [[ ! -f frame-r-007757-5-0165.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/7757/5/frame-r-007757-5-0165.fits.bz2
        bzip2 -d -c -k frame-r-007757-5-0165.fits.bz2 > frame-r-007757-5-0165.fits
    fi
    if [[ ! -f frame-r-008056-5-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0087.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0087.fits.bz2 > frame-r-008056-5-0087.fits
    fi
    if [[ ! -f frame-r-008056-6-0087.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/6/frame-r-008056-6-0087.fits.bz2
        bzip2 -d -c -k frame-r-008056-6-0087.fits.bz2 > frame-r-008056-6-0087.fits
    fi
else
    if [[ ! -f frame-r-008105-1-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0043.fits.bz2 > frame-r-008105-1-0043.fits
    fi
    if [[ ! -f frame-r-008116-2-0318.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0318.fits.bz2 > frame-r-008116-2-0318.fits
    fi
    if [[ ! -f frame-r-007757-5-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0114.fits.bz2 > frame-r-007757-5-0114.fits
    fi
    if [[ ! -f frame-r-007757-5-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0115.fits.bz2 > frame-r-007757-5-0115.fits
    fi
    if [[ ! -f frame-r-007757-6-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0114.fits.bz2 > frame-r-007757-6-0114.fits
    fi
    if [[ ! -f frame-r-008056-5-0037.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0037.fits.bz2 > frame-r-008056-5-0037.fits
    fi
    if [[ ! -f frame-r-008105-5-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0047.fits.bz2 > frame-r-008105-5-0047.fits
    fi
    if [[ ! -f frame-r-008105-4-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0045.fits.bz2 > frame-r-008105-4-0045.fits
    fi
    if [[ ! -f frame-r-008105-4-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0047.fits.bz2 > frame-r-008105-4-0047.fits
    fi
    if [[ ! -f frame-r-008116-4-0319.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0319.fits.bz2 > frame-r-008116-4-0319.fits
    fi
    if [[ ! -f frame-r-008105-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0047.fits.bz2 > frame-r-008105-2-0047.fits
    fi
    if [[ ! -f frame-r-008105-3-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0045.fits.bz2 > frame-r-008105-3-0045.fits
    fi
    if [[ ! -f frame-r-008105-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0046.fits.bz2 > frame-r-008105-3-0046.fits
    fi
    if [[ ! -f frame-r-008105-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0047.fits.bz2 > frame-r-008105-3-0047.fits
    fi
    if [[ ! -f frame-r-008116-3-0320.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0320.fits.bz2 > frame-r-008116-3-0320.fits
    fi
    if [[ ! -f frame-r-008116-3-0321.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0321.fits.bz2 > frame-r-008116-3-0321.fits
    fi
    if [[ ! -f frame-r-008105-1-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0045.fits.bz2 > frame-r-008105-1-0045.fits
    fi
    if [[ ! -f frame-r-008105-1-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0046.fits.bz2 > frame-r-008105-1-0046.fits
    fi
    if [[ ! -f frame-r-008105-1-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0047.fits.bz2 > frame-r-008105-1-0047.fits
    fi
    if [[ ! -f frame-r-008116-1-0319.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0319.fits.bz2 > frame-r-008116-1-0319.fits
    fi
    if [[ ! -f frame-r-008116-1-0320.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0320.fits.bz2 > frame-r-008116-1-0320.fits
    fi
    if [[ ! -f frame-r-008116-1-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0322.fits.bz2 > frame-r-008116-1-0322.fits
    fi
    if [[ ! -f frame-r-007757-5-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0117.fits.bz2 > frame-r-007757-5-0117.fits
    fi
    if [[ ! -f frame-r-007757-5-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0118.fits.bz2 > frame-r-007757-5-0118.fits
    fi
    if [[ ! -f frame-r-007757-6-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0116.fits.bz2 > frame-r-007757-6-0116.fits
    fi
    if [[ ! -f frame-r-007757-6-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0118.fits.bz2 > frame-r-007757-6-0118.fits
    fi
    if [[ ! -f frame-r-008056-5-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0040.fits.bz2 > frame-r-008056-5-0040.fits
    fi
    if [[ ! -f frame-r-008056-5-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0041.fits.bz2 > frame-r-008056-5-0041.fits
    fi
    if [[ ! -f frame-r-008056-6-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0038.fits.bz2 > frame-r-008056-6-0038.fits
    fi
    if [[ ! -f frame-r-008056-6-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0039.fits.bz2 > frame-r-008056-6-0039.fits
    fi
    if [[ ! -f frame-r-007757-4-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0117.fits.bz2 > frame-r-007757-4-0117.fits
    fi
    if [[ ! -f frame-r-007757-4-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0118.fits.bz2 > frame-r-007757-4-0118.fits
    fi
    if [[ ! -f frame-r-008056-4-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0040.fits.bz2 > frame-r-008056-4-0040.fits
    fi
    if [[ ! -f frame-r-007757-2-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0117.fits.bz2 > frame-r-007757-2-0117.fits
    fi
    if [[ ! -f frame-r-007757-3-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0116.fits.bz2 > frame-r-007757-3-0116.fits
    fi
    if [[ ! -f frame-r-007757-3-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0118.fits.bz2 > frame-r-007757-3-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0040.fits.bz2 > frame-r-008056-3-0040.fits
    fi
    if [[ ! -f frame-r-007757-1-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0118.fits.bz2 > frame-r-007757-1-0118.fits
    fi
    if [[ ! -f frame-r-008111-1-0175.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0175.fits.bz2 > frame-r-008111-1-0175.fits
    fi
    if [[ ! -f frame-r-008112-1-0035.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0035.fits.bz2 > frame-r-008112-1-0035.fits
    fi
    if [[ ! -f frame-r-008105-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0048.fits.bz2 > frame-r-008105-5-0048.fits
    fi
    if [[ ! -f frame-r-008105-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0051.fits.bz2 > frame-r-008105-5-0051.fits
    fi
    if [[ ! -f frame-r-008105-6-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0049.fits.bz2 > frame-r-008105-6-0049.fits
    fi
    if [[ ! -f frame-r-008105-6-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0051.fits.bz2 > frame-r-008105-6-0051.fits
    fi
    if [[ ! -f frame-r-008116-5-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0324.fits.bz2 > frame-r-008116-5-0324.fits
    fi
    if [[ ! -f frame-r-008116-5-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0325.fits.bz2 > frame-r-008116-5-0325.fits
    fi
    if [[ ! -f frame-r-008116-6-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0323.fits.bz2 > frame-r-008116-6-0323.fits
    fi
    if [[ ! -f frame-r-008116-6-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0324.fits.bz2 > frame-r-008116-6-0324.fits
    fi
    if [[ ! -f frame-r-008105-4-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0048.fits.bz2 > frame-r-008105-4-0048.fits
    fi
    if [[ ! -f frame-r-008116-4-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0323.fits.bz2 > frame-r-008116-4-0323.fits
    fi
    if [[ ! -f frame-r-008116-4-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0324.fits.bz2 > frame-r-008116-4-0324.fits
    fi
    if [[ ! -f frame-r-008105-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0048.fits.bz2 > frame-r-008105-2-0048.fits
    fi
    if [[ ! -f frame-r-008105-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0051.fits.bz2 > frame-r-008105-2-0051.fits
    fi
    if [[ ! -f frame-r-008105-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0048.fits.bz2 > frame-r-008105-3-0048.fits
    fi
    if [[ ! -f frame-r-008116-3-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0323.fits.bz2 > frame-r-008116-3-0323.fits
    fi
    if [[ ! -f frame-r-008105-1-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0049.fits.bz2 > frame-r-008105-1-0049.fits
    fi
    if [[ ! -f frame-r-008116-1-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0326.fits.bz2 > frame-r-008116-1-0326.fits
    fi
    if [[ ! -f frame-r-008116-2-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0323.fits.bz2 > frame-r-008116-2-0323.fits
    fi
    if [[ ! -f frame-r-008116-2-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0326.fits.bz2 > frame-r-008116-2-0326.fits
    fi
    if [[ ! -f frame-r-007757-5-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0120.fits.bz2 > frame-r-007757-5-0120.fits
    fi
    if [[ ! -f frame-r-007757-5-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0122.fits.bz2 > frame-r-007757-5-0122.fits
    fi
    if [[ ! -f frame-r-007757-6-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0121.fits.bz2 > frame-r-007757-6-0121.fits
    fi
    if [[ ! -f frame-r-008056-5-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0042.fits.bz2 > frame-r-008056-5-0042.fits
    fi
    if [[ ! -f frame-r-008056-5-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0043.fits.bz2 > frame-r-008056-5-0043.fits
    fi
    if [[ ! -f frame-r-008056-6-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0042.fits.bz2 > frame-r-008056-6-0042.fits
    fi
    if [[ ! -f frame-r-008056-6-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0043.fits.bz2 > frame-r-008056-6-0043.fits
    fi
    if [[ ! -f frame-r-008056-6-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0044.fits.bz2 > frame-r-008056-6-0044.fits
    fi
    if [[ ! -f frame-r-007757-4-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0120.fits.bz2 > frame-r-007757-4-0120.fits
    fi
    if [[ ! -f frame-r-007757-4-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0121.fits.bz2 > frame-r-007757-4-0121.fits
    fi
    if [[ ! -f frame-r-008056-4-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0042.fits.bz2 > frame-r-008056-4-0042.fits
    fi
    if [[ ! -f frame-r-008056-4-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0044.fits.bz2 > frame-r-008056-4-0044.fits
    fi
    if [[ ! -f frame-r-007757-2-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0121.fits.bz2 > frame-r-007757-2-0121.fits
    fi
    if [[ ! -f frame-r-007757-2-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0122.fits.bz2 > frame-r-007757-2-0122.fits
    fi
    if [[ ! -f frame-r-007757-3-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0121.fits.bz2 > frame-r-007757-3-0121.fits
    fi
    if [[ ! -f frame-r-008056-3-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0042.fits.bz2 > frame-r-008056-3-0042.fits
    fi
    if [[ ! -f frame-r-008056-3-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0044.fits.bz2 > frame-r-008056-3-0044.fits
    fi
    if [[ ! -f frame-r-008056-3-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0045.fits.bz2 > frame-r-008056-3-0045.fits
    fi
    if [[ ! -f frame-r-007757-1-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0120.fits.bz2 > frame-r-007757-1-0120.fits
    fi
    if [[ ! -f frame-r-007757-1-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0121.fits.bz2 > frame-r-007757-1-0121.fits
    fi
    if [[ ! -f frame-r-007757-1-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0122.fits.bz2 > frame-r-007757-1-0122.fits
    fi
    if [[ ! -f frame-r-008056-1-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0043.fits.bz2 > frame-r-008056-1-0043.fits
    fi
    if [[ ! -f frame-r-008056-1-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0044.fits.bz2 > frame-r-008056-1-0044.fits
    fi
    if [[ ! -f frame-r-008056-1-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0045.fits.bz2 > frame-r-008056-1-0045.fits
    fi
    if [[ ! -f frame-r-008056-2-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0045.fits.bz2 > frame-r-008056-2-0045.fits
    fi
    if [[ ! -f frame-r-004843-6-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0041.fits.bz2 > frame-r-004843-6-0041.fits
    fi
    if [[ ! -f frame-r-008055-6-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0072.fits.bz2 > frame-r-008055-6-0072.fits
    fi
    if [[ ! -f frame-r-008112-2-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0038.fits.bz2 > frame-r-008112-2-0038.fits
    fi
    if [[ ! -f frame-r-008111-1-0177.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0177.fits.bz2 > frame-r-008111-1-0177.fits
    fi
    if [[ ! -f frame-r-008111-2-0176.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0176.fits.bz2 > frame-r-008111-2-0176.fits
    fi
    if [[ ! -f frame-r-008111-2-0177.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0177.fits.bz2 > frame-r-008111-2-0177.fits
    fi
    if [[ ! -f frame-r-008111-2-0178.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0178.fits.bz2 > frame-r-008111-2-0178.fits
    fi
    if [[ ! -f frame-r-008112-1-0036.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0036.fits.bz2 > frame-r-008112-1-0036.fits
    fi
    if [[ ! -f frame-r-008112-1-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0039.fits.bz2 > frame-r-008112-1-0039.fits
    fi
    if [[ ! -f frame-r-008105-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0052.fits.bz2 > frame-r-008105-5-0052.fits
    fi
    if [[ ! -f frame-r-008105-5-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0054.fits.bz2 > frame-r-008105-5-0054.fits
    fi
    if [[ ! -f frame-r-008105-6-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0052.fits.bz2 > frame-r-008105-6-0052.fits
    fi
    if [[ ! -f frame-r-008105-6-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0053.fits.bz2 > frame-r-008105-6-0053.fits
    fi
    if [[ ! -f frame-r-008105-6-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0055.fits.bz2 > frame-r-008105-6-0055.fits
    fi
    if [[ ! -f frame-r-008116-5-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0327.fits.bz2 > frame-r-008116-5-0327.fits
    fi
    if [[ ! -f frame-r-008116-5-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0328.fits.bz2 > frame-r-008116-5-0328.fits
    fi
    if [[ ! -f frame-r-008116-5-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0329.fits.bz2 > frame-r-008116-5-0329.fits
    fi
    if [[ ! -f frame-r-008116-6-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0329.fits.bz2 > frame-r-008116-6-0329.fits
    fi
    if [[ ! -f frame-r-008116-6-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0330.fits.bz2 > frame-r-008116-6-0330.fits
    fi
    if [[ ! -f frame-r-008105-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0052.fits.bz2 > frame-r-008105-4-0052.fits
    fi
    if [[ ! -f frame-r-008105-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0053.fits.bz2 > frame-r-008105-4-0053.fits
    fi
    if [[ ! -f frame-r-008116-4-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0327.fits.bz2 > frame-r-008116-4-0327.fits
    fi
    if [[ ! -f frame-r-008116-4-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0328.fits.bz2 > frame-r-008116-4-0328.fits
    fi
    if [[ ! -f frame-r-008116-4-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0329.fits.bz2 > frame-r-008116-4-0329.fits
    fi
    if [[ ! -f frame-r-008105-2-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0053.fits.bz2 > frame-r-008105-2-0053.fits
    fi
    if [[ ! -f frame-r-008105-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0054.fits.bz2 > frame-r-008105-2-0054.fits
    fi
    if [[ ! -f frame-r-008105-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0055.fits.bz2 > frame-r-008105-2-0055.fits
    fi
    if [[ ! -f frame-r-008105-3-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0052.fits.bz2 > frame-r-008105-3-0052.fits
    fi
    if [[ ! -f frame-r-008105-3-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0053.fits.bz2 > frame-r-008105-3-0053.fits
    fi
    if [[ ! -f frame-r-008105-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0054.fits.bz2 > frame-r-008105-3-0054.fits
    fi
    if [[ ! -f frame-r-008105-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0055.fits.bz2 > frame-r-008105-3-0055.fits
    fi
    if [[ ! -f frame-r-008116-3-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0327.fits.bz2 > frame-r-008116-3-0327.fits
    fi
    if [[ ! -f frame-r-008116-3-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0328.fits.bz2 > frame-r-008116-3-0328.fits
    fi
    if [[ ! -f frame-r-008116-3-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0329.fits.bz2 > frame-r-008116-3-0329.fits
    fi
    if [[ ! -f frame-r-008116-3-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0330.fits.bz2 > frame-r-008116-3-0330.fits
    fi
    if [[ ! -f frame-r-008105-1-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0053.fits.bz2 > frame-r-008105-1-0053.fits
    fi
    if [[ ! -f frame-r-008105-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0054.fits.bz2 > frame-r-008105-1-0054.fits
    fi
    if [[ ! -f frame-r-008116-1-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0328.fits.bz2 > frame-r-008116-1-0328.fits
    fi
    if [[ ! -f frame-r-008116-1-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0330.fits.bz2 > frame-r-008116-1-0330.fits
    fi
    if [[ ! -f frame-r-008116-2-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0330.fits.bz2 > frame-r-008116-2-0330.fits
    fi
    if [[ ! -f frame-r-007757-5-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0126.fits.bz2 > frame-r-007757-5-0126.fits
    fi
    if [[ ! -f frame-r-007757-6-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0125.fits.bz2 > frame-r-007757-6-0125.fits
    fi
    if [[ ! -f frame-r-008056-6-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0048.fits.bz2 > frame-r-008056-6-0048.fits
    fi
    if [[ ! -f frame-r-007757-4-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0126.fits.bz2 > frame-r-007757-4-0126.fits
    fi
    if [[ ! -f frame-r-007757-3-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0124.fits.bz2 > frame-r-007757-3-0124.fits
    fi
    if [[ ! -f frame-r-008056-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0047.fits.bz2 > frame-r-008056-3-0047.fits
    fi
    if [[ ! -f frame-r-007757-1-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0123.fits.bz2 > frame-r-007757-1-0123.fits
    fi
    if [[ ! -f frame-r-007757-1-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0124.fits.bz2 > frame-r-007757-1-0124.fits
    fi
    if [[ ! -f frame-r-007757-1-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0126.fits.bz2 > frame-r-007757-1-0126.fits
    fi
    if [[ ! -f frame-r-008056-1-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0046.fits.bz2 > frame-r-008056-1-0046.fits
    fi
    if [[ ! -f frame-r-008056-1-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0048.fits.bz2 > frame-r-008056-1-0048.fits
    fi
    if [[ ! -f frame-r-008056-2-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0046.fits.bz2 > frame-r-008056-2-0046.fits
    fi
    if [[ ! -f frame-r-008056-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0047.fits.bz2 > frame-r-008056-2-0047.fits
    fi
    if [[ ! -f frame-r-004843-5-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0045.fits.bz2 > frame-r-004843-5-0045.fits
    fi
    if [[ ! -f frame-r-004843-6-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0042.fits.bz2 > frame-r-004843-6-0042.fits
    fi
    if [[ ! -f frame-r-008055-6-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0076.fits.bz2 > frame-r-008055-6-0076.fits
    fi
    if [[ ! -f frame-r-008055-6-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0077.fits.bz2 > frame-r-008055-6-0077.fits
    fi
    if [[ ! -f frame-r-008055-6-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0078.fits.bz2 > frame-r-008055-6-0078.fits
    fi
    if [[ ! -f frame-r-008112-2-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0040.fits.bz2 > frame-r-008112-2-0040.fits
    fi
    if [[ ! -f frame-r-008112-2-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0042.fits.bz2 > frame-r-008112-2-0042.fits
    fi
    if [[ ! -f frame-r-008112-2-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0043.fits.bz2 > frame-r-008112-2-0043.fits
    fi
    if [[ ! -f frame-r-008112-3-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0043.fits.bz2 > frame-r-008112-3-0043.fits
    fi
    if [[ ! -f frame-r-008111-1-0181.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0181.fits.bz2 > frame-r-008111-1-0181.fits
    fi
    if [[ ! -f frame-r-008111-1-0182.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0182.fits.bz2 > frame-r-008111-1-0182.fits
    fi
    if [[ ! -f frame-r-008111-2-0179.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0179.fits.bz2 > frame-r-008111-2-0179.fits
    fi
    if [[ ! -f frame-r-008111-2-0180.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0180.fits.bz2 > frame-r-008111-2-0180.fits
    fi
    if [[ ! -f frame-r-008111-2-0181.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0181.fits.bz2 > frame-r-008111-2-0181.fits
    fi
    if [[ ! -f frame-r-008111-2-0182.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0182.fits.bz2 > frame-r-008111-2-0182.fits
    fi
    if [[ ! -f frame-r-008112-1-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0040.fits.bz2 > frame-r-008112-1-0040.fits
    fi
    if [[ ! -f frame-r-008112-1-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0041.fits.bz2 > frame-r-008112-1-0041.fits
    fi
    if [[ ! -f frame-r-008112-1-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0043.fits.bz2 > frame-r-008112-1-0043.fits
    fi
    if [[ ! -f frame-r-008105-5-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0056.fits.bz2 > frame-r-008105-5-0056.fits
    fi
    if [[ ! -f frame-r-008105-5-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0057.fits.bz2 > frame-r-008105-5-0057.fits
    fi
    if [[ ! -f frame-r-008105-5-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0058.fits.bz2 > frame-r-008105-5-0058.fits
    fi
    if [[ ! -f frame-r-008105-6-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0056.fits.bz2 > frame-r-008105-6-0056.fits
    fi
    if [[ ! -f frame-r-008105-6-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0057.fits.bz2 > frame-r-008105-6-0057.fits
    fi
    if [[ ! -f frame-r-008116-5-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0331.fits.bz2 > frame-r-008116-5-0331.fits
    fi
    if [[ ! -f frame-r-008116-5-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0332.fits.bz2 > frame-r-008116-5-0332.fits
    fi
    if [[ ! -f frame-r-008116-6-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0331.fits.bz2 > frame-r-008116-6-0331.fits
    fi
    if [[ ! -f frame-r-008116-6-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0333.fits.bz2 > frame-r-008116-6-0333.fits
    fi
    if [[ ! -f frame-r-008105-4-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0057.fits.bz2 > frame-r-008105-4-0057.fits
    fi
    if [[ ! -f frame-r-008116-4-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0331.fits.bz2 > frame-r-008116-4-0331.fits
    fi
    if [[ ! -f frame-r-008105-2-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0056.fits.bz2 > frame-r-008105-2-0056.fits
    fi
    if [[ ! -f frame-r-008105-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0057.fits.bz2 > frame-r-008105-2-0057.fits
    fi
    if [[ ! -f frame-r-008105-2-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0058.fits.bz2 > frame-r-008105-2-0058.fits
    fi
    if [[ ! -f frame-r-008105-3-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0056.fits.bz2 > frame-r-008105-3-0056.fits
    fi
    if [[ ! -f frame-r-008105-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0057.fits.bz2 > frame-r-008105-3-0057.fits
    fi
    if [[ ! -f frame-r-008116-3-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0332.fits.bz2 > frame-r-008116-3-0332.fits
    fi
    if [[ ! -f frame-r-008105-1-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0057.fits.bz2 > frame-r-008105-1-0057.fits
    fi
    if [[ ! -f frame-r-008105-1-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0058.fits.bz2 > frame-r-008105-1-0058.fits
    fi
    if [[ ! -f frame-r-008116-1-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0332.fits.bz2 > frame-r-008116-1-0332.fits
    fi
    if [[ ! -f frame-r-008116-2-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0332.fits.bz2 > frame-r-008116-2-0332.fits
    fi
    if [[ ! -f frame-r-008116-2-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0333.fits.bz2 > frame-r-008116-2-0333.fits
    fi
    if [[ ! -f frame-r-007757-5-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0127.fits.bz2 > frame-r-007757-5-0127.fits
    fi
    if [[ ! -f frame-r-007757-5-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0128.fits.bz2 > frame-r-007757-5-0128.fits
    fi
    if [[ ! -f frame-r-007757-6-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0128.fits.bz2 > frame-r-007757-6-0128.fits
    fi
    if [[ ! -f frame-r-007757-6-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0130.fits.bz2 > frame-r-007757-6-0130.fits
    fi
    if [[ ! -f frame-r-008056-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0049.fits.bz2 > frame-r-008056-5-0049.fits
    fi
    if [[ ! -f frame-r-008056-6-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0052.fits.bz2 > frame-r-008056-6-0052.fits
    fi
    if [[ ! -f frame-r-007757-4-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0129.fits.bz2 > frame-r-007757-4-0129.fits
    fi
    if [[ ! -f frame-r-007757-4-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0130.fits.bz2 > frame-r-007757-4-0130.fits
    fi
    if [[ ! -f frame-r-008056-4-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0050.fits.bz2 > frame-r-008056-4-0050.fits
    fi
    if [[ ! -f frame-r-008056-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0052.fits.bz2 > frame-r-008056-4-0052.fits
    fi
    if [[ ! -f frame-r-007757-2-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0127.fits.bz2 > frame-r-007757-2-0127.fits
    fi
    if [[ ! -f frame-r-007757-2-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0128.fits.bz2 > frame-r-007757-2-0128.fits
    fi
    if [[ ! -f frame-r-007757-3-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0127.fits.bz2 > frame-r-007757-3-0127.fits
    fi
    if [[ ! -f frame-r-007757-3-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0128.fits.bz2 > frame-r-007757-3-0128.fits
    fi
    if [[ ! -f frame-r-007757-3-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0129.fits.bz2 > frame-r-007757-3-0129.fits
    fi
    if [[ ! -f frame-r-008056-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0049.fits.bz2 > frame-r-008056-3-0049.fits
    fi
    if [[ ! -f frame-r-008056-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0051.fits.bz2 > frame-r-008056-3-0051.fits
    fi
    if [[ ! -f frame-r-008056-3-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0052.fits.bz2 > frame-r-008056-3-0052.fits
    fi
    if [[ ! -f frame-r-008056-1-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0049.fits.bz2 > frame-r-008056-1-0049.fits
    fi
    if [[ ! -f frame-r-008056-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0051.fits.bz2 > frame-r-008056-1-0051.fits
    fi
    if [[ ! -f frame-r-008056-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0049.fits.bz2 > frame-r-008056-2-0049.fits
    fi
    if [[ ! -f frame-r-008056-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0051.fits.bz2 > frame-r-008056-2-0051.fits
    fi
    if [[ ! -f frame-r-008056-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0052.fits.bz2 > frame-r-008056-2-0052.fits
    fi
    if [[ ! -f frame-r-004843-5-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0046.fits.bz2 > frame-r-004843-5-0046.fits
    fi
    if [[ ! -f frame-r-004843-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0048.fits.bz2 > frame-r-004843-5-0048.fits
    fi
    if [[ ! -f frame-r-004843-6-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0047.fits.bz2 > frame-r-004843-6-0047.fits
    fi
    if [[ ! -f frame-r-004843-6-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0048.fits.bz2 > frame-r-004843-6-0048.fits
    fi
    if [[ ! -f frame-r-008055-5-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0079.fits.bz2 > frame-r-008055-5-0079.fits
    fi
    if [[ ! -f frame-r-008055-5-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0081.fits.bz2 > frame-r-008055-5-0081.fits
    fi
    if [[ ! -f frame-r-008055-5-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0082.fits.bz2 > frame-r-008055-5-0082.fits
    fi
    if [[ ! -f frame-r-008055-6-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0079.fits.bz2 > frame-r-008055-6-0079.fits
    fi
    if [[ ! -f frame-r-008055-6-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0082.fits.bz2 > frame-r-008055-6-0082.fits
    fi
    if [[ ! -f frame-r-008111-3-0184.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0184.fits.bz2 > frame-r-008111-3-0184.fits
    fi
    if [[ ! -f frame-r-008111-3-0185.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0185.fits.bz2 > frame-r-008111-3-0185.fits
    fi
    if [[ ! -f frame-r-008112-2-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0044.fits.bz2 > frame-r-008112-2-0044.fits
    fi
    if [[ ! -f frame-r-008112-2-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0046.fits.bz2 > frame-r-008112-2-0046.fits
    fi
    if [[ ! -f frame-r-008112-3-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0044.fits.bz2 > frame-r-008112-3-0044.fits
    fi
    if [[ ! -f frame-r-008112-3-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0045.fits.bz2 > frame-r-008112-3-0045.fits
    fi
    if [[ ! -f frame-r-008112-3-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0047.fits.bz2 > frame-r-008112-3-0047.fits
    fi
    if [[ ! -f frame-r-008111-1-0183.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0183.fits.bz2 > frame-r-008111-1-0183.fits
    fi
    if [[ ! -f frame-r-008111-1-0184.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0184.fits.bz2 > frame-r-008111-1-0184.fits
    fi
    if [[ ! -f frame-r-008111-1-0186.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0186.fits.bz2 > frame-r-008111-1-0186.fits
    fi
    if [[ ! -f frame-r-008111-2-0183.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0183.fits.bz2 > frame-r-008111-2-0183.fits
    fi
    if [[ ! -f frame-r-008111-2-0184.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0184.fits.bz2 > frame-r-008111-2-0184.fits
    fi
    if [[ ! -f frame-r-008111-2-0186.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0186.fits.bz2 > frame-r-008111-2-0186.fits
    fi
    if [[ ! -f frame-r-008112-1-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0046.fits.bz2 > frame-r-008112-1-0046.fits
    fi
    if [[ ! -f frame-r-008105-5-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0060.fits.bz2 > frame-r-008105-5-0060.fits
    fi
    if [[ ! -f frame-r-008105-5-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0062.fits.bz2 > frame-r-008105-5-0062.fits
    fi
    if [[ ! -f frame-r-008116-5-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0334.fits.bz2 > frame-r-008116-5-0334.fits
    fi
    if [[ ! -f frame-r-008116-5-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0336.fits.bz2 > frame-r-008116-5-0336.fits
    fi
    if [[ ! -f frame-r-008116-5-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0337.fits.bz2 > frame-r-008116-5-0337.fits
    fi
    if [[ ! -f frame-r-008116-6-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0334.fits.bz2 > frame-r-008116-6-0334.fits
    fi
    if [[ ! -f frame-r-008105-4-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0059.fits.bz2 > frame-r-008105-4-0059.fits
    fi
    if [[ ! -f frame-r-008105-4-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0061.fits.bz2 > frame-r-008105-4-0061.fits
    fi
    if [[ ! -f frame-r-008116-4-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0334.fits.bz2 > frame-r-008116-4-0334.fits
    fi
    if [[ ! -f frame-r-008116-4-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0336.fits.bz2 > frame-r-008116-4-0336.fits
    fi
    if [[ ! -f frame-r-008105-2-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0059.fits.bz2 > frame-r-008105-2-0059.fits
    fi
    if [[ ! -f frame-r-008105-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0059.fits.bz2 > frame-r-008105-3-0059.fits
    fi
    if [[ ! -f frame-r-008105-3-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0060.fits.bz2 > frame-r-008105-3-0060.fits
    fi
    if [[ ! -f frame-r-008105-3-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0061.fits.bz2 > frame-r-008105-3-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0115.fits.bz2 > frame-r-004800-6-0115.fits
    fi
    if [[ ! -f frame-r-004800-6-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0116.fits.bz2 > frame-r-004800-6-0116.fits
    fi
    if [[ ! -f frame-r-008116-3-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0335.fits.bz2 > frame-r-008116-3-0335.fits
    fi
    if [[ ! -f frame-r-008116-3-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0336.fits.bz2 > frame-r-008116-3-0336.fits
    fi
    if [[ ! -f frame-r-008116-3-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0337.fits.bz2 > frame-r-008116-3-0337.fits
    fi
    if [[ ! -f frame-r-008105-1-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0059.fits.bz2 > frame-r-008105-1-0059.fits
    fi
    if [[ ! -f frame-r-008105-1-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0061.fits.bz2 > frame-r-008105-1-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0111.fits.bz2 > frame-r-004800-6-0111.fits
    fi
    if [[ ! -f frame-r-008116-1-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0334.fits.bz2 > frame-r-008116-1-0334.fits
    fi
    if [[ ! -f frame-r-008116-1-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0335.fits.bz2 > frame-r-008116-1-0335.fits
    fi
    if [[ ! -f frame-r-008116-1-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0336.fits.bz2 > frame-r-008116-1-0336.fits
    fi
    if [[ ! -f frame-r-008116-1-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0337.fits.bz2 > frame-r-008116-1-0337.fits
    fi
    if [[ ! -f frame-r-008116-2-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0335.fits.bz2 > frame-r-008116-2-0335.fits
    fi
    if [[ ! -f frame-r-008116-2-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0337.fits.bz2 > frame-r-008116-2-0337.fits
    fi
    if [[ ! -f frame-r-007757-5-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0131.fits.bz2 > frame-r-007757-5-0131.fits
    fi
    if [[ ! -f frame-r-007757-6-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0132.fits.bz2 > frame-r-007757-6-0132.fits
    fi
    if [[ ! -f frame-r-008056-5-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0055.fits.bz2 > frame-r-008056-5-0055.fits
    fi
    if [[ ! -f frame-r-008056-5-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0056.fits.bz2 > frame-r-008056-5-0056.fits
    fi
    if [[ ! -f frame-r-008056-6-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0053.fits.bz2 > frame-r-008056-6-0053.fits
    fi
    if [[ ! -f frame-r-007757-4-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0132.fits.bz2 > frame-r-007757-4-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0102.fits.bz2 > frame-r-004800-6-0102.fits
    fi
    if [[ ! -f frame-r-008056-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0053.fits.bz2 > frame-r-008056-4-0053.fits
    fi
    if [[ ! -f frame-r-008056-4-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0055.fits.bz2 > frame-r-008056-4-0055.fits
    fi
    if [[ ! -f frame-r-008056-4-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0056.fits.bz2 > frame-r-008056-4-0056.fits
    fi
    if [[ ! -f frame-r-004800-6-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0096.fits.bz2 > frame-r-004800-6-0096.fits
    fi
    if [[ ! -f frame-r-007757-3-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0132.fits.bz2 > frame-r-007757-3-0132.fits
    fi
    if [[ ! -f frame-r-008056-3-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0053.fits.bz2 > frame-r-008056-3-0053.fits
    fi
    if [[ ! -f frame-r-008056-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0054.fits.bz2 > frame-r-008056-3-0054.fits
    fi
    if [[ ! -f frame-r-008056-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0055.fits.bz2 > frame-r-008056-3-0055.fits
    fi
    if [[ ! -f frame-r-008056-3-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0056.fits.bz2 > frame-r-008056-3-0056.fits
    fi
    if [[ ! -f frame-r-007757-1-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0131.fits.bz2 > frame-r-007757-1-0131.fits
    fi
    if [[ ! -f frame-r-007757-1-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0132.fits.bz2 > frame-r-007757-1-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0093.fits.bz2 > frame-r-004800-6-0093.fits
    fi
    if [[ ! -f frame-r-008056-1-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0053.fits.bz2 > frame-r-008056-1-0053.fits
    fi
    if [[ ! -f frame-r-008056-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0055.fits.bz2 > frame-r-008056-1-0055.fits
    fi
    if [[ ! -f frame-r-008056-2-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0053.fits.bz2 > frame-r-008056-2-0053.fits
    fi
    if [[ ! -f frame-r-008056-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0055.fits.bz2 > frame-r-008056-2-0055.fits
    fi
    if [[ ! -f frame-r-008056-2-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0056.fits.bz2 > frame-r-008056-2-0056.fits
    fi
    if [[ ! -f frame-r-004843-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0049.fits.bz2 > frame-r-004843-5-0049.fits
    fi
    if [[ ! -f frame-r-004843-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0051.fits.bz2 > frame-r-004843-5-0051.fits
    fi
    if [[ ! -f frame-r-004836-6-0471.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4836/6/frame-r-004836-6-0471.fits.bz2 > frame-r-004836-6-0471.fits
    fi
    if [[ ! -f frame-r-004836-6-0472.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4836/6/frame-r-004836-6-0472.fits.bz2 > frame-r-004836-6-0472.fits
    fi
    if [[ ! -f frame-r-008055-5-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0083.fits.bz2 > frame-r-008055-5-0083.fits
    fi
    if [[ ! -f frame-r-008055-5-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0084.fits.bz2 > frame-r-008055-5-0084.fits
    fi
    if [[ ! -f frame-r-008055-5-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0085.fits.bz2 > frame-r-008055-5-0085.fits
    fi
    if [[ ! -f frame-r-008055-6-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0085.fits.bz2 > frame-r-008055-6-0085.fits
    fi
    if [[ ! -f frame-r-004843-4-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0049.fits.bz2 > frame-r-004843-4-0049.fits
    fi
    if [[ ! -f frame-r-004843-4-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0051.fits.bz2 > frame-r-004843-4-0051.fits
    fi
    if [[ ! -f frame-r-004829-6-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0152.fits.bz2 > frame-r-004829-6-0152.fits
    fi
    if [[ ! -f frame-r-008111-4-0188.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0188.fits.bz2 > frame-r-008111-4-0188.fits
    fi
    if [[ ! -f frame-r-004829-5-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0153.fits.bz2 > frame-r-004829-5-0153.fits
    fi
    if [[ ! -f frame-r-004829-5-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0152.fits.bz2 > frame-r-004829-5-0152.fits
    fi
    if [[ ! -f frame-r-004829-6-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0149.fits.bz2 > frame-r-004829-6-0149.fits
    fi
    if [[ ! -f frame-r-004829-6-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0150.fits.bz2 > frame-r-004829-6-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0188.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0188.fits.bz2 > frame-r-008111-3-0188.fits
    fi
    if [[ ! -f frame-r-008111-3-0189.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0189.fits.bz2 > frame-r-008111-3-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0150.fits.bz2 > frame-r-004829-5-0150.fits
    fi
    if [[ ! -f frame-r-004829-6-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0148.fits.bz2 > frame-r-004829-6-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0048.fits.bz2 > frame-r-008112-2-0048.fits
    fi
    if [[ ! -f frame-r-004829-6-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0151.fits.bz2 > frame-r-004829-6-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0048.fits.bz2 > frame-r-008112-3-0048.fits
    fi
    if [[ ! -f frame-r-008112-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0049.fits.bz2 > frame-r-008112-3-0049.fits
    fi
    if [[ ! -f frame-r-004829-6-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0145.fits.bz2 > frame-r-004829-6-0145.fits
    fi
    if [[ ! -f frame-r-004829-6-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0144.fits.bz2 > frame-r-004829-6-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0188.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0188.fits.bz2 > frame-r-008111-1-0188.fits
    fi
    if [[ ! -f frame-r-008111-1-0189.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0189.fits.bz2 > frame-r-008111-1-0189.fits
    fi
    if [[ ! -f frame-r-004829-6-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0146.fits.bz2 > frame-r-004829-6-0146.fits
    fi
    if [[ ! -f frame-r-004829-6-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0147.fits.bz2 > frame-r-004829-6-0147.fits
    fi
    if [[ ! -f frame-r-004829-5-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0146.fits.bz2 > frame-r-004829-5-0146.fits
    fi
    if [[ ! -f frame-r-008112-1-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0048.fits.bz2 > frame-r-008112-1-0048.fits
    fi
    if [[ ! -f frame-r-008105-5-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0065.fits.bz2 > frame-r-008105-5-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0141.fits.bz2 > frame-r-004829-5-0141.fits
    fi
    if [[ ! -f frame-r-004829-6-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0143.fits.bz2 > frame-r-004829-6-0143.fits
    fi
    if [[ ! -f frame-r-008105-6-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0064.fits.bz2 > frame-r-008105-6-0064.fits
    fi
    if [[ ! -f frame-r-008105-6-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0065.fits.bz2 > frame-r-008105-6-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0142.fits.bz2 > frame-r-004829-5-0142.fits
    fi
    if [[ ! -f frame-r-004829-5-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0139.fits.bz2 > frame-r-004829-5-0139.fits
    fi
    if [[ ! -f frame-r-004829-6-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0138.fits.bz2 > frame-r-004829-6-0138.fits
    fi
    if [[ ! -f frame-r-004800-5-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0118.fits.bz2 > frame-r-004800-5-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0065.fits.bz2 > frame-r-008105-4-0065.fits
    fi
    if [[ ! -f frame-r-004829-5-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0138.fits.bz2 > frame-r-004829-5-0138.fits
    fi
    if [[ ! -f frame-r-004829-5-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0135.fits.bz2 > frame-r-004829-5-0135.fits
    fi
    if [[ ! -f frame-r-004829-5-0136.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0136.fits.bz2 > frame-r-004829-5-0136.fits
    fi
    if [[ ! -f frame-r-004829-6-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0133.fits.bz2 > frame-r-004829-6-0133.fits
    fi
    if [[ ! -f frame-r-004829-6-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0132.fits.bz2 > frame-r-004829-6-0132.fits
    fi
    if [[ ! -f frame-r-004800-5-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0113.fits.bz2 > frame-r-004800-5-0113.fits
    fi
    if [[ ! -f frame-r-004800-5-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0112.fits.bz2 > frame-r-004800-5-0112.fits
    fi
    if [[ ! -f frame-r-004829-5-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0131.fits.bz2 > frame-r-004829-5-0131.fits
    fi
    if [[ ! -f frame-r-004829-5-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0132.fits.bz2 > frame-r-004829-5-0132.fits
    fi
    if [[ ! -f frame-r-004829-6-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0134.fits.bz2 > frame-r-004829-6-0134.fits
    fi
    if [[ ! -f frame-r-004800-5-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0115.fits.bz2 > frame-r-004800-5-0115.fits
    fi
    if [[ ! -f frame-r-004829-5-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0134.fits.bz2 > frame-r-004829-5-0134.fits
    fi
    if [[ ! -f frame-r-004800-5-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0114.fits.bz2 > frame-r-004800-5-0114.fits
    fi
    if [[ ! -f frame-r-008105-1-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0063.fits.bz2 > frame-r-008105-1-0063.fits
    fi
    if [[ ! -f frame-r-008105-1-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0064.fits.bz2 > frame-r-008105-1-0064.fits
    fi
    if [[ ! -f frame-r-004800-5-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0110.fits.bz2 > frame-r-004800-5-0110.fits
    fi
    if [[ ! -f frame-r-004829-5-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0129.fits.bz2 > frame-r-004829-5-0129.fits
    fi
    if [[ ! -f frame-r-004800-5-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0108.fits.bz2 > frame-r-004800-5-0108.fits
    fi
    if [[ ! -f frame-r-008116-2-0339.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0339.fits.bz2 > frame-r-008116-2-0339.fits
    fi
    if [[ ! -f frame-r-004829-6-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0125.fits.bz2 > frame-r-004829-6-0125.fits
    fi
    if [[ ! -f frame-r-004800-5-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0104.fits.bz2 > frame-r-004800-5-0104.fits
    fi
    if [[ ! -f frame-r-004829-5-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0123.fits.bz2 > frame-r-004829-5-0123.fits
    fi
    if [[ ! -f frame-r-004829-5-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0125.fits.bz2 > frame-r-004829-5-0125.fits
    fi
    if [[ ! -f frame-r-004800-5-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0106.fits.bz2 > frame-r-004800-5-0106.fits
    fi
    if [[ ! -f frame-r-004829-6-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0122.fits.bz2 > frame-r-004829-6-0122.fits
    fi
    if [[ ! -f frame-r-004800-5-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0103.fits.bz2 > frame-r-004800-5-0103.fits
    fi
    if [[ ! -f frame-r-008056-4-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0058.fits.bz2 > frame-r-008056-4-0058.fits
    fi
    if [[ ! -f frame-r-004829-5-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0119.fits.bz2 > frame-r-004829-5-0119.fits
    fi
    if [[ ! -f frame-r-004829-6-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0116.fits.bz2 > frame-r-004829-6-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0115.fits.bz2 > frame-r-004829-6-0115.fits
    fi
    if [[ ! -f frame-r-004800-5-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0097.fits.bz2 > frame-r-004800-5-0097.fits
    fi
    if [[ ! -f frame-r-004800-5-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0096.fits.bz2 > frame-r-004800-5-0096.fits
    fi
    if [[ ! -f frame-r-004829-5-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0116.fits.bz2 > frame-r-004829-5-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0118.fits.bz2 > frame-r-004829-6-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0057.fits.bz2 > frame-r-008056-3-0057.fits
    fi
    if [[ ! -f frame-r-008056-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0058.fits.bz2 > frame-r-008056-3-0058.fits
    fi
    if [[ ! -f frame-r-004829-5-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0117.fits.bz2 > frame-r-004829-5-0117.fits
    fi
    if [[ ! -f frame-r-004829-6-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0112.fits.bz2 > frame-r-004829-6-0112.fits
    fi
    if [[ ! -f frame-r-004829-6-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0113.fits.bz2 > frame-r-004829-6-0113.fits
    fi
    if [[ ! -f frame-r-004829-5-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0112.fits.bz2 > frame-r-004829-5-0112.fits
    fi
    if [[ ! -f frame-r-004829-5-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0113.fits.bz2 > frame-r-004829-5-0113.fits
    fi
    if [[ ! -f frame-r-004800-5-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0092.fits.bz2 > frame-r-004800-5-0092.fits
    fi
    if [[ ! -f frame-r-008056-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0057.fits.bz2 > frame-r-008056-2-0057.fits
    fi
    if [[ ! -f frame-r-004829-5-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0114.fits.bz2 > frame-r-004829-5-0114.fits
    fi
    if [[ ! -f frame-r-004843-6-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0053.fits.bz2 > frame-r-004843-6-0053.fits
    fi
    if [[ ! -f frame-r-004800-5-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0090.fits.bz2 > frame-r-004800-5-0090.fits
    fi
    if [[ ! -f frame-r-004829-6-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0110.fits.bz2 > frame-r-004829-6-0110.fits
    fi
    if [[ ! -f frame-r-004843-4-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0053.fits.bz2 > frame-r-004843-4-0053.fits
    fi
    if [[ ! -f frame-r-004836-4-0477.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4836/4/frame-r-004836-4-0477.fits.bz2 > frame-r-004836-4-0477.fits
    fi
    if [[ ! -f frame-r-004800-5-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0087.fits.bz2 > frame-r-004800-5-0087.fits
    fi
    if [[ ! -f frame-r-004829-5-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0106.fits.bz2 > frame-r-004829-5-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0087.fits.bz2 > frame-r-008055-4-0087.fits
    fi
    if [[ ! -f frame-r-008055-4-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0088.fits.bz2 > frame-r-008055-4-0088.fits
    fi
    if [[ ! -f frame-r-004829-5-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0105.fits.bz2 > frame-r-004829-5-0105.fits
    fi
    if [[ ! -f frame-r-008055-3-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0086.fits.bz2 > frame-r-008055-3-0086.fits
    fi
    if [[ ! -f frame-r-004800-5-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0083.fits.bz2 > frame-r-004800-5-0083.fits
    fi
    if [[ ! -f frame-r-004829-4-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0144.fits.bz2 > frame-r-004829-4-0144.fits
    fi
    if [[ ! -f frame-r-008111-4-0192.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0192.fits.bz2 > frame-r-008111-4-0192.fits
    fi
    if [[ ! -f frame-r-008111-4-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0193.fits.bz2 > frame-r-008111-4-0193.fits
    fi
    if [[ ! -f frame-r-008111-3-0191.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0191.fits.bz2 > frame-r-008111-3-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0149.fits.bz2 > frame-r-004829-4-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0054.fits.bz2 > frame-r-008112-2-0054.fits
    fi
    if [[ ! -f frame-r-008112-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0051.fits.bz2 > frame-r-008112-3-0051.fits
    fi
    if [[ ! -f frame-r-008112-3-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0052.fits.bz2 > frame-r-008112-3-0052.fits
    fi
    if [[ ! -f frame-r-004829-4-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0151.fits.bz2 > frame-r-004829-4-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0054.fits.bz2 > frame-r-008112-3-0054.fits
    fi
    if [[ ! -f frame-r-008111-1-0190.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0190.fits.bz2 > frame-r-008111-1-0190.fits
    fi
    if [[ ! -f frame-r-004829-4-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0145.fits.bz2 > frame-r-004829-4-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0192.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0192.fits.bz2 > frame-r-008111-1-0192.fits
    fi
    if [[ ! -f frame-r-008111-2-0190.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0190.fits.bz2 > frame-r-008111-2-0190.fits
    fi
    if [[ ! -f frame-r-004829-4-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0146.fits.bz2 > frame-r-004829-4-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0192.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0192.fits.bz2 > frame-r-008111-2-0192.fits
    fi
    if [[ ! -f frame-r-008111-2-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0193.fits.bz2 > frame-r-008111-2-0193.fits
    fi
    if [[ ! -f frame-r-008111-2-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0194.fits.bz2 > frame-r-008111-2-0194.fits
    fi
    if [[ ! -f frame-r-004829-4-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0141.fits.bz2 > frame-r-004829-4-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0069.fits.bz2 > frame-r-008105-5-0069.fits
    fi
    if [[ ! -f frame-r-008105-6-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0067.fits.bz2 > frame-r-008105-6-0067.fits
    fi
    if [[ ! -f frame-r-008105-6-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0068.fits.bz2 > frame-r-008105-6-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0143.fits.bz2 > frame-r-004829-4-0143.fits
    fi
    if [[ ! -f frame-r-008116-5-0341.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0341.fits.bz2 > frame-r-008116-5-0341.fits
    fi
    if [[ ! -f frame-r-008116-5-0343.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0343.fits.bz2 > frame-r-008116-5-0343.fits
    fi
    if [[ ! -f frame-r-008116-5-0345.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0345.fits.bz2 > frame-r-008116-5-0345.fits
    fi
    if [[ ! -f frame-r-008116-6-0345.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0345.fits.bz2 > frame-r-008116-6-0345.fits
    fi
    if [[ ! -f frame-r-008105-4-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0067.fits.bz2 > frame-r-008105-4-0067.fits
    fi
    if [[ ! -f frame-r-008105-4-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0068.fits.bz2 > frame-r-008105-4-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0138.fits.bz2 > frame-r-004829-4-0138.fits
    fi
    if [[ ! -f frame-r-004829-4-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0137.fits.bz2 > frame-r-004829-4-0137.fits
    fi
    if [[ ! -f frame-r-008105-4-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0070.fits.bz2 > frame-r-008105-4-0070.fits
    fi
    if [[ ! -f frame-r-004800-4-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0116.fits.bz2 > frame-r-004800-4-0116.fits
    fi
    if [[ ! -f frame-r-004800-4-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0117.fits.bz2 > frame-r-004800-4-0117.fits
    fi
    if [[ ! -f frame-r-004829-4-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0135.fits.bz2 > frame-r-004829-4-0135.fits
    fi
    if [[ ! -f frame-r-004829-4-0136.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0136.fits.bz2 > frame-r-004829-4-0136.fits
    fi
    if [[ ! -f frame-r-004800-3-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0117.fits.bz2 > frame-r-004800-3-0117.fits
    fi
    if [[ ! -f frame-r-004800-4-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0113.fits.bz2 > frame-r-004800-4-0113.fits
    fi
    if [[ ! -f frame-r-004829-4-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0131.fits.bz2 > frame-r-004829-4-0131.fits
    fi
    if [[ ! -f frame-r-004829-4-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0133.fits.bz2 > frame-r-004829-4-0133.fits
    fi
    if [[ ! -f frame-r-004800-3-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0112.fits.bz2 > frame-r-004800-3-0112.fits
    fi
    if [[ ! -f frame-r-004800-3-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0113.fits.bz2 > frame-r-004800-3-0113.fits
    fi
    if [[ ! -f frame-r-004800-4-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0115.fits.bz2 > frame-r-004800-4-0115.fits
    fi
    if [[ ! -f frame-r-004800-4-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0114.fits.bz2 > frame-r-004800-4-0114.fits
    fi
    if [[ ! -f frame-r-004829-4-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0128.fits.bz2 > frame-r-004829-4-0128.fits
    fi
    if [[ ! -f frame-r-004829-4-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0129.fits.bz2 > frame-r-004829-4-0129.fits
    fi
    if [[ ! -f frame-r-004829-4-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0130.fits.bz2 > frame-r-004829-4-0130.fits
    fi
    if [[ ! -f frame-r-004800-4-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0108.fits.bz2 > frame-r-004800-4-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0127.fits.bz2 > frame-r-004829-4-0127.fits
    fi
    if [[ ! -f frame-r-004800-4-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0104.fits.bz2 > frame-r-004800-4-0104.fits
    fi
    if [[ ! -f frame-r-004800-4-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0105.fits.bz2 > frame-r-004800-4-0105.fits
    fi
    if [[ ! -f frame-r-004829-4-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0123.fits.bz2 > frame-r-004829-4-0123.fits
    fi
    if [[ ! -f frame-r-004829-4-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0125.fits.bz2 > frame-r-004829-4-0125.fits
    fi
    if [[ ! -f frame-r-004800-3-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0106.fits.bz2 > frame-r-004800-3-0106.fits
    fi
    if [[ ! -f frame-r-004800-4-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0107.fits.bz2 > frame-r-004800-4-0107.fits
    fi
    if [[ ! -f frame-r-004800-3-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0107.fits.bz2 > frame-r-004800-3-0107.fits
    fi
    if [[ ! -f frame-r-004800-4-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0103.fits.bz2 > frame-r-004800-4-0103.fits
    fi
    if [[ ! -f frame-r-004800-3-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0101.fits.bz2 > frame-r-004800-3-0101.fits
    fi
    if [[ ! -f frame-r-004829-4-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0120.fits.bz2 > frame-r-004829-4-0120.fits
    fi
    if [[ ! -f frame-r-004800-3-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0100.fits.bz2 > frame-r-004800-3-0100.fits
    fi
    if [[ ! -f frame-r-004829-4-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0115.fits.bz2 > frame-r-004829-4-0115.fits
    fi
    if [[ ! -f frame-r-004829-4-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0116.fits.bz2 > frame-r-004829-4-0116.fits
    fi
    if [[ ! -f frame-r-004800-3-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0097.fits.bz2 > frame-r-004800-3-0097.fits
    fi
    if [[ ! -f frame-r-004800-4-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0098.fits.bz2 > frame-r-004800-4-0098.fits
    fi
    if [[ ! -f frame-r-004800-4-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0099.fits.bz2 > frame-r-004800-4-0099.fits
    fi
    if [[ ! -f frame-r-004800-3-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0098.fits.bz2 > frame-r-004800-3-0098.fits
    fi
    if [[ ! -f frame-r-004800-4-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0093.fits.bz2 > frame-r-004800-4-0093.fits
    fi
    if [[ ! -f frame-r-004800-4-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0094.fits.bz2 > frame-r-004800-4-0094.fits
    fi
    if [[ ! -f frame-r-004800-3-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0093.fits.bz2 > frame-r-004800-3-0093.fits
    fi
    if [[ ! -f frame-r-004800-3-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0094.fits.bz2 > frame-r-004800-3-0094.fits
    fi
    if [[ ! -f frame-r-004800-4-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0095.fits.bz2 > frame-r-004800-4-0095.fits
    fi
    if [[ ! -f frame-r-004800-3-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0095.fits.bz2 > frame-r-004800-3-0095.fits
    fi
    if [[ ! -f frame-r-004800-4-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0088.fits.bz2 > frame-r-004800-4-0088.fits
    fi
    if [[ ! -f frame-r-004829-4-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0107.fits.bz2 > frame-r-004829-4-0107.fits
    fi
    if [[ ! -f frame-r-004800-4-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0089.fits.bz2 > frame-r-004800-4-0089.fits
    fi
    if [[ ! -f frame-r-004829-4-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0108.fits.bz2 > frame-r-004829-4-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0110.fits.bz2 > frame-r-004829-4-0110.fits
    fi
    if [[ ! -f frame-r-004829-4-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0109.fits.bz2 > frame-r-004829-4-0109.fits
    fi
    if [[ ! -f frame-r-004800-3-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0091.fits.bz2 > frame-r-004800-3-0091.fits
    fi
    if [[ ! -f frame-r-004800-3-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0089.fits.bz2 > frame-r-004800-3-0089.fits
    fi
    if [[ ! -f frame-r-004800-4-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0085.fits.bz2 > frame-r-004800-4-0085.fits
    fi
    if [[ ! -f frame-r-004800-4-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0084.fits.bz2 > frame-r-004800-4-0084.fits
    fi
    if [[ ! -f frame-r-004836-4-0478.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4836/4/frame-r-004836-4-0478.fits.bz2 > frame-r-004836-4-0478.fits
    fi
    if [[ ! -f frame-r-004800-3-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0087.fits.bz2 > frame-r-004800-3-0087.fits
    fi
    if [[ ! -f frame-r-008055-4-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0092.fits.bz2 > frame-r-008055-4-0092.fits
    fi
    if [[ ! -f frame-r-008055-4-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0093.fits.bz2 > frame-r-008055-4-0093.fits
    fi
    if [[ ! -f frame-r-004800-4-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0083.fits.bz2 > frame-r-004800-4-0083.fits
    fi
    if [[ ! -f frame-r-004829-4-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0102.fits.bz2 > frame-r-004829-4-0102.fits
    fi
    if [[ ! -f frame-r-008055-3-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0092.fits.bz2 > frame-r-008055-3-0092.fits
    fi
    if [[ ! -f frame-r-008055-3-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0093.fits.bz2 > frame-r-008055-3-0093.fits
    fi
    if [[ ! -f frame-r-008111-4-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0196.fits.bz2 > frame-r-008111-4-0196.fits
    fi
    if [[ ! -f frame-r-008111-3-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0195.fits.bz2 > frame-r-008111-3-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0150.fits.bz2 > frame-r-004829-3-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0196.fits.bz2 > frame-r-008111-3-0196.fits
    fi
    if [[ ! -f frame-r-008111-3-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0197.fits.bz2 > frame-r-008111-3-0197.fits
    fi
    if [[ ! -f frame-r-008112-2-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0057.fits.bz2 > frame-r-008112-2-0057.fits
    fi
    if [[ ! -f frame-r-008112-3-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0055.fits.bz2 > frame-r-008112-3-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0144.fits.bz2 > frame-r-004829-3-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0196.fits.bz2 > frame-r-008111-1-0196.fits
    fi
    if [[ ! -f frame-r-008111-1-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0197.fits.bz2 > frame-r-008111-1-0197.fits
    fi
    if [[ ! -f frame-r-008111-2-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0195.fits.bz2 > frame-r-008111-2-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0147.fits.bz2 > frame-r-004829-3-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0057.fits.bz2 > frame-r-008112-1-0057.fits
    fi
    if [[ ! -f frame-r-008112-1-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0058.fits.bz2 > frame-r-008112-1-0058.fits
    fi
    if [[ ! -f frame-r-008105-5-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0071.fits.bz2 > frame-r-008105-5-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0140.fits.bz2 > frame-r-004829-3-0140.fits
    fi
    if [[ ! -f frame-r-008105-5-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0072.fits.bz2 > frame-r-008105-5-0072.fits
    fi
    if [[ ! -f frame-r-008105-6-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0071.fits.bz2 > frame-r-008105-6-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0143.fits.bz2 > frame-r-004829-3-0143.fits
    fi
    if [[ ! -f frame-r-004829-3-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0142.fits.bz2 > frame-r-004829-3-0142.fits
    fi
    if [[ ! -f frame-r-008105-6-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0073.fits.bz2 > frame-r-008105-6-0073.fits
    fi
    if [[ ! -f frame-r-008116-5-0346.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0346.fits.bz2 > frame-r-008116-5-0346.fits
    fi
    if [[ ! -f frame-r-008116-5-0348.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0348.fits.bz2 > frame-r-008116-5-0348.fits
    fi
    if [[ ! -f frame-r-008116-6-0348.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0348.fits.bz2 > frame-r-008116-6-0348.fits
    fi
    if [[ ! -f frame-r-008105-4-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0071.fits.bz2 > frame-r-008105-4-0071.fits
    fi
    if [[ ! -f frame-r-004829-3-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0138.fits.bz2 > frame-r-004829-3-0138.fits
    fi
    if [[ ! -f frame-r-004829-3-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0137.fits.bz2 > frame-r-004829-3-0137.fits
    fi
    if [[ ! -f frame-r-004800-2-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0118.fits.bz2 > frame-r-004800-2-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0073.fits.bz2 > frame-r-008105-4-0073.fits
    fi
    if [[ ! -f frame-r-004829-3-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0133.fits.bz2 > frame-r-004829-3-0133.fits
    fi
    if [[ ! -f frame-r-004829-3-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0132.fits.bz2 > frame-r-004829-3-0132.fits
    fi
    if [[ ! -f frame-r-004829-3-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0131.fits.bz2 > frame-r-004829-3-0131.fits
    fi
    if [[ ! -f frame-r-004800-2-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0113.fits.bz2 > frame-r-004800-2-0113.fits
    fi
    if [[ ! -f frame-r-004800-2-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0115.fits.bz2 > frame-r-004800-2-0115.fits
    fi
    if [[ ! -f frame-r-008116-3-0347.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0347.fits.bz2 > frame-r-008116-3-0347.fits
    fi
    if [[ ! -f frame-r-004829-3-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0130.fits.bz2 > frame-r-004829-3-0130.fits
    fi
    if [[ ! -f frame-r-004829-3-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0127.fits.bz2 > frame-r-004829-3-0127.fits
    fi
    if [[ ! -f frame-r-004829-3-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0123.fits.bz2 > frame-r-004829-3-0123.fits
    fi
    if [[ ! -f frame-r-004829-3-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0125.fits.bz2 > frame-r-004829-3-0125.fits
    fi
    if [[ ! -f frame-r-004829-3-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0124.fits.bz2 > frame-r-004829-3-0124.fits
    fi
    if [[ ! -f frame-r-004800-2-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0104.fits.bz2 > frame-r-004800-2-0104.fits
    fi
    if [[ ! -f frame-r-004800-2-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0106.fits.bz2 > frame-r-004800-2-0106.fits
    fi
    if [[ ! -f frame-r-004800-2-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0107.fits.bz2 > frame-r-004800-2-0107.fits
    fi
    if [[ ! -f frame-r-004829-3-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0121.fits.bz2 > frame-r-004829-3-0121.fits
    fi
    if [[ ! -f frame-r-004800-2-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0102.fits.bz2 > frame-r-004800-2-0102.fits
    fi
    if [[ ! -f frame-r-004829-3-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0120.fits.bz2 > frame-r-004829-3-0120.fits
    fi
    if [[ ! -f frame-r-004829-3-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0119.fits.bz2 > frame-r-004829-3-0119.fits
    fi
    if [[ ! -f frame-r-008056-5-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0066.fits.bz2 > frame-r-008056-5-0066.fits
    fi
    if [[ ! -f frame-r-004829-3-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0115.fits.bz2 > frame-r-004829-3-0115.fits
    fi
    if [[ ! -f frame-r-004829-3-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0116.fits.bz2 > frame-r-004829-3-0116.fits
    fi
    if [[ ! -f frame-r-004800-2-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0097.fits.bz2 > frame-r-004800-2-0097.fits
    fi
    if [[ ! -f frame-r-004800-2-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0096.fits.bz2 > frame-r-004800-2-0096.fits
    fi
    if [[ ! -f frame-r-004800-2-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0099.fits.bz2 > frame-r-004800-2-0099.fits
    fi
    if [[ ! -f frame-r-008056-3-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0067.fits.bz2 > frame-r-008056-3-0067.fits
    fi
    if [[ ! -f frame-r-004829-3-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0112.fits.bz2 > frame-r-004829-3-0112.fits
    fi
    if [[ ! -f frame-r-004829-3-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0114.fits.bz2 > frame-r-004829-3-0114.fits
    fi
    if [[ ! -f frame-r-004800-2-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0093.fits.bz2 > frame-r-004800-2-0093.fits
    fi
    if [[ ! -f frame-r-004800-2-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0094.fits.bz2 > frame-r-004800-2-0094.fits
    fi
    if [[ ! -f frame-r-004829-2-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0114.fits.bz2 > frame-r-004829-2-0114.fits
    fi
    if [[ ! -f frame-r-008056-1-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0065.fits.bz2 > frame-r-008056-1-0065.fits
    fi
    if [[ ! -f frame-r-008056-1-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0066.fits.bz2 > frame-r-008056-1-0066.fits
    fi
    if [[ ! -f frame-r-004829-2-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0111.fits.bz2 > frame-r-004829-2-0111.fits
    fi
    if [[ ! -f frame-r-004843-5-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0061.fits.bz2 > frame-r-004843-5-0061.fits
    fi
    if [[ ! -f frame-r-004843-5-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0062.fits.bz2 > frame-r-004843-5-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0107.fits.bz2 > frame-r-004829-2-0107.fits
    fi
    if [[ ! -f frame-r-004843-5-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0063.fits.bz2 > frame-r-004843-5-0063.fits
    fi
    if [[ ! -f frame-r-004843-6-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0060.fits.bz2 > frame-r-004843-6-0060.fits
    fi
    if [[ ! -f frame-r-004843-6-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0061.fits.bz2 > frame-r-004843-6-0061.fits
    fi
    if [[ ! -f frame-r-004843-6-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0063.fits.bz2 > frame-r-004843-6-0063.fits
    fi
    if [[ ! -f frame-r-004829-2-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0108.fits.bz2 > frame-r-004829-2-0108.fits
    fi
    if [[ ! -f frame-r-004829-3-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0111.fits.bz2 > frame-r-004829-3-0111.fits
    fi
    if [[ ! -f frame-r-004843-4-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0060.fits.bz2 > frame-r-004843-4-0060.fits
    fi
    if [[ ! -f frame-r-004843-4-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0061.fits.bz2 > frame-r-004843-4-0061.fits
    fi
    if [[ ! -f frame-r-004843-4-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0063.fits.bz2 > frame-r-004843-4-0063.fits
    fi
    if [[ ! -f frame-r-008055-4-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0095.fits.bz2 > frame-r-008055-4-0095.fits
    fi
    if [[ ! -f frame-r-008055-4-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0096.fits.bz2 > frame-r-008055-4-0096.fits
    fi
    if [[ ! -f frame-r-004829-2-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0105.fits.bz2 > frame-r-004829-2-0105.fits
    fi
    if [[ ! -f frame-r-008055-3-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0096.fits.bz2 > frame-r-008055-3-0096.fits
    fi
    if [[ ! -f frame-r-004829-2-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0152.fits.bz2 > frame-r-004829-2-0152.fits
    fi
    if [[ ! -f frame-r-004829-2-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0149.fits.bz2 > frame-r-004829-2-0149.fits
    fi
    if [[ ! -f frame-r-008111-3-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0199.fits.bz2 > frame-r-008111-3-0199.fits
    fi
    if [[ ! -f frame-r-008111-3-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0200.fits.bz2 > frame-r-008111-3-0200.fits
    fi
    if [[ ! -f frame-r-004829-1-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0150.fits.bz2 > frame-r-004829-1-0150.fits
    fi
    if [[ ! -f frame-r-008112-2-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0061.fits.bz2 > frame-r-008112-2-0061.fits
    fi
    if [[ ! -f frame-r-004829-1-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0148.fits.bz2 > frame-r-004829-1-0148.fits
    fi
    if [[ ! -f frame-r-008112-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0059.fits.bz2 > frame-r-008112-3-0059.fits
    fi
    if [[ ! -f frame-r-008112-3-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0060.fits.bz2 > frame-r-008112-3-0060.fits
    fi
    if [[ ! -f frame-r-008112-3-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0061.fits.bz2 > frame-r-008112-3-0061.fits
    fi
    if [[ ! -f frame-r-004829-1-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0151.fits.bz2 > frame-r-004829-1-0151.fits
    fi
    if [[ ! -f frame-r-004829-2-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0144.fits.bz2 > frame-r-004829-2-0144.fits
    fi
    if [[ ! -f frame-r-008111-1-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0199.fits.bz2 > frame-r-008111-1-0199.fits
    fi
    if [[ ! -f frame-r-004829-1-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0145.fits.bz2 > frame-r-004829-1-0145.fits
    fi
    if [[ ! -f frame-r-004829-1-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0144.fits.bz2 > frame-r-004829-1-0144.fits
    fi
    if [[ ! -f frame-r-004829-2-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0146.fits.bz2 > frame-r-004829-2-0146.fits
    fi
    if [[ ! -f frame-r-004829-2-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0147.fits.bz2 > frame-r-004829-2-0147.fits
    fi
    if [[ ! -f frame-r-008111-2-0199.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0199.fits.bz2 > frame-r-008111-2-0199.fits
    fi
    if [[ ! -f frame-r-004829-1-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0146.fits.bz2 > frame-r-004829-1-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0200.fits.bz2 > frame-r-008111-2-0200.fits
    fi
    if [[ ! -f frame-r-008112-1-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0059.fits.bz2 > frame-r-008112-1-0059.fits
    fi
    if [[ ! -f frame-r-008112-1-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0061.fits.bz2 > frame-r-008112-1-0061.fits
    fi
    if [[ ! -f frame-r-004829-2-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0140.fits.bz2 > frame-r-004829-2-0140.fits
    fi
    if [[ ! -f frame-r-004829-2-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0141.fits.bz2 > frame-r-004829-2-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0075.fits.bz2 > frame-r-008105-5-0075.fits
    fi
    if [[ ! -f frame-r-004829-1-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0140.fits.bz2 > frame-r-004829-1-0140.fits
    fi
    if [[ ! -f frame-r-004829-1-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0141.fits.bz2 > frame-r-004829-1-0141.fits
    fi
    if [[ ! -f frame-r-008105-6-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0074.fits.bz2 > frame-r-008105-6-0074.fits
    fi
    if [[ ! -f frame-r-004829-2-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0142.fits.bz2 > frame-r-004829-2-0142.fits
    fi
    if [[ ! -f frame-r-004829-2-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0139.fits.bz2 > frame-r-004829-2-0139.fits
    fi
    if [[ ! -f frame-r-008116-6-0350.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0350.fits.bz2 > frame-r-008116-6-0350.fits
    fi
    if [[ ! -f frame-r-008116-6-0351.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0351.fits.bz2 > frame-r-008116-6-0351.fits
    fi
    if [[ ! -f frame-r-008105-4-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0075.fits.bz2 > frame-r-008105-4-0075.fits
    fi
    if [[ ! -f frame-r-008105-4-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0076.fits.bz2 > frame-r-008105-4-0076.fits
    fi
    if [[ ! -f frame-r-004829-1-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0138.fits.bz2 > frame-r-004829-1-0138.fits
    fi
    if [[ ! -f frame-r-008116-4-0350.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0350.fits.bz2 > frame-r-008116-4-0350.fits
    fi
    if [[ ! -f frame-r-008116-4-0352.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0352.fits.bz2 > frame-r-008116-4-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0131.fits.bz2 > frame-r-004829-2-0131.fits
    fi
    if [[ ! -f frame-r-004800-1-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0113.fits.bz2 > frame-r-004800-1-0113.fits
    fi
    if [[ ! -f frame-r-004829-1-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0133.fits.bz2 > frame-r-004829-1-0133.fits
    fi
    if [[ ! -f frame-r-004829-2-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0134.fits.bz2 > frame-r-004829-2-0134.fits
    fi
    if [[ ! -f frame-r-004800-1-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0116.fits.bz2 > frame-r-004800-1-0116.fits
    fi
    if [[ ! -f frame-r-004829-1-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0134.fits.bz2 > frame-r-004829-1-0134.fits
    fi
    if [[ ! -f frame-r-004800-1-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0114.fits.bz2 > frame-r-004800-1-0114.fits
    fi
    if [[ ! -f frame-r-008116-3-0351.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0351.fits.bz2 > frame-r-008116-3-0351.fits
    fi
    if [[ ! -f frame-r-004829-2-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0130.fits.bz2 > frame-r-004829-2-0130.fits
    fi
    if [[ ! -f frame-r-004800-1-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0111.fits.bz2 > frame-r-004800-1-0111.fits
    fi
    if [[ ! -f frame-r-004800-1-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0110.fits.bz2 > frame-r-004800-1-0110.fits
    fi
    if [[ ! -f frame-r-004800-1-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0109.fits.bz2 > frame-r-004800-1-0109.fits
    fi
    if [[ ! -f frame-r-004829-1-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0128.fits.bz2 > frame-r-004829-1-0128.fits
    fi
    if [[ ! -f frame-r-004829-1-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0129.fits.bz2 > frame-r-004829-1-0129.fits
    fi
    if [[ ! -f frame-r-004800-1-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0108.fits.bz2 > frame-r-004800-1-0108.fits
    fi
    if [[ ! -f frame-r-008116-2-0350.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0350.fits.bz2 > frame-r-008116-2-0350.fits
    fi
    if [[ ! -f frame-r-004800-1-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0104.fits.bz2 > frame-r-004800-1-0104.fits
    fi
    if [[ ! -f frame-r-004800-1-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0106.fits.bz2 > frame-r-004800-1-0106.fits
    fi
    if [[ ! -f frame-r-004829-1-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0125.fits.bz2 > frame-r-004829-1-0125.fits
    fi
    if [[ ! -f frame-r-004800-1-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0107.fits.bz2 > frame-r-004800-1-0107.fits
    fi
    if [[ ! -f frame-r-004829-1-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0126.fits.bz2 > frame-r-004829-1-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0071.fits.bz2 > frame-r-008056-5-0071.fits
    fi
    if [[ ! -f frame-r-004829-2-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0122.fits.bz2 > frame-r-004829-2-0122.fits
    fi
    if [[ ! -f frame-r-004800-1-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0102.fits.bz2 > frame-r-004800-1-0102.fits
    fi
    if [[ ! -f frame-r-004829-1-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0121.fits.bz2 > frame-r-004829-1-0121.fits
    fi
    if [[ ! -f frame-r-004829-1-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0116.fits.bz2 > frame-r-004829-1-0116.fits
    fi
    if [[ ! -f frame-r-004829-1-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0115.fits.bz2 > frame-r-004829-1-0115.fits
    fi
    if [[ ! -f frame-r-004829-2-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0118.fits.bz2 > frame-r-004829-2-0118.fits
    fi
    if [[ ! -f frame-r-004800-1-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0099.fits.bz2 > frame-r-004800-1-0099.fits
    fi
    if [[ ! -f frame-r-004829-1-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0119.fits.bz2 > frame-r-004829-1-0119.fits
    fi
    if [[ ! -f frame-r-008056-3-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0069.fits.bz2 > frame-r-008056-3-0069.fits
    fi
    if [[ ! -f frame-r-008056-3-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0070.fits.bz2 > frame-r-008056-3-0070.fits
    fi
    if [[ ! -f frame-r-004829-1-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0112.fits.bz2 > frame-r-004829-1-0112.fits
    fi
    if [[ ! -f frame-r-004829-1-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0114.fits.bz2 > frame-r-004829-1-0114.fits
    fi
    if [[ ! -f frame-r-004829-1-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0113.fits.bz2 > frame-r-004829-1-0113.fits
    fi
    if [[ ! -f frame-r-008056-1-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0069.fits.bz2 > frame-r-008056-1-0069.fits
    fi
    if [[ ! -f frame-r-008056-2-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0069.fits.bz2 > frame-r-008056-2-0069.fits
    fi
    if [[ ! -f frame-r-008056-2-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0071.fits.bz2 > frame-r-008056-2-0071.fits
    fi
    if [[ ! -f frame-r-004843-5-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0065.fits.bz2 > frame-r-004843-5-0065.fits
    fi
    if [[ ! -f frame-r-004843-5-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0066.fits.bz2 > frame-r-004843-5-0066.fits
    fi
    if [[ ! -f frame-r-004843-6-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0066.fits.bz2 > frame-r-004843-6-0066.fits
    fi
    if [[ ! -f frame-r-004843-6-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0067.fits.bz2 > frame-r-004843-6-0067.fits
    fi
    if [[ ! -f frame-r-008055-5-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0098.fits.bz2 > frame-r-008055-5-0098.fits
    fi
    if [[ ! -f frame-r-008055-5-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0100.fits.bz2 > frame-r-008055-5-0100.fits
    fi
    if [[ ! -f frame-r-004800-1-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0092.fits.bz2 > frame-r-004800-1-0092.fits
    fi
    if [[ ! -f frame-r-004829-1-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0111.fits.bz2 > frame-r-004829-1-0111.fits
    fi
    if [[ ! -f frame-r-004843-4-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0066.fits.bz2 > frame-r-004843-4-0066.fits
    fi
    if [[ ! -f frame-r-008055-4-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0098.fits.bz2 > frame-r-008055-4-0098.fits
    fi
    if [[ ! -f frame-r-008055-4-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0100.fits.bz2 > frame-r-008055-4-0100.fits
    fi
    if [[ ! -f frame-r-007941-3-0029.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/3/frame-r-007941-3-0029.fits.bz2 > frame-r-007941-3-0029.fits
    fi
    if [[ ! -f frame-r-007941-3-0030.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/3/frame-r-007941-3-0030.fits.bz2 > frame-r-007941-3-0030.fits
    fi
    if [[ ! -f frame-r-007941-3-0031.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/3/frame-r-007941-3-0031.fits.bz2 > frame-r-007941-3-0031.fits
    fi
    if [[ ! -f frame-r-008112-2-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0063.fits.bz2 > frame-r-008112-2-0063.fits
    fi
    if [[ ! -f frame-r-008112-3-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0062.fits.bz2 > frame-r-008112-3-0062.fits
    fi
    if [[ ! -f frame-r-007941-1-0029.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0029.fits.bz2 > frame-r-007941-1-0029.fits
    fi
    if [[ ! -f frame-r-007941-1-0030.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0030.fits.bz2 > frame-r-007941-1-0030.fits
    fi
    if [[ ! -f frame-r-007941-1-0032.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0032.fits.bz2 > frame-r-007941-1-0032.fits
    fi
    if [[ ! -f frame-r-007941-2-0030.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0030.fits.bz2 > frame-r-007941-2-0030.fits
    fi
    if [[ ! -f frame-r-007941-2-0031.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0031.fits.bz2 > frame-r-007941-2-0031.fits
    fi
    if [[ ! -f frame-r-008105-6-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0079.fits.bz2 > frame-r-008105-6-0079.fits
    fi
    if [[ ! -f frame-r-008112-1-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0063.fits.bz2 > frame-r-008112-1-0063.fits
    fi
    if [[ ! -f frame-r-008105-5-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0081.fits.bz2 > frame-r-008105-5-0081.fits
    fi
    if [[ ! -f frame-r-008116-6-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0353.fits.bz2 > frame-r-008116-6-0353.fits
    fi
    if [[ ! -f frame-r-008105-4-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0078.fits.bz2 > frame-r-008105-4-0078.fits
    fi
    if [[ ! -f frame-r-008116-4-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0353.fits.bz2 > frame-r-008116-4-0353.fits
    fi
    if [[ ! -f frame-r-008116-4-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0354.fits.bz2 > frame-r-008116-4-0354.fits
    fi
    if [[ ! -f frame-r-008116-4-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0355.fits.bz2 > frame-r-008116-4-0355.fits
    fi
    if [[ ! -f frame-r-008105-2-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0079.fits.bz2 > frame-r-008105-2-0079.fits
    fi
    if [[ ! -f frame-r-008105-3-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0080.fits.bz2 > frame-r-008105-3-0080.fits
    fi
    if [[ ! -f frame-r-008105-3-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0081.fits.bz2 > frame-r-008105-3-0081.fits
    fi
    if [[ ! -f frame-r-008116-3-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0353.fits.bz2 > frame-r-008116-3-0353.fits
    fi
    if [[ ! -f frame-r-008116-3-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0355.fits.bz2 > frame-r-008116-3-0355.fits
    fi
    if [[ ! -f frame-r-008116-3-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0356.fits.bz2 > frame-r-008116-3-0356.fits
    fi
    if [[ ! -f frame-r-008105-1-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0078.fits.bz2 > frame-r-008105-1-0078.fits
    fi
    if [[ ! -f frame-r-008105-1-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0081.fits.bz2 > frame-r-008105-1-0081.fits
    fi
    if [[ ! -f frame-r-008116-1-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0354.fits.bz2 > frame-r-008116-1-0354.fits
    fi
    if [[ ! -f frame-r-008116-1-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0355.fits.bz2 > frame-r-008116-1-0355.fits
    fi
    if [[ ! -f frame-r-008116-1-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0356.fits.bz2 > frame-r-008116-1-0356.fits
    fi
    if [[ ! -f frame-r-008116-2-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0353.fits.bz2 > frame-r-008116-2-0353.fits
    fi
    if [[ ! -f frame-r-008116-2-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0354.fits.bz2 > frame-r-008116-2-0354.fits
    fi
    if [[ ! -f frame-r-008116-2-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0355.fits.bz2 > frame-r-008116-2-0355.fits
    fi
    if [[ ! -f frame-r-008116-2-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0356.fits.bz2 > frame-r-008116-2-0356.fits
    fi
    if [[ ! -f frame-r-007757-5-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0152.fits.bz2 > frame-r-007757-5-0152.fits
    fi
    if [[ ! -f frame-r-007937-6-0175.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0175.fits.bz2 > frame-r-007937-6-0175.fits
    fi
    if [[ ! -f frame-r-008056-5-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0072.fits.bz2 > frame-r-008056-5-0072.fits
    fi
    if [[ ! -f frame-r-008056-5-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0073.fits.bz2 > frame-r-008056-5-0073.fits
    fi
    if [[ ! -f frame-r-008056-5-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0074.fits.bz2 > frame-r-008056-5-0074.fits
    fi
    if [[ ! -f frame-r-008056-6-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0072.fits.bz2 > frame-r-008056-6-0072.fits
    fi
    if [[ ! -f frame-r-008056-6-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0073.fits.bz2 > frame-r-008056-6-0073.fits
    fi
    if [[ ! -f frame-r-008056-6-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0075.fits.bz2 > frame-r-008056-6-0075.fits
    fi
    if [[ ! -f frame-r-007757-4-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0150.fits.bz2 > frame-r-007757-4-0150.fits
    fi
    if [[ ! -f frame-r-007757-4-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0149.fits.bz2 > frame-r-007757-4-0149.fits
    fi
    if [[ ! -f frame-r-007757-4-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0151.fits.bz2 > frame-r-007757-4-0151.fits
    fi
    if [[ ! -f frame-r-008056-4-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0073.fits.bz2 > frame-r-008056-4-0073.fits
    fi
    if [[ ! -f frame-r-008056-4-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0074.fits.bz2 > frame-r-008056-4-0074.fits
    fi
    if [[ ! -f frame-r-008056-4-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0075.fits.bz2 > frame-r-008056-4-0075.fits
    fi
    if [[ ! -f frame-r-007757-2-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0150.fits.bz2 > frame-r-007757-2-0150.fits
    fi
    if [[ ! -f frame-r-007757-2-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0149.fits.bz2 > frame-r-007757-2-0149.fits
    fi
    if [[ ! -f frame-r-007757-2-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0151.fits.bz2 > frame-r-007757-2-0151.fits
    fi
    if [[ ! -f frame-r-007757-3-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0151.fits.bz2 > frame-r-007757-3-0151.fits
    fi
    if [[ ! -f frame-r-007757-3-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0152.fits.bz2 > frame-r-007757-3-0152.fits
    fi
    if [[ ! -f frame-r-007937-1-0176.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0176.fits.bz2 > frame-r-007937-1-0176.fits
    fi
    if [[ ! -f frame-r-008056-1-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0075.fits.bz2 > frame-r-008056-1-0075.fits
    fi
    if [[ ! -f frame-r-008056-2-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0072.fits.bz2 > frame-r-008056-2-0072.fits
    fi
    if [[ ! -f frame-r-008056-2-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0073.fits.bz2 > frame-r-008056-2-0073.fits
    fi
    if [[ ! -f frame-r-008056-2-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0075.fits.bz2 > frame-r-008056-2-0075.fits
    fi
    if [[ ! -f frame-r-004843-5-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0068.fits.bz2 > frame-r-004843-5-0068.fits
    fi
    if [[ ! -f frame-r-004843-5-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0070.fits.bz2 > frame-r-004843-5-0070.fits
    fi
    if [[ ! -f frame-r-004843-5-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0071.fits.bz2 > frame-r-004843-5-0071.fits
    fi
    if [[ ! -f frame-r-004843-6-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0070.fits.bz2 > frame-r-004843-6-0070.fits
    fi
    if [[ ! -f frame-r-004843-6-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0071.fits.bz2 > frame-r-004843-6-0071.fits
    fi
    if [[ ! -f frame-r-008055-5-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0101.fits.bz2 > frame-r-008055-5-0101.fits
    fi
    if [[ ! -f frame-r-008055-5-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0104.fits.bz2 > frame-r-008055-5-0104.fits
    fi
    if [[ ! -f frame-r-004843-4-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0067.fits.bz2 > frame-r-004843-4-0067.fits
    fi
    if [[ ! -f frame-r-004843-4-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0068.fits.bz2 > frame-r-004843-4-0068.fits
    fi
    if [[ ! -f frame-r-008055-4-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0104.fits.bz2 > frame-r-008055-4-0104.fits
    fi
    if [[ ! -f frame-r-008112-2-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0066.fits.bz2 > frame-r-008112-2-0066.fits
    fi
    if [[ ! -f frame-r-008112-2-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0067.fits.bz2 > frame-r-008112-2-0067.fits
    fi
    if [[ ! -f frame-r-007941-1-0033.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0033.fits.bz2 > frame-r-007941-1-0033.fits
    fi
    if [[ ! -f frame-r-007941-1-0035.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0035.fits.bz2 > frame-r-007941-1-0035.fits
    fi
    if [[ ! -f frame-r-007941-1-0036.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0036.fits.bz2 > frame-r-007941-1-0036.fits
    fi
    if [[ ! -f frame-r-007941-2-0034.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0034.fits.bz2 > frame-r-007941-2-0034.fits
    fi
    if [[ ! -f frame-r-007941-2-0035.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0035.fits.bz2 > frame-r-007941-2-0035.fits
    fi
    if [[ ! -f frame-r-007941-2-0036.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0036.fits.bz2 > frame-r-007941-2-0036.fits
    fi
    if [[ ! -f frame-r-008105-6-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0082.fits.bz2 > frame-r-008105-6-0082.fits
    fi
    if [[ ! -f frame-r-008105-6-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0085.fits.bz2 > frame-r-008105-6-0085.fits
    fi
    if [[ ! -f frame-r-008105-5-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0083.fits.bz2 > frame-r-008105-5-0083.fits
    fi
    if [[ ! -f frame-r-008105-5-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0084.fits.bz2 > frame-r-008105-5-0084.fits
    fi
    if [[ ! -f frame-r-008116-5-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0357.fits.bz2 > frame-r-008116-5-0357.fits
    fi
    if [[ ! -f frame-r-008116-5-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0358.fits.bz2 > frame-r-008116-5-0358.fits
    fi
    if [[ ! -f frame-r-008116-5-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0360.fits.bz2 > frame-r-008116-5-0360.fits
    fi
    if [[ ! -f frame-r-008116-6-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0358.fits.bz2 > frame-r-008116-6-0358.fits
    fi
    if [[ ! -f frame-r-008116-6-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0359.fits.bz2 > frame-r-008116-6-0359.fits
    fi
    if [[ ! -f frame-r-008105-4-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0083.fits.bz2 > frame-r-008105-4-0083.fits
    fi
    if [[ ! -f frame-r-008105-4-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0084.fits.bz2 > frame-r-008105-4-0084.fits
    fi
    if [[ ! -f frame-r-008116-4-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0357.fits.bz2 > frame-r-008116-4-0357.fits
    fi
    if [[ ! -f frame-r-008116-4-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0359.fits.bz2 > frame-r-008116-4-0359.fits
    fi
    if [[ ! -f frame-r-008105-2-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0082.fits.bz2 > frame-r-008105-2-0082.fits
    fi
    if [[ ! -f frame-r-008105-2-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0085.fits.bz2 > frame-r-008105-2-0085.fits
    fi
    if [[ ! -f frame-r-008105-3-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0082.fits.bz2 > frame-r-008105-3-0082.fits
    fi
    if [[ ! -f frame-r-008105-3-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0083.fits.bz2 > frame-r-008105-3-0083.fits
    fi
    if [[ ! -f frame-r-008105-3-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0084.fits.bz2 > frame-r-008105-3-0084.fits
    fi
    if [[ ! -f frame-r-008105-3-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0085.fits.bz2 > frame-r-008105-3-0085.fits
    fi
    if [[ ! -f frame-r-008105-1-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0084.fits.bz2 > frame-r-008105-1-0084.fits
    fi
    if [[ ! -f frame-r-008116-1-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0359.fits.bz2 > frame-r-008116-1-0359.fits
    fi
    if [[ ! -f frame-r-008116-2-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0357.fits.bz2 > frame-r-008116-2-0357.fits
    fi
    if [[ ! -f frame-r-008116-2-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0358.fits.bz2 > frame-r-008116-2-0358.fits
    fi
    if [[ ! -f frame-r-008116-2-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0359.fits.bz2 > frame-r-008116-2-0359.fits
    fi
    if [[ ! -f frame-r-007757-5-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0153.fits.bz2 > frame-r-007757-5-0153.fits
    fi
    if [[ ! -f frame-r-007757-5-0155.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0155.fits.bz2 > frame-r-007757-5-0155.fits
    fi
    if [[ ! -f frame-r-007757-5-0156.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0156.fits.bz2 > frame-r-007757-5-0156.fits
    fi
    if [[ ! -f frame-r-007937-6-0179.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0179.fits.bz2 > frame-r-007937-6-0179.fits
    fi
    if [[ ! -f frame-r-007937-6-0180.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0180.fits.bz2 > frame-r-007937-6-0180.fits
    fi
    if [[ ! -f frame-r-008056-5-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0077.fits.bz2 > frame-r-008056-5-0077.fits
    fi
    if [[ ! -f frame-r-007757-4-0154.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0154.fits.bz2 > frame-r-007757-4-0154.fits
    fi
    if [[ ! -f frame-r-008056-4-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0076.fits.bz2 > frame-r-008056-4-0076.fits
    fi
    if [[ ! -f frame-r-008056-4-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0078.fits.bz2 > frame-r-008056-4-0078.fits
    fi
    if [[ ! -f frame-r-007757-2-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0153.fits.bz2 > frame-r-007757-2-0153.fits
    fi
    if [[ ! -f frame-r-007757-2-0155.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0155.fits.bz2 > frame-r-007757-2-0155.fits
    fi
    if [[ ! -f frame-r-007757-3-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0153.fits.bz2 > frame-r-007757-3-0153.fits
    fi
    if [[ ! -f frame-r-007757-3-0156.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0156.fits.bz2 > frame-r-007757-3-0156.fits
    fi
    if [[ ! -f frame-r-008056-3-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0077.fits.bz2 > frame-r-008056-3-0077.fits
    fi
    if [[ ! -f frame-r-008056-1-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0076.fits.bz2 > frame-r-008056-1-0076.fits
    fi
    if [[ ! -f frame-r-008056-1-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0078.fits.bz2 > frame-r-008056-1-0078.fits
    fi
    if [[ ! -f frame-r-008056-1-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0079.fits.bz2 > frame-r-008056-1-0079.fits
    fi
    if [[ ! -f frame-r-008056-2-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0076.fits.bz2 > frame-r-008056-2-0076.fits
    fi
    if [[ ! -f frame-r-008056-2-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0078.fits.bz2 > frame-r-008056-2-0078.fits
    fi
    if [[ ! -f frame-r-008056-2-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0079.fits.bz2 > frame-r-008056-2-0079.fits
    fi
    if [[ ! -f frame-r-004843-5-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0072.fits.bz2 > frame-r-004843-5-0072.fits
    fi
    if [[ ! -f frame-r-004843-6-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0073.fits.bz2 > frame-r-004843-6-0073.fits
    fi
    if [[ ! -f frame-r-008055-5-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0107.fits.bz2 > frame-r-008055-5-0107.fits
    fi
    if [[ ! -f frame-r-008055-6-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0107.fits.bz2 > frame-r-008055-6-0107.fits
    fi
    if [[ ! -f frame-r-008055-6-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0108.fits.bz2 > frame-r-008055-6-0108.fits
    fi
    if [[ ! -f frame-r-007941-1-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0039.fits.bz2 > frame-r-007941-1-0039.fits
    fi
    if [[ ! -f frame-r-008105-6-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0086.fits.bz2 > frame-r-008105-6-0086.fits
    fi
    if [[ ! -f frame-r-008105-6-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0087.fits.bz2 > frame-r-008105-6-0087.fits
    fi
    if [[ ! -f frame-r-008105-6-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0088.fits.bz2 > frame-r-008105-6-0088.fits
    fi
    if [[ ! -f frame-r-008112-1-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0071.fits.bz2 > frame-r-008112-1-0071.fits
    fi
    if [[ ! -f frame-r-008105-5-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0087.fits.bz2 > frame-r-008105-5-0087.fits
    fi
    if [[ ! -f frame-r-008116-5-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0364.fits.bz2 > frame-r-008116-5-0364.fits
    fi
    if [[ ! -f frame-r-008116-6-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0361.fits.bz2 > frame-r-008116-6-0361.fits
    fi
    if [[ ! -f frame-r-008116-6-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0364.fits.bz2 > frame-r-008116-6-0364.fits
    fi
    if [[ ! -f frame-r-008105-4-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0088.fits.bz2 > frame-r-008105-4-0088.fits
    fi
    if [[ ! -f frame-r-008116-4-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0361.fits.bz2 > frame-r-008116-4-0361.fits
    fi
    if [[ ! -f frame-r-008116-4-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0362.fits.bz2 > frame-r-008116-4-0362.fits
    fi
    if [[ ! -f frame-r-008116-4-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0363.fits.bz2 > frame-r-008116-4-0363.fits
    fi
    if [[ ! -f frame-r-008116-4-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0364.fits.bz2 > frame-r-008116-4-0364.fits
    fi
    if [[ ! -f frame-r-008105-2-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0086.fits.bz2 > frame-r-008105-2-0086.fits
    fi
    if [[ ! -f frame-r-008105-2-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0087.fits.bz2 > frame-r-008105-2-0087.fits
    fi
    if [[ ! -f frame-r-008105-2-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0088.fits.bz2 > frame-r-008105-2-0088.fits
    fi
    if [[ ! -f frame-r-008105-3-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0089.fits.bz2 > frame-r-008105-3-0089.fits
    fi
    if [[ ! -f frame-r-008116-3-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0361.fits.bz2 > frame-r-008116-3-0361.fits
    fi
    if [[ ! -f frame-r-008116-3-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0363.fits.bz2 > frame-r-008116-3-0363.fits
    fi
    if [[ ! -f frame-r-008116-3-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0364.fits.bz2 > frame-r-008116-3-0364.fits
    fi
    if [[ ! -f frame-r-008105-1-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0087.fits.bz2 > frame-r-008105-1-0087.fits
    fi
    if [[ ! -f frame-r-008105-1-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0088.fits.bz2 > frame-r-008105-1-0088.fits
    fi
    if [[ ! -f frame-r-008105-1-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0089.fits.bz2 > frame-r-008105-1-0089.fits
    fi
    if [[ ! -f frame-r-008116-1-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0361.fits.bz2 > frame-r-008116-1-0361.fits
    fi
    if [[ ! -f frame-r-008116-1-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0362.fits.bz2 > frame-r-008116-1-0362.fits
    fi
    if [[ ! -f frame-r-008116-1-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0364.fits.bz2 > frame-r-008116-1-0364.fits
    fi
    if [[ ! -f frame-r-007757-5-0158.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0158.fits.bz2 > frame-r-007757-5-0158.fits
    fi
    if [[ ! -f frame-r-007757-5-0160.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0160.fits.bz2 > frame-r-007757-5-0160.fits
    fi
    if [[ ! -f frame-r-007937-6-0183.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0183.fits.bz2 > frame-r-007937-6-0183.fits
    fi
    if [[ ! -f frame-r-008056-5-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0080.fits.bz2 > frame-r-008056-5-0080.fits
    fi
    if [[ ! -f frame-r-008056-5-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0081.fits.bz2 > frame-r-008056-5-0081.fits
    fi
    if [[ ! -f frame-r-008056-5-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0082.fits.bz2 > frame-r-008056-5-0082.fits
    fi
    if [[ ! -f frame-r-008056-6-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0080.fits.bz2 > frame-r-008056-6-0080.fits
    fi
    if [[ ! -f frame-r-008056-6-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0083.fits.bz2 > frame-r-008056-6-0083.fits
    fi
    if [[ ! -f frame-r-007757-4-0157.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0157.fits.bz2 > frame-r-007757-4-0157.fits
    fi
    if [[ ! -f frame-r-007757-4-0160.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0160.fits.bz2 > frame-r-007757-4-0160.fits
    fi
    if [[ ! -f frame-r-008056-4-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0080.fits.bz2 > frame-r-008056-4-0080.fits
    fi
    if [[ ! -f frame-r-008056-4-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0081.fits.bz2 > frame-r-008056-4-0081.fits
    fi
    if [[ ! -f frame-r-008056-4-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0082.fits.bz2 > frame-r-008056-4-0082.fits
    fi
    if [[ ! -f frame-r-007757-2-0157.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0157.fits.bz2 > frame-r-007757-2-0157.fits
    fi
    if [[ ! -f frame-r-007757-2-0158.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0158.fits.bz2 > frame-r-007757-2-0158.fits
    fi
    if [[ ! -f frame-r-007757-2-0159.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0159.fits.bz2 > frame-r-007757-2-0159.fits
    fi
    if [[ ! -f frame-r-007757-2-0160.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0160.fits.bz2 > frame-r-007757-2-0160.fits
    fi
    if [[ ! -f frame-r-008056-3-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0082.fits.bz2 > frame-r-008056-3-0082.fits
    fi
    if [[ ! -f frame-r-007937-1-0182.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0182.fits.bz2 > frame-r-007937-1-0182.fits
    fi
    if [[ ! -f frame-r-007937-1-0183.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0183.fits.bz2 > frame-r-007937-1-0183.fits
    fi
    if [[ ! -f frame-r-007937-1-0184.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0184.fits.bz2 > frame-r-007937-1-0184.fits
    fi
    if [[ ! -f frame-r-008056-1-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0080.fits.bz2 > frame-r-008056-1-0080.fits
    fi
    if [[ ! -f frame-r-008056-1-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0082.fits.bz2 > frame-r-008056-1-0082.fits
    fi
    if [[ ! -f frame-r-008056-2-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0082.fits.bz2 > frame-r-008056-2-0082.fits
    fi
    if [[ ! -f frame-r-008055-6-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0109.fits.bz2 > frame-r-008055-6-0109.fits
    fi
    if [[ ! -f frame-r-008055-6-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0110.fits.bz2 > frame-r-008055-6-0110.fits
    fi
    if [[ ! -f frame-r-008116-5-0365.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0365.fits.bz2 > frame-r-008116-5-0365.fits
    fi
    if [[ ! -f frame-r-008105-4-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0091.fits.bz2 > frame-r-008105-4-0091.fits
    fi
    if [[ ! -f frame-r-008116-4-0365.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0365.fits.bz2 > frame-r-008116-4-0365.fits
    fi
    if [[ ! -f frame-r-008105-2-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0091.fits.bz2 > frame-r-008105-2-0091.fits
    fi
    if [[ ! -f frame-r-008105-2-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0092.fits.bz2 > frame-r-008105-2-0092.fits
    fi
    if [[ ! -f frame-r-008105-3-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0090.fits.bz2 > frame-r-008105-3-0090.fits
    fi
    if [[ ! -f frame-r-008105-3-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0091.fits.bz2 > frame-r-008105-3-0091.fits
    fi
    if [[ ! -f frame-r-008105-3-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0092.fits.bz2 > frame-r-008105-3-0092.fits
    fi
    if [[ ! -f frame-r-008116-3-0366.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0366.fits.bz2 > frame-r-008116-3-0366.fits
    fi
    if [[ ! -f frame-r-008105-1-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0091.fits.bz2 > frame-r-008105-1-0091.fits
    fi
    if [[ ! -f frame-r-008116-1-0365.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0365.fits.bz2 > frame-r-008116-1-0365.fits
    fi
    if [[ ! -f frame-r-008116-1-0366.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0366.fits.bz2 > frame-r-008116-1-0366.fits
    fi
    if [[ ! -f frame-r-008116-2-0365.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0365.fits.bz2 > frame-r-008116-2-0365.fits
    fi
    if [[ ! -f frame-r-008116-2-0367.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0367.fits.bz2 > frame-r-008116-2-0367.fits
    fi
    if [[ ! -f frame-r-007757-5-0163.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0163.fits.bz2 > frame-r-007757-5-0163.fits
    fi
    if [[ ! -f frame-r-007757-5-0164.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0164.fits.bz2 > frame-r-007757-5-0164.fits
    fi
    if [[ ! -f frame-r-007937-6-0186.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0186.fits.bz2 > frame-r-007937-6-0186.fits
    fi
    if [[ ! -f frame-r-007937-6-0187.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0187.fits.bz2 > frame-r-007937-6-0187.fits
    fi
    if [[ ! -f frame-r-007937-6-0188.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0188.fits.bz2 > frame-r-007937-6-0188.fits
    fi
    if [[ ! -f frame-r-008056-5-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0083.fits.bz2 > frame-r-008056-5-0083.fits
    fi
    if [[ ! -f frame-r-008056-5-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0084.fits.bz2 > frame-r-008056-5-0084.fits
    fi
    if [[ ! -f frame-r-008056-5-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0085.fits.bz2 > frame-r-008056-5-0085.fits
    fi
    if [[ ! -f frame-r-008056-5-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0086.fits.bz2 > frame-r-008056-5-0086.fits
    fi
    if [[ ! -f frame-r-008056-6-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0085.fits.bz2 > frame-r-008056-6-0085.fits
    fi
    if [[ ! -f frame-r-008056-6-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0086.fits.bz2 > frame-r-008056-6-0086.fits
    fi
    if [[ ! -f frame-r-007757-4-0162.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0162.fits.bz2 > frame-r-007757-4-0162.fits
    fi
    if [[ ! -f frame-r-007757-4-0163.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0163.fits.bz2 > frame-r-007757-4-0163.fits
    fi
    if [[ ! -f frame-r-008056-4-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0083.fits.bz2 > frame-r-008056-4-0083.fits
    fi
    if [[ ! -f frame-r-008056-4-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0084.fits.bz2 > frame-r-008056-4-0084.fits
    fi
    if [[ ! -f frame-r-008056-4-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0085.fits.bz2 > frame-r-008056-4-0085.fits
    fi
    if [[ ! -f frame-r-008056-4-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0086.fits.bz2 > frame-r-008056-4-0086.fits
    fi
    if [[ ! -f frame-r-007757-3-0161.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0161.fits.bz2 > frame-r-007757-3-0161.fits
    fi
    if [[ ! -f frame-r-008056-3-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0084.fits.bz2 > frame-r-008056-3-0084.fits
    fi
    if [[ ! -f frame-r-008116-1-0368.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0368.fits.bz2 > frame-r-008116-1-0368.fits
    fi
    if [[ ! -f frame-r-008116-2-0368.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0368.fits.bz2 > frame-r-008116-2-0368.fits
    fi
    if [[ ! -f frame-r-007937-6-0190.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0190.fits.bz2 > frame-r-007937-6-0190.fits
    fi
    if [[ ! -f frame-r-008105-2-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0043.fits.bz2 > frame-r-008105-2-0043.fits
    fi
    if [[ ! -f frame-r-008116-3-0318.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0318.fits.bz2 > frame-r-008116-3-0318.fits
    fi
    if [[ ! -f frame-r-008116-1-0318.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0318.fits.bz2 > frame-r-008116-1-0318.fits
    fi
    if [[ ! -f frame-r-007757-6-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0115.fits.bz2 > frame-r-007757-6-0115.fits
    fi
    if [[ ! -f frame-r-008056-6-0037.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0037.fits.bz2 > frame-r-008056-6-0037.fits
    fi
    if [[ ! -f frame-r-007757-4-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0115.fits.bz2 > frame-r-007757-4-0115.fits
    fi
    if [[ ! -f frame-r-008105-5-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0046.fits.bz2 > frame-r-008105-5-0046.fits
    fi
    if [[ ! -f frame-r-008116-5-0320.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0320.fits.bz2 > frame-r-008116-5-0320.fits
    fi
    if [[ ! -f frame-r-008116-5-0321.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0321.fits.bz2 > frame-r-008116-5-0321.fits
    fi
    if [[ ! -f frame-r-008116-5-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0322.fits.bz2 > frame-r-008116-5-0322.fits
    fi
    if [[ ! -f frame-r-008116-6-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0322.fits.bz2 > frame-r-008116-6-0322.fits
    fi
    if [[ ! -f frame-r-008105-4-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0046.fits.bz2 > frame-r-008105-4-0046.fits
    fi
    if [[ ! -f frame-r-008116-4-0320.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0320.fits.bz2 > frame-r-008116-4-0320.fits
    fi
    if [[ ! -f frame-r-008116-4-0321.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0321.fits.bz2 > frame-r-008116-4-0321.fits
    fi
    if [[ ! -f frame-r-008116-4-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0322.fits.bz2 > frame-r-008116-4-0322.fits
    fi
    if [[ ! -f frame-r-008105-2-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0044.fits.bz2 > frame-r-008105-2-0044.fits
    fi
    if [[ ! -f frame-r-008105-2-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0045.fits.bz2 > frame-r-008105-2-0045.fits
    fi
    if [[ ! -f frame-r-008105-2-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0046.fits.bz2 > frame-r-008105-2-0046.fits
    fi
    if [[ ! -f frame-r-008105-3-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0044.fits.bz2 > frame-r-008105-3-0044.fits
    fi
    if [[ ! -f frame-r-008116-3-0319.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0319.fits.bz2 > frame-r-008116-3-0319.fits
    fi
    if [[ ! -f frame-r-008116-3-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0322.fits.bz2 > frame-r-008116-3-0322.fits
    fi
    if [[ ! -f frame-r-008105-1-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0044.fits.bz2 > frame-r-008105-1-0044.fits
    fi
    if [[ ! -f frame-r-008116-1-0321.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0321.fits.bz2 > frame-r-008116-1-0321.fits
    fi
    if [[ ! -f frame-r-008116-2-0319.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0319.fits.bz2 > frame-r-008116-2-0319.fits
    fi
    if [[ ! -f frame-r-008116-2-0320.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0320.fits.bz2 > frame-r-008116-2-0320.fits
    fi
    if [[ ! -f frame-r-008116-2-0321.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0321.fits.bz2 > frame-r-008116-2-0321.fits
    fi
    if [[ ! -f frame-r-008116-2-0322.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0322.fits.bz2 > frame-r-008116-2-0322.fits
    fi
    if [[ ! -f frame-r-007757-5-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0116.fits.bz2 > frame-r-007757-5-0116.fits
    fi
    if [[ ! -f frame-r-007757-6-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0117.fits.bz2 > frame-r-007757-6-0117.fits
    fi
    if [[ ! -f frame-r-008056-5-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0038.fits.bz2 > frame-r-008056-5-0038.fits
    fi
    if [[ ! -f frame-r-008056-5-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0039.fits.bz2 > frame-r-008056-5-0039.fits
    fi
    if [[ ! -f frame-r-008056-6-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0040.fits.bz2 > frame-r-008056-6-0040.fits
    fi
    if [[ ! -f frame-r-008056-6-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0041.fits.bz2 > frame-r-008056-6-0041.fits
    fi
    if [[ ! -f frame-r-007757-4-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0116.fits.bz2 > frame-r-007757-4-0116.fits
    fi
    if [[ ! -f frame-r-008056-4-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0038.fits.bz2 > frame-r-008056-4-0038.fits
    fi
    if [[ ! -f frame-r-008056-4-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0039.fits.bz2 > frame-r-008056-4-0039.fits
    fi
    if [[ ! -f frame-r-008056-4-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0041.fits.bz2 > frame-r-008056-4-0041.fits
    fi
    if [[ ! -f frame-r-007757-2-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0118.fits.bz2 > frame-r-007757-2-0118.fits
    fi
    if [[ ! -f frame-r-007757-3-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0117.fits.bz2 > frame-r-007757-3-0117.fits
    fi
    if [[ ! -f frame-r-008056-3-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0039.fits.bz2 > frame-r-008056-3-0039.fits
    fi
    if [[ ! -f frame-r-008056-3-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0041.fits.bz2 > frame-r-008056-3-0041.fits
    fi
    if [[ ! -f frame-r-008056-2-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0040.fits.bz2 > frame-r-008056-2-0040.fits
    fi
    if [[ ! -f frame-r-008056-2-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0041.fits.bz2 > frame-r-008056-2-0041.fits
    fi
    if [[ ! -f frame-r-008111-1-0173.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0173.fits.bz2 > frame-r-008111-1-0173.fits
    fi
    if [[ ! -f frame-r-008111-1-0174.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0174.fits.bz2 > frame-r-008111-1-0174.fits
    fi
    if [[ ! -f frame-r-008105-5-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0049.fits.bz2 > frame-r-008105-5-0049.fits
    fi
    if [[ ! -f frame-r-008105-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0050.fits.bz2 > frame-r-008105-5-0050.fits
    fi
    if [[ ! -f frame-r-008105-6-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0048.fits.bz2 > frame-r-008105-6-0048.fits
    fi
    if [[ ! -f frame-r-008105-6-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0050.fits.bz2 > frame-r-008105-6-0050.fits
    fi
    if [[ ! -f frame-r-008116-5-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0323.fits.bz2 > frame-r-008116-5-0323.fits
    fi
    if [[ ! -f frame-r-008116-5-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0326.fits.bz2 > frame-r-008116-5-0326.fits
    fi
    if [[ ! -f frame-r-008116-6-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0325.fits.bz2 > frame-r-008116-6-0325.fits
    fi
    if [[ ! -f frame-r-008116-6-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0326.fits.bz2 > frame-r-008116-6-0326.fits
    fi
    if [[ ! -f frame-r-008105-4-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0049.fits.bz2 > frame-r-008105-4-0049.fits
    fi
    if [[ ! -f frame-r-008105-4-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0050.fits.bz2 > frame-r-008105-4-0050.fits
    fi
    if [[ ! -f frame-r-008105-4-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0051.fits.bz2 > frame-r-008105-4-0051.fits
    fi
    if [[ ! -f frame-r-008116-4-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0325.fits.bz2 > frame-r-008116-4-0325.fits
    fi
    if [[ ! -f frame-r-008116-4-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0326.fits.bz2 > frame-r-008116-4-0326.fits
    fi
    if [[ ! -f frame-r-008105-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0049.fits.bz2 > frame-r-008105-2-0049.fits
    fi
    if [[ ! -f frame-r-008105-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0050.fits.bz2 > frame-r-008105-2-0050.fits
    fi
    if [[ ! -f frame-r-008105-3-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0049.fits.bz2 > frame-r-008105-3-0049.fits
    fi
    if [[ ! -f frame-r-008105-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0050.fits.bz2 > frame-r-008105-3-0050.fits
    fi
    if [[ ! -f frame-r-008105-3-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0051.fits.bz2 > frame-r-008105-3-0051.fits
    fi
    if [[ ! -f frame-r-008116-3-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0324.fits.bz2 > frame-r-008116-3-0324.fits
    fi
    if [[ ! -f frame-r-008116-3-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0325.fits.bz2 > frame-r-008116-3-0325.fits
    fi
    if [[ ! -f frame-r-008116-3-0326.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0326.fits.bz2 > frame-r-008116-3-0326.fits
    fi
    if [[ ! -f frame-r-008105-1-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0048.fits.bz2 > frame-r-008105-1-0048.fits
    fi
    if [[ ! -f frame-r-008105-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0050.fits.bz2 > frame-r-008105-1-0050.fits
    fi
    if [[ ! -f frame-r-008105-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0051.fits.bz2 > frame-r-008105-1-0051.fits
    fi
    if [[ ! -f frame-r-008116-1-0323.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0323.fits.bz2 > frame-r-008116-1-0323.fits
    fi
    if [[ ! -f frame-r-008116-1-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0324.fits.bz2 > frame-r-008116-1-0324.fits
    fi
    if [[ ! -f frame-r-008116-1-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0325.fits.bz2 > frame-r-008116-1-0325.fits
    fi
    if [[ ! -f frame-r-008116-2-0324.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0324.fits.bz2 > frame-r-008116-2-0324.fits
    fi
    if [[ ! -f frame-r-008116-2-0325.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0325.fits.bz2 > frame-r-008116-2-0325.fits
    fi
    if [[ ! -f frame-r-007757-5-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0119.fits.bz2 > frame-r-007757-5-0119.fits
    fi
    if [[ ! -f frame-r-007757-5-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0121.fits.bz2 > frame-r-007757-5-0121.fits
    fi
    if [[ ! -f frame-r-007757-6-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0119.fits.bz2 > frame-r-007757-6-0119.fits
    fi
    if [[ ! -f frame-r-007757-6-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0120.fits.bz2 > frame-r-007757-6-0120.fits
    fi
    if [[ ! -f frame-r-007757-6-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0122.fits.bz2 > frame-r-007757-6-0122.fits
    fi
    if [[ ! -f frame-r-008056-5-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0044.fits.bz2 > frame-r-008056-5-0044.fits
    fi
    if [[ ! -f frame-r-008056-5-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0045.fits.bz2 > frame-r-008056-5-0045.fits
    fi
    if [[ ! -f frame-r-008056-6-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0045.fits.bz2 > frame-r-008056-6-0045.fits
    fi
    if [[ ! -f frame-r-007757-4-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0119.fits.bz2 > frame-r-007757-4-0119.fits
    fi
    if [[ ! -f frame-r-007757-4-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0122.fits.bz2 > frame-r-007757-4-0122.fits
    fi
    if [[ ! -f frame-r-008056-4-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0043.fits.bz2 > frame-r-008056-4-0043.fits
    fi
    if [[ ! -f frame-r-008056-4-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0045.fits.bz2 > frame-r-008056-4-0045.fits
    fi
    if [[ ! -f frame-r-007757-2-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0119.fits.bz2 > frame-r-007757-2-0119.fits
    fi
    if [[ ! -f frame-r-007757-2-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0120.fits.bz2 > frame-r-007757-2-0120.fits
    fi
    if [[ ! -f frame-r-007757-3-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0119.fits.bz2 > frame-r-007757-3-0119.fits
    fi
    if [[ ! -f frame-r-007757-3-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0120.fits.bz2 > frame-r-007757-3-0120.fits
    fi
    if [[ ! -f frame-r-007757-3-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0122.fits.bz2 > frame-r-007757-3-0122.fits
    fi
    if [[ ! -f frame-r-008056-3-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0043.fits.bz2 > frame-r-008056-3-0043.fits
    fi
    if [[ ! -f frame-r-007757-1-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0119.fits.bz2 > frame-r-007757-1-0119.fits
    fi
    if [[ ! -f frame-r-008056-1-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0042.fits.bz2 > frame-r-008056-1-0042.fits
    fi
    if [[ ! -f frame-r-008056-2-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0042.fits.bz2 > frame-r-008056-2-0042.fits
    fi
    if [[ ! -f frame-r-008056-2-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0043.fits.bz2 > frame-r-008056-2-0043.fits
    fi
    if [[ ! -f frame-r-008056-2-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0044.fits.bz2 > frame-r-008056-2-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0040.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0040.fits.bz2 > frame-r-004843-6-0040.fits
    fi
    if [[ ! -f frame-r-008055-6-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0073.fits.bz2 > frame-r-008055-6-0073.fits
    fi
    if [[ ! -f frame-r-008055-6-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0074.fits.bz2 > frame-r-008055-6-0074.fits
    fi
    if [[ ! -f frame-r-008112-2-0039.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0039.fits.bz2 > frame-r-008112-2-0039.fits
    fi
    if [[ ! -f frame-r-008111-1-0176.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0176.fits.bz2 > frame-r-008111-1-0176.fits
    fi
    if [[ ! -f frame-r-008111-1-0178.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0178.fits.bz2 > frame-r-008111-1-0178.fits
    fi
    if [[ ! -f frame-r-008112-1-0037.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0037.fits.bz2 > frame-r-008112-1-0037.fits
    fi
    if [[ ! -f frame-r-008112-1-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0038.fits.bz2 > frame-r-008112-1-0038.fits
    fi
    if [[ ! -f frame-r-008105-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0053.fits.bz2 > frame-r-008105-5-0053.fits
    fi
    if [[ ! -f frame-r-008105-5-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0055.fits.bz2 > frame-r-008105-5-0055.fits
    fi
    if [[ ! -f frame-r-008105-6-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0054.fits.bz2 > frame-r-008105-6-0054.fits
    fi
    if [[ ! -f frame-r-008116-5-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0330.fits.bz2 > frame-r-008116-5-0330.fits
    fi
    if [[ ! -f frame-r-008116-6-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0327.fits.bz2 > frame-r-008116-6-0327.fits
    fi
    if [[ ! -f frame-r-008116-6-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0328.fits.bz2 > frame-r-008116-6-0328.fits
    fi
    if [[ ! -f frame-r-008105-4-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0054.fits.bz2 > frame-r-008105-4-0054.fits
    fi
    if [[ ! -f frame-r-008105-4-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0055.fits.bz2 > frame-r-008105-4-0055.fits
    fi
    if [[ ! -f frame-r-008116-4-0330.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0330.fits.bz2 > frame-r-008116-4-0330.fits
    fi
    if [[ ! -f frame-r-008105-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0052.fits.bz2 > frame-r-008105-2-0052.fits
    fi
    if [[ ! -f frame-r-008105-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0052.fits.bz2 > frame-r-008105-1-0052.fits
    fi
    if [[ ! -f frame-r-008105-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0055.fits.bz2 > frame-r-008105-1-0055.fits
    fi
    if [[ ! -f frame-r-008116-1-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0327.fits.bz2 > frame-r-008116-1-0327.fits
    fi
    if [[ ! -f frame-r-008116-1-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0329.fits.bz2 > frame-r-008116-1-0329.fits
    fi
    if [[ ! -f frame-r-008116-2-0327.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0327.fits.bz2 > frame-r-008116-2-0327.fits
    fi
    if [[ ! -f frame-r-008116-2-0328.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0328.fits.bz2 > frame-r-008116-2-0328.fits
    fi
    if [[ ! -f frame-r-008116-2-0329.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0329.fits.bz2 > frame-r-008116-2-0329.fits
    fi
    if [[ ! -f frame-r-007757-5-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0123.fits.bz2 > frame-r-007757-5-0123.fits
    fi
    if [[ ! -f frame-r-007757-5-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0124.fits.bz2 > frame-r-007757-5-0124.fits
    fi
    if [[ ! -f frame-r-007757-5-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0125.fits.bz2 > frame-r-007757-5-0125.fits
    fi
    if [[ ! -f frame-r-007757-6-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0123.fits.bz2 > frame-r-007757-6-0123.fits
    fi
    if [[ ! -f frame-r-007757-6-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0124.fits.bz2 > frame-r-007757-6-0124.fits
    fi
    if [[ ! -f frame-r-007757-6-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0126.fits.bz2 > frame-r-007757-6-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0046.fits.bz2 > frame-r-008056-5-0046.fits
    fi
    if [[ ! -f frame-r-008056-5-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0047.fits.bz2 > frame-r-008056-5-0047.fits
    fi
    if [[ ! -f frame-r-008056-5-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0048.fits.bz2 > frame-r-008056-5-0048.fits
    fi
    if [[ ! -f frame-r-008056-6-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0046.fits.bz2 > frame-r-008056-6-0046.fits
    fi
    if [[ ! -f frame-r-008056-6-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0047.fits.bz2 > frame-r-008056-6-0047.fits
    fi
    if [[ ! -f frame-r-007757-4-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0123.fits.bz2 > frame-r-007757-4-0123.fits
    fi
    if [[ ! -f frame-r-007757-4-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0124.fits.bz2 > frame-r-007757-4-0124.fits
    fi
    if [[ ! -f frame-r-007757-4-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0125.fits.bz2 > frame-r-007757-4-0125.fits
    fi
    if [[ ! -f frame-r-008056-4-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0046.fits.bz2 > frame-r-008056-4-0046.fits
    fi
    if [[ ! -f frame-r-008056-4-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0047.fits.bz2 > frame-r-008056-4-0047.fits
    fi
    if [[ ! -f frame-r-008056-4-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0048.fits.bz2 > frame-r-008056-4-0048.fits
    fi
    if [[ ! -f frame-r-007757-2-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0123.fits.bz2 > frame-r-007757-2-0123.fits
    fi
    if [[ ! -f frame-r-007757-2-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0124.fits.bz2 > frame-r-007757-2-0124.fits
    fi
    if [[ ! -f frame-r-007757-2-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0125.fits.bz2 > frame-r-007757-2-0125.fits
    fi
    if [[ ! -f frame-r-007757-2-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0126.fits.bz2 > frame-r-007757-2-0126.fits
    fi
    if [[ ! -f frame-r-007757-3-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0123.fits.bz2 > frame-r-007757-3-0123.fits
    fi
    if [[ ! -f frame-r-007757-3-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0125.fits.bz2 > frame-r-007757-3-0125.fits
    fi
    if [[ ! -f frame-r-007757-3-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0126.fits.bz2 > frame-r-007757-3-0126.fits
    fi
    if [[ ! -f frame-r-008056-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0046.fits.bz2 > frame-r-008056-3-0046.fits
    fi
    if [[ ! -f frame-r-008056-3-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0048.fits.bz2 > frame-r-008056-3-0048.fits
    fi
    if [[ ! -f frame-r-007757-1-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0125.fits.bz2 > frame-r-007757-1-0125.fits
    fi
    if [[ ! -f frame-r-008056-1-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0047.fits.bz2 > frame-r-008056-1-0047.fits
    fi
    if [[ ! -f frame-r-008056-2-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0048.fits.bz2 > frame-r-008056-2-0048.fits
    fi
    if [[ ! -f frame-r-004843-5-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0043.fits.bz2 > frame-r-004843-5-0043.fits
    fi
    if [[ ! -f frame-r-004843-5-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0044.fits.bz2 > frame-r-004843-5-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0043.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0043.fits.bz2 > frame-r-004843-6-0043.fits
    fi
    if [[ ! -f frame-r-004843-6-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0044.fits.bz2 > frame-r-004843-6-0044.fits
    fi
    if [[ ! -f frame-r-004843-6-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0045.fits.bz2 > frame-r-004843-6-0045.fits
    fi
    if [[ ! -f frame-r-008055-5-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0075.fits.bz2 > frame-r-008055-5-0075.fits
    fi
    if [[ ! -f frame-r-008055-5-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0076.fits.bz2 > frame-r-008055-5-0076.fits
    fi
    if [[ ! -f frame-r-008055-5-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0077.fits.bz2 > frame-r-008055-5-0077.fits
    fi
    if [[ ! -f frame-r-008055-5-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0078.fits.bz2 > frame-r-008055-5-0078.fits
    fi
    if [[ ! -f frame-r-008055-6-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0075.fits.bz2 > frame-r-008055-6-0075.fits
    fi
    if [[ ! -f frame-r-008111-3-0180.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0180.fits.bz2 > frame-r-008111-3-0180.fits
    fi
    if [[ ! -f frame-r-008111-3-0181.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0181.fits.bz2 > frame-r-008111-3-0181.fits
    fi
    if [[ ! -f frame-r-008111-3-0182.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0182.fits.bz2 > frame-r-008111-3-0182.fits
    fi
    if [[ ! -f frame-r-008112-2-0041.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0041.fits.bz2 > frame-r-008112-2-0041.fits
    fi
    if [[ ! -f frame-r-008111-1-0179.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0179.fits.bz2 > frame-r-008111-1-0179.fits
    fi
    if [[ ! -f frame-r-008111-1-0180.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0180.fits.bz2 > frame-r-008111-1-0180.fits
    fi
    if [[ ! -f frame-r-008112-1-0042.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0042.fits.bz2 > frame-r-008112-1-0042.fits
    fi
    if [[ ! -f frame-r-008105-6-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0058.fits.bz2 > frame-r-008105-6-0058.fits
    fi
    if [[ ! -f frame-r-008116-5-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0333.fits.bz2 > frame-r-008116-5-0333.fits
    fi
    if [[ ! -f frame-r-008116-6-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0332.fits.bz2 > frame-r-008116-6-0332.fits
    fi
    if [[ ! -f frame-r-008105-4-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0056.fits.bz2 > frame-r-008105-4-0056.fits
    fi
    if [[ ! -f frame-r-008105-4-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0058.fits.bz2 > frame-r-008105-4-0058.fits
    fi
    if [[ ! -f frame-r-008116-4-0332.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0332.fits.bz2 > frame-r-008116-4-0332.fits
    fi
    if [[ ! -f frame-r-008116-4-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0333.fits.bz2 > frame-r-008116-4-0333.fits
    fi
    if [[ ! -f frame-r-008105-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0058.fits.bz2 > frame-r-008105-3-0058.fits
    fi
    if [[ ! -f frame-r-008116-3-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0331.fits.bz2 > frame-r-008116-3-0331.fits
    fi
    if [[ ! -f frame-r-008116-3-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0333.fits.bz2 > frame-r-008116-3-0333.fits
    fi
    if [[ ! -f frame-r-008105-1-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0056.fits.bz2 > frame-r-008105-1-0056.fits
    fi
    if [[ ! -f frame-r-008116-1-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0331.fits.bz2 > frame-r-008116-1-0331.fits
    fi
    if [[ ! -f frame-r-008116-1-0333.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0333.fits.bz2 > frame-r-008116-1-0333.fits
    fi
    if [[ ! -f frame-r-008116-2-0331.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0331.fits.bz2 > frame-r-008116-2-0331.fits
    fi
    if [[ ! -f frame-r-007757-5-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0129.fits.bz2 > frame-r-007757-5-0129.fits
    fi
    if [[ ! -f frame-r-007757-5-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0130.fits.bz2 > frame-r-007757-5-0130.fits
    fi
    if [[ ! -f frame-r-007757-6-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0127.fits.bz2 > frame-r-007757-6-0127.fits
    fi
    if [[ ! -f frame-r-007757-6-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0129.fits.bz2 > frame-r-007757-6-0129.fits
    fi
    if [[ ! -f frame-r-008056-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0050.fits.bz2 > frame-r-008056-5-0050.fits
    fi
    if [[ ! -f frame-r-008056-5-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0051.fits.bz2 > frame-r-008056-5-0051.fits
    fi
    if [[ ! -f frame-r-008056-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0052.fits.bz2 > frame-r-008056-5-0052.fits
    fi
    if [[ ! -f frame-r-008056-6-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0049.fits.bz2 > frame-r-008056-6-0049.fits
    fi
    if [[ ! -f frame-r-008056-6-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0050.fits.bz2 > frame-r-008056-6-0050.fits
    fi
    if [[ ! -f frame-r-008056-6-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0051.fits.bz2 > frame-r-008056-6-0051.fits
    fi
    if [[ ! -f frame-r-007757-4-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0127.fits.bz2 > frame-r-007757-4-0127.fits
    fi
    if [[ ! -f frame-r-007757-4-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0128.fits.bz2 > frame-r-007757-4-0128.fits
    fi
    if [[ ! -f frame-r-008056-4-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0049.fits.bz2 > frame-r-008056-4-0049.fits
    fi
    if [[ ! -f frame-r-008056-4-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0051.fits.bz2 > frame-r-008056-4-0051.fits
    fi
    if [[ ! -f frame-r-007757-2-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0129.fits.bz2 > frame-r-007757-2-0129.fits
    fi
    if [[ ! -f frame-r-007757-2-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0130.fits.bz2 > frame-r-007757-2-0130.fits
    fi
    if [[ ! -f frame-r-007757-3-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0130.fits.bz2 > frame-r-007757-3-0130.fits
    fi
    if [[ ! -f frame-r-008056-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0050.fits.bz2 > frame-r-008056-3-0050.fits
    fi
    if [[ ! -f frame-r-007757-1-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0127.fits.bz2 > frame-r-007757-1-0127.fits
    fi
    if [[ ! -f frame-r-007757-1-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0128.fits.bz2 > frame-r-007757-1-0128.fits
    fi
    if [[ ! -f frame-r-007757-1-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0129.fits.bz2 > frame-r-007757-1-0129.fits
    fi
    if [[ ! -f frame-r-007757-1-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/1/frame-r-007757-1-0130.fits.bz2 > frame-r-007757-1-0130.fits
    fi
    if [[ ! -f frame-r-008056-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0050.fits.bz2 > frame-r-008056-1-0050.fits
    fi
    if [[ ! -f frame-r-008056-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0052.fits.bz2 > frame-r-008056-1-0052.fits
    fi
    if [[ ! -f frame-r-008056-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0050.fits.bz2 > frame-r-008056-2-0050.fits
    fi
    if [[ ! -f frame-r-004843-5-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0047.fits.bz2 > frame-r-004843-5-0047.fits
    fi
    if [[ ! -f frame-r-004843-6-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0046.fits.bz2 > frame-r-004843-6-0046.fits
    fi
    if [[ ! -f frame-r-008055-5-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0080.fits.bz2 > frame-r-008055-5-0080.fits
    fi
    if [[ ! -f frame-r-008055-6-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0080.fits.bz2 > frame-r-008055-6-0080.fits
    fi
    if [[ ! -f frame-r-008055-6-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0081.fits.bz2 > frame-r-008055-6-0081.fits
    fi
    if [[ ! -f frame-r-004843-4-0048.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0048.fits.bz2 > frame-r-004843-4-0048.fits
    fi
    if [[ ! -f frame-r-008055-4-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0079.fits.bz2 > frame-r-008055-4-0079.fits
    fi
    if [[ ! -f frame-r-008055-4-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0080.fits.bz2 > frame-r-008055-4-0080.fits
    fi
    if [[ ! -f frame-r-008055-4-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0081.fits.bz2 > frame-r-008055-4-0081.fits
    fi
    if [[ ! -f frame-r-008055-4-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0082.fits.bz2 > frame-r-008055-4-0082.fits
    fi
    if [[ ! -f frame-r-008111-3-0183.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0183.fits.bz2 > frame-r-008111-3-0183.fits
    fi
    if [[ ! -f frame-r-008111-3-0186.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0186.fits.bz2 > frame-r-008111-3-0186.fits
    fi
    if [[ ! -f frame-r-008112-2-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0045.fits.bz2 > frame-r-008112-2-0045.fits
    fi
    if [[ ! -f frame-r-008112-2-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0047.fits.bz2 > frame-r-008112-2-0047.fits
    fi
    if [[ ! -f frame-r-008112-3-0046.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0046.fits.bz2 > frame-r-008112-3-0046.fits
    fi
    if [[ ! -f frame-r-008111-1-0185.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0185.fits.bz2 > frame-r-008111-1-0185.fits
    fi
    if [[ ! -f frame-r-008111-2-0185.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0185.fits.bz2 > frame-r-008111-2-0185.fits
    fi
    if [[ ! -f frame-r-008112-1-0044.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0044.fits.bz2 > frame-r-008112-1-0044.fits
    fi
    if [[ ! -f frame-r-008112-1-0045.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0045.fits.bz2 > frame-r-008112-1-0045.fits
    fi
    if [[ ! -f frame-r-008112-1-0047.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0047.fits.bz2 > frame-r-008112-1-0047.fits
    fi
    if [[ ! -f frame-r-008105-5-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0059.fits.bz2 > frame-r-008105-5-0059.fits
    fi
    if [[ ! -f frame-r-008105-5-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0061.fits.bz2 > frame-r-008105-5-0061.fits
    fi
    if [[ ! -f frame-r-008105-6-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0059.fits.bz2 > frame-r-008105-6-0059.fits
    fi
    if [[ ! -f frame-r-008105-6-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0060.fits.bz2 > frame-r-008105-6-0060.fits
    fi
    if [[ ! -f frame-r-008105-6-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0061.fits.bz2 > frame-r-008105-6-0061.fits
    fi
    if [[ ! -f frame-r-008105-6-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0062.fits.bz2 > frame-r-008105-6-0062.fits
    fi
    if [[ ! -f frame-r-008116-5-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0335.fits.bz2 > frame-r-008116-5-0335.fits
    fi
    if [[ ! -f frame-r-008116-6-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0335.fits.bz2 > frame-r-008116-6-0335.fits
    fi
    if [[ ! -f frame-r-008116-6-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0336.fits.bz2 > frame-r-008116-6-0336.fits
    fi
    if [[ ! -f frame-r-008116-6-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0337.fits.bz2 > frame-r-008116-6-0337.fits
    fi
    if [[ ! -f frame-r-008105-4-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0060.fits.bz2 > frame-r-008105-4-0060.fits
    fi
    if [[ ! -f frame-r-004800-6-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0118.fits.bz2 > frame-r-004800-6-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0062.fits.bz2 > frame-r-008105-4-0062.fits
    fi
    if [[ ! -f frame-r-008116-4-0335.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0335.fits.bz2 > frame-r-008116-4-0335.fits
    fi
    if [[ ! -f frame-r-008116-4-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0337.fits.bz2 > frame-r-008116-4-0337.fits
    fi
    if [[ ! -f frame-r-008105-2-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0060.fits.bz2 > frame-r-008105-2-0060.fits
    fi
    if [[ ! -f frame-r-008105-2-0061.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0061.fits.bz2 > frame-r-008105-2-0061.fits
    fi
    if [[ ! -f frame-r-004800-6-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0113.fits.bz2 > frame-r-004800-6-0113.fits
    fi
    if [[ ! -f frame-r-004800-6-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0112.fits.bz2 > frame-r-004800-6-0112.fits
    fi
    if [[ ! -f frame-r-008116-3-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0334.fits.bz2 > frame-r-008116-3-0334.fits
    fi
    if [[ ! -f frame-r-008105-1-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0060.fits.bz2 > frame-r-008105-1-0060.fits
    fi
    if [[ ! -f frame-r-004800-6-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0110.fits.bz2 > frame-r-004800-6-0110.fits
    fi
    if [[ ! -f frame-r-004800-6-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0109.fits.bz2 > frame-r-004800-6-0109.fits
    fi
    if [[ ! -f frame-r-008116-2-0334.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0334.fits.bz2 > frame-r-008116-2-0334.fits
    fi
    if [[ ! -f frame-r-008116-2-0336.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0336.fits.bz2 > frame-r-008116-2-0336.fits
    fi
    if [[ ! -f frame-r-007757-5-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0132.fits.bz2 > frame-r-007757-5-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0104.fits.bz2 > frame-r-004800-6-0104.fits
    fi
    if [[ ! -f frame-r-004800-6-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0105.fits.bz2 > frame-r-004800-6-0105.fits
    fi
    if [[ ! -f frame-r-007757-6-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/6/frame-r-007757-6-0131.fits.bz2 > frame-r-007757-6-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0107.fits.bz2 > frame-r-004800-6-0107.fits
    fi
    if [[ ! -f frame-r-004800-6-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0108.fits.bz2 > frame-r-004800-6-0108.fits
    fi
    if [[ ! -f frame-r-008056-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0053.fits.bz2 > frame-r-008056-5-0053.fits
    fi
    if [[ ! -f frame-r-008056-5-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0054.fits.bz2 > frame-r-008056-5-0054.fits
    fi
    if [[ ! -f frame-r-008056-6-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0054.fits.bz2 > frame-r-008056-6-0054.fits
    fi
    if [[ ! -f frame-r-008056-6-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0055.fits.bz2 > frame-r-008056-6-0055.fits
    fi
    if [[ ! -f frame-r-004800-6-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0106.fits.bz2 > frame-r-004800-6-0106.fits
    fi
    if [[ ! -f frame-r-007757-4-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0131.fits.bz2 > frame-r-007757-4-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0101.fits.bz2 > frame-r-004800-6-0101.fits
    fi
    if [[ ! -f frame-r-004800-6-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0103.fits.bz2 > frame-r-004800-6-0103.fits
    fi
    if [[ ! -f frame-r-008056-4-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0054.fits.bz2 > frame-r-008056-4-0054.fits
    fi
    if [[ ! -f frame-r-007757-2-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0131.fits.bz2 > frame-r-007757-2-0131.fits
    fi
    if [[ ! -f frame-r-007757-2-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0132.fits.bz2 > frame-r-007757-2-0132.fits
    fi
    if [[ ! -f frame-r-004800-6-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0097.fits.bz2 > frame-r-004800-6-0097.fits
    fi
    if [[ ! -f frame-r-007757-3-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0131.fits.bz2 > frame-r-007757-3-0131.fits
    fi
    if [[ ! -f frame-r-004800-6-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0098.fits.bz2 > frame-r-004800-6-0098.fits
    fi
    if [[ ! -f frame-r-004800-6-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0100.fits.bz2 > frame-r-004800-6-0100.fits
    fi
    if [[ ! -f frame-r-004800-6-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0099.fits.bz2 > frame-r-004800-6-0099.fits
    fi
    if [[ ! -f frame-r-004800-6-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0094.fits.bz2 > frame-r-004800-6-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0054.fits.bz2 > frame-r-008056-1-0054.fits
    fi
    if [[ ! -f frame-r-008056-1-0056.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0056.fits.bz2 > frame-r-008056-1-0056.fits
    fi
    if [[ ! -f frame-r-008056-2-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0054.fits.bz2 > frame-r-008056-2-0054.fits
    fi
    if [[ ! -f frame-r-004843-5-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0050.fits.bz2 > frame-r-004843-5-0050.fits
    fi
    if [[ ! -f frame-r-004843-5-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0052.fits.bz2 > frame-r-004843-5-0052.fits
    fi
    if [[ ! -f frame-r-004843-6-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0049.fits.bz2 > frame-r-004843-6-0049.fits
    fi
    if [[ ! -f frame-r-004843-6-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0051.fits.bz2 > frame-r-004843-6-0051.fits
    fi
    if [[ ! -f frame-r-004843-6-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0052.fits.bz2 > frame-r-004843-6-0052.fits
    fi
    if [[ ! -f frame-r-008055-6-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0083.fits.bz2 > frame-r-008055-6-0083.fits
    fi
    if [[ ! -f frame-r-008055-6-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0084.fits.bz2 > frame-r-008055-6-0084.fits
    fi
    if [[ ! -f frame-r-004843-4-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0050.fits.bz2 > frame-r-004843-4-0050.fits
    fi
    if [[ ! -f frame-r-004843-4-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0052.fits.bz2 > frame-r-004843-4-0052.fits
    fi
    if [[ ! -f frame-r-008055-4-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0083.fits.bz2 > frame-r-008055-4-0083.fits
    fi
    if [[ ! -f frame-r-008055-4-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0084.fits.bz2 > frame-r-008055-4-0084.fits
    fi
    if [[ ! -f frame-r-008055-4-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0085.fits.bz2 > frame-r-008055-4-0085.fits
    fi
    if [[ ! -f frame-r-008111-4-0187.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0187.fits.bz2 > frame-r-008111-4-0187.fits
    fi
    if [[ ! -f frame-r-008111-4-0189.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0189.fits.bz2 > frame-r-008111-4-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0149.fits.bz2 > frame-r-004829-5-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0049.fits.bz2 > frame-r-008112-2-0049.fits
    fi
    if [[ ! -f frame-r-008112-2-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0050.fits.bz2 > frame-r-008112-2-0050.fits
    fi
    if [[ ! -f frame-r-004829-5-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0148.fits.bz2 > frame-r-004829-5-0148.fits
    fi
    if [[ ! -f frame-r-004829-5-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0151.fits.bz2 > frame-r-004829-5-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0050.fits.bz2 > frame-r-008112-3-0050.fits
    fi
    if [[ ! -f frame-r-004829-5-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0145.fits.bz2 > frame-r-004829-5-0145.fits
    fi
    if [[ ! -f frame-r-004829-5-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0144.fits.bz2 > frame-r-004829-5-0144.fits
    fi
    if [[ ! -f frame-r-008111-2-0188.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0188.fits.bz2 > frame-r-008111-2-0188.fits
    fi
    if [[ ! -f frame-r-008111-2-0189.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0189.fits.bz2 > frame-r-008111-2-0189.fits
    fi
    if [[ ! -f frame-r-004829-5-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0147.fits.bz2 > frame-r-004829-5-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0049.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0049.fits.bz2 > frame-r-008112-1-0049.fits
    fi
    if [[ ! -f frame-r-008112-1-0050.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0050.fits.bz2 > frame-r-008112-1-0050.fits
    fi
    if [[ ! -f frame-r-004829-6-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0140.fits.bz2 > frame-r-004829-6-0140.fits
    fi
    if [[ ! -f frame-r-004829-6-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0141.fits.bz2 > frame-r-004829-6-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0064.fits.bz2 > frame-r-008105-5-0064.fits
    fi
    if [[ ! -f frame-r-004829-5-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0140.fits.bz2 > frame-r-004829-5-0140.fits
    fi
    if [[ ! -f frame-r-004829-6-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0142.fits.bz2 > frame-r-004829-6-0142.fits
    fi
    if [[ ! -f frame-r-004829-5-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0143.fits.bz2 > frame-r-004829-5-0143.fits
    fi
    if [[ ! -f frame-r-008116-5-0339.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0339.fits.bz2 > frame-r-008116-5-0339.fits
    fi
    if [[ ! -f frame-r-008116-5-0340.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0340.fits.bz2 > frame-r-008116-5-0340.fits
    fi
    if [[ ! -f frame-r-008116-6-0339.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0339.fits.bz2 > frame-r-008116-6-0339.fits
    fi
    if [[ ! -f frame-r-008116-6-0340.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0340.fits.bz2 > frame-r-008116-6-0340.fits
    fi
    if [[ ! -f frame-r-004829-6-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0137.fits.bz2 > frame-r-004829-6-0137.fits
    fi
    if [[ ! -f frame-r-008105-4-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0064.fits.bz2 > frame-r-008105-4-0064.fits
    fi
    if [[ ! -f frame-r-004829-5-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0137.fits.bz2 > frame-r-004829-5-0137.fits
    fi
    if [[ ! -f frame-r-004829-6-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0135.fits.bz2 > frame-r-004829-6-0135.fits
    fi
    if [[ ! -f frame-r-004829-6-0136.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0136.fits.bz2 > frame-r-004829-6-0136.fits
    fi
    if [[ ! -f frame-r-004800-5-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0117.fits.bz2 > frame-r-004800-5-0117.fits
    fi
    if [[ ! -f frame-r-004800-5-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0116.fits.bz2 > frame-r-004800-5-0116.fits
    fi
    if [[ ! -f frame-r-004829-6-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0139.fits.bz2 > frame-r-004829-6-0139.fits
    fi
    if [[ ! -f frame-r-004829-6-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0131.fits.bz2 > frame-r-004829-6-0131.fits
    fi
    if [[ ! -f frame-r-004829-5-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0133.fits.bz2 > frame-r-004829-5-0133.fits
    fi
    if [[ ! -f frame-r-004829-6-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0128.fits.bz2 > frame-r-004829-6-0128.fits
    fi
    if [[ ! -f frame-r-008105-1-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0062.fits.bz2 > frame-r-008105-1-0062.fits
    fi
    if [[ ! -f frame-r-004829-6-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0129.fits.bz2 > frame-r-004829-6-0129.fits
    fi
    if [[ ! -f frame-r-004800-5-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0109.fits.bz2 > frame-r-004800-5-0109.fits
    fi
    if [[ ! -f frame-r-004800-5-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0111.fits.bz2 > frame-r-004800-5-0111.fits
    fi
    if [[ ! -f frame-r-004829-5-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0128.fits.bz2 > frame-r-004829-5-0128.fits
    fi
    if [[ ! -f frame-r-004829-5-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0130.fits.bz2 > frame-r-004829-5-0130.fits
    fi
    if [[ ! -f frame-r-004829-6-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0127.fits.bz2 > frame-r-004829-6-0127.fits
    fi
    if [[ ! -f frame-r-004829-5-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0127.fits.bz2 > frame-r-004829-5-0127.fits
    fi
    if [[ ! -f frame-r-008116-2-0338.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0338.fits.bz2 > frame-r-008116-2-0338.fits
    fi
    if [[ ! -f frame-r-004829-6-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0123.fits.bz2 > frame-r-004829-6-0123.fits
    fi
    if [[ ! -f frame-r-004829-6-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0124.fits.bz2 > frame-r-004829-6-0124.fits
    fi
    if [[ ! -f frame-r-004800-5-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0105.fits.bz2 > frame-r-004800-5-0105.fits
    fi
    if [[ ! -f frame-r-004829-5-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0124.fits.bz2 > frame-r-004829-5-0124.fits
    fi
    if [[ ! -f frame-r-004829-6-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0126.fits.bz2 > frame-r-004829-6-0126.fits
    fi
    if [[ ! -f frame-r-004800-5-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0107.fits.bz2 > frame-r-004800-5-0107.fits
    fi
    if [[ ! -f frame-r-004829-5-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0126.fits.bz2 > frame-r-004829-5-0126.fits
    fi
    if [[ ! -f frame-r-004829-6-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0120.fits.bz2 > frame-r-004829-6-0120.fits
    fi
    if [[ ! -f frame-r-004829-6-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0121.fits.bz2 > frame-r-004829-6-0121.fits
    fi
    if [[ ! -f frame-r-004800-5-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0101.fits.bz2 > frame-r-004800-5-0101.fits
    fi
    if [[ ! -f frame-r-004800-5-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0102.fits.bz2 > frame-r-004800-5-0102.fits
    fi
    if [[ ! -f frame-r-004829-5-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0120.fits.bz2 > frame-r-004829-5-0120.fits
    fi
    if [[ ! -f frame-r-004829-5-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0122.fits.bz2 > frame-r-004829-5-0122.fits
    fi
    if [[ ! -f frame-r-004829-5-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0121.fits.bz2 > frame-r-004829-5-0121.fits
    fi
    if [[ ! -f frame-r-008056-4-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0057.fits.bz2 > frame-r-008056-4-0057.fits
    fi
    if [[ ! -f frame-r-004800-5-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0100.fits.bz2 > frame-r-004800-5-0100.fits
    fi
    if [[ ! -f frame-r-004829-5-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0115.fits.bz2 > frame-r-004829-5-0115.fits
    fi
    if [[ ! -f frame-r-004829-6-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0119.fits.bz2 > frame-r-004829-6-0119.fits
    fi
    if [[ ! -f frame-r-004800-5-0098.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0098.fits.bz2 > frame-r-004800-5-0098.fits
    fi
    if [[ ! -f frame-r-004800-5-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0099.fits.bz2 > frame-r-004800-5-0099.fits
    fi
    if [[ ! -f frame-r-004829-5-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0118.fits.bz2 > frame-r-004829-5-0118.fits
    fi
    if [[ ! -f frame-r-008056-3-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0059.fits.bz2 > frame-r-008056-3-0059.fits
    fi
    if [[ ! -f frame-r-004800-5-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0093.fits.bz2 > frame-r-004800-5-0093.fits
    fi
    if [[ ! -f frame-r-004800-5-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0094.fits.bz2 > frame-r-004800-5-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0057.fits.bz2 > frame-r-008056-1-0057.fits
    fi
    if [[ ! -f frame-r-004829-5-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0111.fits.bz2 > frame-r-004829-5-0111.fits
    fi
    if [[ ! -f frame-r-004800-5-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0095.fits.bz2 > frame-r-004800-5-0095.fits
    fi
    if [[ ! -f frame-r-004843-5-0053.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0053.fits.bz2 > frame-r-004843-5-0053.fits
    fi
    if [[ ! -f frame-r-004800-5-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0088.fits.bz2 > frame-r-004800-5-0088.fits
    fi
    if [[ ! -f frame-r-004829-5-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0107.fits.bz2 > frame-r-004829-5-0107.fits
    fi
    if [[ ! -f frame-r-004800-5-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0089.fits.bz2 > frame-r-004800-5-0089.fits
    fi
    if [[ ! -f frame-r-004800-5-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0091.fits.bz2 > frame-r-004800-5-0091.fits
    fi
    if [[ ! -f frame-r-004829-5-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0108.fits.bz2 > frame-r-004829-5-0108.fits
    fi
    if [[ ! -f frame-r-004829-5-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0109.fits.bz2 > frame-r-004829-5-0109.fits
    fi
    if [[ ! -f frame-r-004829-5-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0110.fits.bz2 > frame-r-004829-5-0110.fits
    fi
    if [[ ! -f frame-r-008055-5-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0086.fits.bz2 > frame-r-008055-5-0086.fits
    fi
    if [[ ! -f frame-r-008055-5-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0087.fits.bz2 > frame-r-008055-5-0087.fits
    fi
    if [[ ! -f frame-r-004829-6-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/6/frame-r-004829-6-0111.fits.bz2 > frame-r-004829-6-0111.fits
    fi
    if [[ ! -f frame-r-004800-5-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0085.fits.bz2 > frame-r-004800-5-0085.fits
    fi
    if [[ ! -f frame-r-004800-5-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0084.fits.bz2 > frame-r-004800-5-0084.fits
    fi
    if [[ ! -f frame-r-004829-5-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0103.fits.bz2 > frame-r-004829-5-0103.fits
    fi
    if [[ ! -f frame-r-004836-4-0476.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4836/4/frame-r-004836-4-0476.fits.bz2 > frame-r-004836-4-0476.fits
    fi
    if [[ ! -f frame-r-004800-5-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0086.fits.bz2 > frame-r-004800-5-0086.fits
    fi
    if [[ ! -f frame-r-008055-4-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0086.fits.bz2 > frame-r-008055-4-0086.fits
    fi
    if [[ ! -f frame-r-008055-4-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0089.fits.bz2 > frame-r-008055-4-0089.fits
    fi
    if [[ ! -f frame-r-008055-3-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0087.fits.bz2 > frame-r-008055-3-0087.fits
    fi
    if [[ ! -f frame-r-004829-5-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0102.fits.bz2 > frame-r-004829-5-0102.fits
    fi
    if [[ ! -f frame-r-008111-4-0190.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0190.fits.bz2 > frame-r-008111-4-0190.fits
    fi
    if [[ ! -f frame-r-008111-4-0191.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0191.fits.bz2 > frame-r-008111-4-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0153.fits.bz2 > frame-r-004829-4-0153.fits
    fi
    if [[ ! -f frame-r-004829-4-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0152.fits.bz2 > frame-r-004829-4-0152.fits
    fi
    if [[ ! -f frame-r-008111-3-0190.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0190.fits.bz2 > frame-r-008111-3-0190.fits
    fi
    if [[ ! -f frame-r-008111-3-0192.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0192.fits.bz2 > frame-r-008111-3-0192.fits
    fi
    if [[ ! -f frame-r-004829-4-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0150.fits.bz2 > frame-r-004829-4-0150.fits
    fi
    if [[ ! -f frame-r-008111-3-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0193.fits.bz2 > frame-r-008111-3-0193.fits
    fi
    if [[ ! -f frame-r-008112-2-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0051.fits.bz2 > frame-r-008112-2-0051.fits
    fi
    if [[ ! -f frame-r-008112-2-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0052.fits.bz2 > frame-r-008112-2-0052.fits
    fi
    if [[ ! -f frame-r-004829-4-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0148.fits.bz2 > frame-r-004829-4-0148.fits
    fi
    if [[ ! -f frame-r-008111-1-0191.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0191.fits.bz2 > frame-r-008111-1-0191.fits
    fi
    if [[ ! -f frame-r-008111-1-0193.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0193.fits.bz2 > frame-r-008111-1-0193.fits
    fi
    if [[ ! -f frame-r-008111-1-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0194.fits.bz2 > frame-r-008111-1-0194.fits
    fi
    if [[ ! -f frame-r-008111-2-0191.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0191.fits.bz2 > frame-r-008111-2-0191.fits
    fi
    if [[ ! -f frame-r-004829-4-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0147.fits.bz2 > frame-r-004829-4-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0051.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0051.fits.bz2 > frame-r-008112-1-0051.fits
    fi
    if [[ ! -f frame-r-008112-1-0052.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0052.fits.bz2 > frame-r-008112-1-0052.fits
    fi
    if [[ ! -f frame-r-008112-1-0054.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0054.fits.bz2 > frame-r-008112-1-0054.fits
    fi
    if [[ ! -f frame-r-008105-5-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0067.fits.bz2 > frame-r-008105-5-0067.fits
    fi
    if [[ ! -f frame-r-008105-5-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0068.fits.bz2 > frame-r-008105-5-0068.fits
    fi
    if [[ ! -f frame-r-004829-4-0140.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0140.fits.bz2 > frame-r-004829-4-0140.fits
    fi
    if [[ ! -f frame-r-008105-5-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0070.fits.bz2 > frame-r-008105-5-0070.fits
    fi
    if [[ ! -f frame-r-004829-4-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0142.fits.bz2 > frame-r-004829-4-0142.fits
    fi
    if [[ ! -f frame-r-008105-6-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0069.fits.bz2 > frame-r-008105-6-0069.fits
    fi
    if [[ ! -f frame-r-008105-6-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0070.fits.bz2 > frame-r-008105-6-0070.fits
    fi
    if [[ ! -f frame-r-008116-5-0342.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0342.fits.bz2 > frame-r-008116-5-0342.fits
    fi
    if [[ ! -f frame-r-004829-4-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0139.fits.bz2 > frame-r-004829-4-0139.fits
    fi
    if [[ ! -f frame-r-008116-5-0344.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0344.fits.bz2 > frame-r-008116-5-0344.fits
    fi
    if [[ ! -f frame-r-008116-6-0341.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0341.fits.bz2 > frame-r-008116-6-0341.fits
    fi
    if [[ ! -f frame-r-008116-6-0342.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0342.fits.bz2 > frame-r-008116-6-0342.fits
    fi
    if [[ ! -f frame-r-008116-6-0343.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0343.fits.bz2 > frame-r-008116-6-0343.fits
    fi
    if [[ ! -f frame-r-008116-6-0344.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0344.fits.bz2 > frame-r-008116-6-0344.fits
    fi
    if [[ ! -f frame-r-004800-4-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0118.fits.bz2 > frame-r-004800-4-0118.fits
    fi
    if [[ ! -f frame-r-004800-3-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0118.fits.bz2 > frame-r-004800-3-0118.fits
    fi
    if [[ ! -f frame-r-008105-4-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0069.fits.bz2 > frame-r-008105-4-0069.fits
    fi
    if [[ ! -f frame-r-004800-3-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0116.fits.bz2 > frame-r-004800-3-0116.fits
    fi
    if [[ ! -f frame-r-004800-4-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0112.fits.bz2 > frame-r-004800-4-0112.fits
    fi
    if [[ ! -f frame-r-004829-4-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0132.fits.bz2 > frame-r-004829-4-0132.fits
    fi
    if [[ ! -f frame-r-004829-4-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0134.fits.bz2 > frame-r-004829-4-0134.fits
    fi
    if [[ ! -f frame-r-004800-3-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0115.fits.bz2 > frame-r-004800-3-0115.fits
    fi
    if [[ ! -f frame-r-004800-3-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0114.fits.bz2 > frame-r-004800-3-0114.fits
    fi
    if [[ ! -f frame-r-004800-4-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0110.fits.bz2 > frame-r-004800-4-0110.fits
    fi
    if [[ ! -f frame-r-004800-4-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0109.fits.bz2 > frame-r-004800-4-0109.fits
    fi
    if [[ ! -f frame-r-004800-4-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0111.fits.bz2 > frame-r-004800-4-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0109.fits.bz2 > frame-r-004800-3-0109.fits
    fi
    if [[ ! -f frame-r-004800-3-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0111.fits.bz2 > frame-r-004800-3-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0110.fits.bz2 > frame-r-004800-3-0110.fits
    fi
    if [[ ! -f frame-r-004800-3-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0108.fits.bz2 > frame-r-004800-3-0108.fits
    fi
    if [[ ! -f frame-r-004829-4-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0124.fits.bz2 > frame-r-004829-4-0124.fits
    fi
    if [[ ! -f frame-r-004800-3-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0105.fits.bz2 > frame-r-004800-3-0105.fits
    fi
    if [[ ! -f frame-r-004800-3-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0104.fits.bz2 > frame-r-004800-3-0104.fits
    fi
    if [[ ! -f frame-r-004829-4-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0126.fits.bz2 > frame-r-004829-4-0126.fits
    fi
    if [[ ! -f frame-r-004800-4-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0106.fits.bz2 > frame-r-004800-4-0106.fits
    fi
    if [[ ! -f frame-r-004800-4-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0101.fits.bz2 > frame-r-004800-4-0101.fits
    fi
    if [[ ! -f frame-r-004800-4-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0102.fits.bz2 > frame-r-004800-4-0102.fits
    fi
    if [[ ! -f frame-r-004829-4-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0122.fits.bz2 > frame-r-004829-4-0122.fits
    fi
    if [[ ! -f frame-r-004829-4-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0121.fits.bz2 > frame-r-004829-4-0121.fits
    fi
    if [[ ! -f frame-r-004800-3-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0102.fits.bz2 > frame-r-004800-3-0102.fits
    fi
    if [[ ! -f frame-r-004800-3-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0103.fits.bz2 > frame-r-004800-3-0103.fits
    fi
    if [[ ! -f frame-r-004800-4-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0100.fits.bz2 > frame-r-004800-4-0100.fits
    fi
    if [[ ! -f frame-r-004829-4-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0119.fits.bz2 > frame-r-004829-4-0119.fits
    fi
    if [[ ! -f frame-r-004800-4-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0097.fits.bz2 > frame-r-004800-4-0097.fits
    fi
    if [[ ! -f frame-r-004800-4-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0096.fits.bz2 > frame-r-004800-4-0096.fits
    fi
    if [[ ! -f frame-r-004800-3-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0096.fits.bz2 > frame-r-004800-3-0096.fits
    fi
    if [[ ! -f frame-r-004829-4-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0118.fits.bz2 > frame-r-004829-4-0118.fits
    fi
    if [[ ! -f frame-r-004800-3-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0099.fits.bz2 > frame-r-004800-3-0099.fits
    fi
    if [[ ! -f frame-r-004829-4-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0117.fits.bz2 > frame-r-004829-4-0117.fits
    fi
    if [[ ! -f frame-r-004829-4-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0112.fits.bz2 > frame-r-004829-4-0112.fits
    fi
    if [[ ! -f frame-r-004829-4-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0113.fits.bz2 > frame-r-004829-4-0113.fits
    fi
    if [[ ! -f frame-r-004829-4-0114.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0114.fits.bz2 > frame-r-004829-4-0114.fits
    fi
    if [[ ! -f frame-r-004800-4-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0092.fits.bz2 > frame-r-004800-4-0092.fits
    fi
    if [[ ! -f frame-r-004829-4-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0111.fits.bz2 > frame-r-004829-4-0111.fits
    fi
    if [[ ! -f frame-r-004800-3-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0092.fits.bz2 > frame-r-004800-3-0092.fits
    fi
    if [[ ! -f frame-r-004800-3-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0088.fits.bz2 > frame-r-004800-3-0088.fits
    fi
    if [[ ! -f frame-r-004800-4-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0091.fits.bz2 > frame-r-004800-4-0091.fits
    fi
    if [[ ! -f frame-r-004800-4-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0090.fits.bz2 > frame-r-004800-4-0090.fits
    fi
    if [[ ! -f frame-r-004800-3-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0090.fits.bz2 > frame-r-004800-3-0090.fits
    fi
    if [[ ! -f frame-r-004800-3-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0086.fits.bz2 > frame-r-004800-3-0086.fits
    fi
    if [[ ! -f frame-r-004829-4-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0106.fits.bz2 > frame-r-004829-4-0106.fits
    fi
    if [[ ! -f frame-r-004829-4-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0104.fits.bz2 > frame-r-004829-4-0104.fits
    fi
    if [[ ! -f frame-r-004829-4-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0103.fits.bz2 > frame-r-004829-4-0103.fits
    fi
    if [[ ! -f frame-r-004800-3-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0085.fits.bz2 > frame-r-004800-3-0085.fits
    fi
    if [[ ! -f frame-r-004800-3-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/3/frame-r-004800-3-0084.fits.bz2 > frame-r-004800-3-0084.fits
    fi
    if [[ ! -f frame-r-004800-4-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0086.fits.bz2 > frame-r-004800-4-0086.fits
    fi
    if [[ ! -f frame-r-004800-4-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/4/frame-r-004800-4-0087.fits.bz2 > frame-r-004800-4-0087.fits
    fi
    if [[ ! -f frame-r-004829-4-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/4/frame-r-004829-4-0105.fits.bz2 > frame-r-004829-4-0105.fits
    fi
    if [[ ! -f frame-r-008111-4-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0194.fits.bz2 > frame-r-008111-4-0194.fits
    fi
    if [[ ! -f frame-r-004829-3-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0152.fits.bz2 > frame-r-004829-3-0152.fits
    fi
    if [[ ! -f frame-r-008111-4-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0195.fits.bz2 > frame-r-008111-4-0195.fits
    fi
    if [[ ! -f frame-r-008111-4-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/4/frame-r-008111-4-0197.fits.bz2 > frame-r-008111-4-0197.fits
    fi
    if [[ ! -f frame-r-008111-3-0194.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/3/frame-r-008111-3-0194.fits.bz2 > frame-r-008111-3-0194.fits
    fi
    if [[ ! -f frame-r-004829-3-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0149.fits.bz2 > frame-r-004829-3-0149.fits
    fi
    if [[ ! -f frame-r-008112-2-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0055.fits.bz2 > frame-r-008112-2-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0148.fits.bz2 > frame-r-004829-3-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0058.fits.bz2 > frame-r-008112-2-0058.fits
    fi
    if [[ ! -f frame-r-004829-3-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0151.fits.bz2 > frame-r-004829-3-0151.fits
    fi
    if [[ ! -f frame-r-008112-3-0057.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0057.fits.bz2 > frame-r-008112-3-0057.fits
    fi
    if [[ ! -f frame-r-008112-3-0058.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0058.fits.bz2 > frame-r-008112-3-0058.fits
    fi
    if [[ ! -f frame-r-004829-3-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0145.fits.bz2 > frame-r-004829-3-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0195.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0195.fits.bz2 > frame-r-008111-1-0195.fits
    fi
    if [[ ! -f frame-r-004829-3-0146.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0146.fits.bz2 > frame-r-004829-3-0146.fits
    fi
    if [[ ! -f frame-r-008111-2-0196.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0196.fits.bz2 > frame-r-008111-2-0196.fits
    fi
    if [[ ! -f frame-r-008111-2-0197.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/2/frame-r-008111-2-0197.fits.bz2 > frame-r-008111-2-0197.fits
    fi
    if [[ ! -f frame-r-008112-1-0055.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0055.fits.bz2 > frame-r-008112-1-0055.fits
    fi
    if [[ ! -f frame-r-004829-3-0141.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0141.fits.bz2 > frame-r-004829-3-0141.fits
    fi
    if [[ ! -f frame-r-008105-5-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0073.fits.bz2 > frame-r-008105-5-0073.fits
    fi
    if [[ ! -f frame-r-008105-6-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0072.fits.bz2 > frame-r-008105-6-0072.fits
    fi
    if [[ ! -f frame-r-004829-3-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0139.fits.bz2 > frame-r-004829-3-0139.fits
    fi
    if [[ ! -f frame-r-008116-5-0347.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0347.fits.bz2 > frame-r-008116-5-0347.fits
    fi
    if [[ ! -f frame-r-008116-6-0346.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0346.fits.bz2 > frame-r-008116-6-0346.fits
    fi
    if [[ ! -f frame-r-008116-6-0347.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0347.fits.bz2 > frame-r-008116-6-0347.fits
    fi
    if [[ ! -f frame-r-008105-4-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0072.fits.bz2 > frame-r-008105-4-0072.fits
    fi
    if [[ ! -f frame-r-004829-3-0136.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0136.fits.bz2 > frame-r-004829-3-0136.fits
    fi
    if [[ ! -f frame-r-004829-3-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0135.fits.bz2 > frame-r-004829-3-0135.fits
    fi
    if [[ ! -f frame-r-004800-2-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0116.fits.bz2 > frame-r-004800-2-0116.fits
    fi
    if [[ ! -f frame-r-004800-2-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0117.fits.bz2 > frame-r-004800-2-0117.fits
    fi
    if [[ ! -f frame-r-004800-2-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0112.fits.bz2 > frame-r-004800-2-0112.fits
    fi
    if [[ ! -f frame-r-004829-3-0134.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0134.fits.bz2 > frame-r-004829-3-0134.fits
    fi
    if [[ ! -f frame-r-008116-3-0348.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0348.fits.bz2 > frame-r-008116-3-0348.fits
    fi
    if [[ ! -f frame-r-004829-3-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0129.fits.bz2 > frame-r-004829-3-0129.fits
    fi
    if [[ ! -f frame-r-004829-3-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0128.fits.bz2 > frame-r-004829-3-0128.fits
    fi
    if [[ ! -f frame-r-004800-2-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0111.fits.bz2 > frame-r-004800-2-0111.fits
    fi
    if [[ ! -f frame-r-004800-2-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0109.fits.bz2 > frame-r-004800-2-0109.fits
    fi
    if [[ ! -f frame-r-004800-2-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0110.fits.bz2 > frame-r-004800-2-0110.fits
    fi
    if [[ ! -f frame-r-004800-2-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0108.fits.bz2 > frame-r-004800-2-0108.fits
    fi
    if [[ ! -f frame-r-004800-2-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0105.fits.bz2 > frame-r-004800-2-0105.fits
    fi
    if [[ ! -f frame-r-004829-3-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0126.fits.bz2 > frame-r-004829-3-0126.fits
    fi
    if [[ ! -f frame-r-004829-3-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0122.fits.bz2 > frame-r-004829-3-0122.fits
    fi
    if [[ ! -f frame-r-004800-2-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0101.fits.bz2 > frame-r-004800-2-0101.fits
    fi
    if [[ ! -f frame-r-007757-4-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0143.fits.bz2 > frame-r-007757-4-0143.fits
    fi
    if [[ ! -f frame-r-007757-4-0144.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0144.fits.bz2 > frame-r-007757-4-0144.fits
    fi
    if [[ ! -f frame-r-007757-4-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0145.fits.bz2 > frame-r-007757-4-0145.fits
    fi
    if [[ ! -f frame-r-008056-4-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0066.fits.bz2 > frame-r-008056-4-0066.fits
    fi
    if [[ ! -f frame-r-008056-4-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0067.fits.bz2 > frame-r-008056-4-0067.fits
    fi
    if [[ ! -f frame-r-008056-5-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0067.fits.bz2 > frame-r-008056-5-0067.fits
    fi
    if [[ ! -f frame-r-004829-3-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0118.fits.bz2 > frame-r-004829-3-0118.fits
    fi
    if [[ ! -f frame-r-004800-2-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0100.fits.bz2 > frame-r-004800-2-0100.fits
    fi
    if [[ ! -f frame-r-008056-3-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0065.fits.bz2 > frame-r-008056-3-0065.fits
    fi
    if [[ ! -f frame-r-008056-3-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0066.fits.bz2 > frame-r-008056-3-0066.fits
    fi
    if [[ ! -f frame-r-004829-3-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0113.fits.bz2 > frame-r-004829-3-0113.fits
    fi
    if [[ ! -f frame-r-004829-2-0113.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0113.fits.bz2 > frame-r-004829-2-0113.fits
    fi
    if [[ ! -f frame-r-004829-2-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0112.fits.bz2 > frame-r-004829-2-0112.fits
    fi
    if [[ ! -f frame-r-008056-1-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0064.fits.bz2 > frame-r-008056-1-0064.fits
    fi
    if [[ ! -f frame-r-008056-1-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0067.fits.bz2 > frame-r-008056-1-0067.fits
    fi
    if [[ ! -f frame-r-008056-2-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0065.fits.bz2 > frame-r-008056-2-0065.fits
    fi
    if [[ ! -f frame-r-008056-2-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0066.fits.bz2 > frame-r-008056-2-0066.fits
    fi
    if [[ ! -f frame-r-008056-2-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0067.fits.bz2 > frame-r-008056-2-0067.fits
    fi
    if [[ ! -f frame-r-004843-5-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0060.fits.bz2 > frame-r-004843-5-0060.fits
    fi
    if [[ ! -f frame-r-004829-3-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/3/frame-r-004829-3-0110.fits.bz2 > frame-r-004829-3-0110.fits
    fi
    if [[ ! -f frame-r-004843-6-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0062.fits.bz2 > frame-r-004843-6-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0110.fits.bz2 > frame-r-004829-2-0110.fits
    fi
    if [[ ! -f frame-r-004829-2-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0109.fits.bz2 > frame-r-004829-2-0109.fits
    fi
    if [[ ! -f frame-r-008055-5-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0094.fits.bz2 > frame-r-008055-5-0094.fits
    fi
    if [[ ! -f frame-r-008055-5-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0095.fits.bz2 > frame-r-008055-5-0095.fits
    fi
    if [[ ! -f frame-r-008055-5-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0096.fits.bz2 > frame-r-008055-5-0096.fits
    fi
    if [[ ! -f frame-r-008055-5-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0097.fits.bz2 > frame-r-008055-5-0097.fits
    fi
    if [[ ! -f frame-r-004800-2-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0091.fits.bz2 > frame-r-004800-2-0091.fits
    fi
    if [[ ! -f frame-r-004800-2-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0092.fits.bz2 > frame-r-004800-2-0092.fits
    fi
    if [[ ! -f frame-r-004843-4-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0062.fits.bz2 > frame-r-004843-4-0062.fits
    fi
    if [[ ! -f frame-r-004829-2-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0104.fits.bz2 > frame-r-004829-2-0104.fits
    fi
    if [[ ! -f frame-r-004829-2-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0103.fits.bz2 > frame-r-004829-2-0103.fits
    fi
    if [[ ! -f frame-r-004829-2-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0106.fits.bz2 > frame-r-004829-2-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0094.fits.bz2 > frame-r-008055-4-0094.fits
    fi
    if [[ ! -f frame-r-008055-3-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0094.fits.bz2 > frame-r-008055-3-0094.fits
    fi
    if [[ ! -f frame-r-008055-3-0095.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/3/frame-r-008055-3-0095.fits.bz2 > frame-r-008055-3-0095.fits
    fi
    if [[ ! -f frame-r-004829-2-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0150.fits.bz2 > frame-r-004829-2-0150.fits
    fi
    if [[ ! -f frame-r-004829-1-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0149.fits.bz2 > frame-r-004829-1-0149.fits
    fi
    if [[ ! -f frame-r-004829-2-0148.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0148.fits.bz2 > frame-r-004829-2-0148.fits
    fi
    if [[ ! -f frame-r-008112-2-0059.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0059.fits.bz2 > frame-r-008112-2-0059.fits
    fi
    if [[ ! -f frame-r-008112-2-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0060.fits.bz2 > frame-r-008112-2-0060.fits
    fi
    if [[ ! -f frame-r-004829-2-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0151.fits.bz2 > frame-r-004829-2-0151.fits
    fi
    if [[ ! -f frame-r-004829-2-0145.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0145.fits.bz2 > frame-r-004829-2-0145.fits
    fi
    if [[ ! -f frame-r-008111-1-0200.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8111/1/frame-r-008111-1-0200.fits.bz2 > frame-r-008111-1-0200.fits
    fi
    if [[ ! -f frame-r-004829-1-0147.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0147.fits.bz2 > frame-r-004829-1-0147.fits
    fi
    if [[ ! -f frame-r-008112-1-0060.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0060.fits.bz2 > frame-r-008112-1-0060.fits
    fi
    if [[ ! -f frame-r-008105-5-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0074.fits.bz2 > frame-r-008105-5-0074.fits
    fi
    if [[ ! -f frame-r-008105-5-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0076.fits.bz2 > frame-r-008105-5-0076.fits
    fi
    if [[ ! -f frame-r-004829-2-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0143.fits.bz2 > frame-r-004829-2-0143.fits
    fi
    if [[ ! -f frame-r-008105-6-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0075.fits.bz2 > frame-r-008105-6-0075.fits
    fi
    if [[ ! -f frame-r-008105-6-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0076.fits.bz2 > frame-r-008105-6-0076.fits
    fi
    if [[ ! -f frame-r-004829-1-0143.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0143.fits.bz2 > frame-r-004829-1-0143.fits
    fi
    if [[ ! -f frame-r-004829-1-0142.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0142.fits.bz2 > frame-r-004829-1-0142.fits
    fi
    if [[ ! -f frame-r-008116-5-0350.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0350.fits.bz2 > frame-r-008116-5-0350.fits
    fi
    if [[ ! -f frame-r-008116-5-0351.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0351.fits.bz2 > frame-r-008116-5-0351.fits
    fi
    if [[ ! -f frame-r-004829-1-0139.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0139.fits.bz2 > frame-r-004829-1-0139.fits
    fi
    if [[ ! -f frame-r-008105-4-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0074.fits.bz2 > frame-r-008105-4-0074.fits
    fi
    if [[ ! -f frame-r-004829-2-0138.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0138.fits.bz2 > frame-r-004829-2-0138.fits
    fi
    if [[ ! -f frame-r-004829-2-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0137.fits.bz2 > frame-r-004829-2-0137.fits
    fi
    if [[ ! -f frame-r-004800-1-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0118.fits.bz2 > frame-r-004800-1-0118.fits
    fi
    if [[ ! -f frame-r-004829-1-0137.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0137.fits.bz2 > frame-r-004829-1-0137.fits
    fi
    if [[ ! -f frame-r-004829-2-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0135.fits.bz2 > frame-r-004829-2-0135.fits
    fi
    if [[ ! -f frame-r-004829-2-0136.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0136.fits.bz2 > frame-r-004829-2-0136.fits
    fi
    if [[ ! -f frame-r-008116-4-0351.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0351.fits.bz2 > frame-r-008116-4-0351.fits
    fi
    if [[ ! -f frame-r-004829-2-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0132.fits.bz2 > frame-r-004829-2-0132.fits
    fi
    if [[ ! -f frame-r-004829-2-0133.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0133.fits.bz2 > frame-r-004829-2-0133.fits
    fi
    if [[ ! -f frame-r-004800-1-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0112.fits.bz2 > frame-r-004800-1-0112.fits
    fi
    if [[ ! -f frame-r-004829-1-0131.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0131.fits.bz2 > frame-r-004829-1-0131.fits
    fi
    if [[ ! -f frame-r-004829-1-0132.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0132.fits.bz2 > frame-r-004829-1-0132.fits
    fi
    if [[ ! -f frame-r-004800-1-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0115.fits.bz2 > frame-r-004800-1-0115.fits
    fi
    if [[ ! -f frame-r-004829-1-0135.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0135.fits.bz2 > frame-r-004829-1-0135.fits
    fi
    if [[ ! -f frame-r-008116-3-0352.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0352.fits.bz2 > frame-r-008116-3-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0129.fits.bz2 > frame-r-004829-2-0129.fits
    fi
    if [[ ! -f frame-r-004829-2-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0128.fits.bz2 > frame-r-004829-2-0128.fits
    fi
    if [[ ! -f frame-r-004829-1-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0130.fits.bz2 > frame-r-004829-1-0130.fits
    fi
    if [[ ! -f frame-r-004829-2-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0127.fits.bz2 > frame-r-004829-2-0127.fits
    fi
    if [[ ! -f frame-r-004829-1-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0127.fits.bz2 > frame-r-004829-1-0127.fits
    fi
    if [[ ! -f frame-r-008116-2-0351.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0351.fits.bz2 > frame-r-008116-2-0351.fits
    fi
    if [[ ! -f frame-r-008116-2-0352.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0352.fits.bz2 > frame-r-008116-2-0352.fits
    fi
    if [[ ! -f frame-r-004829-2-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0123.fits.bz2 > frame-r-004829-2-0123.fits
    fi
    if [[ ! -f frame-r-004829-2-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0125.fits.bz2 > frame-r-004829-2-0125.fits
    fi
    if [[ ! -f frame-r-004829-2-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0124.fits.bz2 > frame-r-004829-2-0124.fits
    fi
    if [[ ! -f frame-r-004800-1-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0105.fits.bz2 > frame-r-004800-1-0105.fits
    fi
    if [[ ! -f frame-r-004829-1-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0124.fits.bz2 > frame-r-004829-1-0124.fits
    fi
    if [[ ! -f frame-r-004829-1-0123.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0123.fits.bz2 > frame-r-004829-1-0123.fits
    fi
    if [[ ! -f frame-r-004829-2-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0126.fits.bz2 > frame-r-004829-2-0126.fits
    fi
    if [[ ! -f frame-r-008056-5-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0070.fits.bz2 > frame-r-008056-5-0070.fits
    fi
    if [[ ! -f frame-r-004829-2-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0121.fits.bz2 > frame-r-004829-2-0121.fits
    fi
    if [[ ! -f frame-r-004800-1-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0101.fits.bz2 > frame-r-004800-1-0101.fits
    fi
    if [[ ! -f frame-r-004800-1-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0103.fits.bz2 > frame-r-004800-1-0103.fits
    fi
    if [[ ! -f frame-r-004829-1-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0122.fits.bz2 > frame-r-004829-1-0122.fits
    fi
    if [[ ! -f frame-r-004829-2-0119.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0119.fits.bz2 > frame-r-004829-2-0119.fits
    fi
    if [[ ! -f frame-r-004829-2-0120.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0120.fits.bz2 > frame-r-004829-2-0120.fits
    fi
    if [[ ! -f frame-r-008056-4-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0069.fits.bz2 > frame-r-008056-4-0069.fits
    fi
    if [[ ! -f frame-r-008056-4-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0070.fits.bz2 > frame-r-008056-4-0070.fits
    fi
    if [[ ! -f frame-r-008056-4-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0071.fits.bz2 > frame-r-008056-4-0071.fits
    fi
    if [[ ! -f frame-r-004829-2-0115.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0115.fits.bz2 > frame-r-004829-2-0115.fits
    fi
    if [[ ! -f frame-r-004829-2-0116.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0116.fits.bz2 > frame-r-004829-2-0116.fits
    fi
    if [[ ! -f frame-r-004800-1-0097.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0097.fits.bz2 > frame-r-004800-1-0097.fits
    fi
    if [[ ! -f frame-r-004800-1-0096.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0096.fits.bz2 > frame-r-004800-1-0096.fits
    fi
    if [[ ! -f frame-r-004800-1-0100.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0100.fits.bz2 > frame-r-004800-1-0100.fits
    fi
    if [[ ! -f frame-r-004829-1-0118.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0118.fits.bz2 > frame-r-004829-1-0118.fits
    fi
    if [[ ! -f frame-r-004829-2-0117.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0117.fits.bz2 > frame-r-004829-2-0117.fits
    fi
    if [[ ! -f frame-r-008056-3-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0071.fits.bz2 > frame-r-008056-3-0071.fits
    fi
    if [[ ! -f frame-r-004800-1-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0093.fits.bz2 > frame-r-004800-1-0093.fits
    fi
    if [[ ! -f frame-r-004800-1-0094.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0094.fits.bz2 > frame-r-004800-1-0094.fits
    fi
    if [[ ! -f frame-r-008056-1-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0070.fits.bz2 > frame-r-008056-1-0070.fits
    fi
    if [[ ! -f frame-r-008056-1-0071.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0071.fits.bz2 > frame-r-008056-1-0071.fits
    fi
    if [[ ! -f frame-r-008056-2-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0070.fits.bz2 > frame-r-008056-2-0070.fits
    fi
    if [[ ! -f frame-r-004829-1-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0107.fits.bz2 > frame-r-004829-1-0107.fits
    fi
    if [[ ! -f frame-r-004843-6-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0065.fits.bz2 > frame-r-004843-6-0065.fits
    fi
    if [[ ! -f frame-r-008055-5-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0099.fits.bz2 > frame-r-008055-5-0099.fits
    fi
    if [[ ! -f frame-r-004800-1-0091.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/1/frame-r-004800-1-0091.fits.bz2 > frame-r-004800-1-0091.fits
    fi
    if [[ ! -f frame-r-004829-1-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0110.fits.bz2 > frame-r-004829-1-0110.fits
    fi
    if [[ ! -f frame-r-004843-4-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/4/frame-r-004843-4-0065.fits.bz2 > frame-r-004843-4-0065.fits
    fi
    if [[ ! -f frame-r-004829-1-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0103.fits.bz2 > frame-r-004829-1-0103.fits
    fi
    if [[ ! -f frame-r-004829-1-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0104.fits.bz2 > frame-r-004829-1-0104.fits
    fi
    if [[ ! -f frame-r-004829-1-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/1/frame-r-004829-1-0106.fits.bz2 > frame-r-004829-1-0106.fits
    fi
    if [[ ! -f frame-r-008055-4-0099.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0099.fits.bz2 > frame-r-008055-4-0099.fits
    fi
    if [[ ! -f frame-r-007941-3-0032.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/3/frame-r-007941-3-0032.fits.bz2 > frame-r-007941-3-0032.fits
    fi
    if [[ ! -f frame-r-008112-2-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0062.fits.bz2 > frame-r-008112-2-0062.fits
    fi
    if [[ ! -f frame-r-008112-2-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0064.fits.bz2 > frame-r-008112-2-0064.fits
    fi
    if [[ ! -f frame-r-008112-2-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/2/frame-r-008112-2-0065.fits.bz2 > frame-r-008112-2-0065.fits
    fi
    if [[ ! -f frame-r-008112-3-0063.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/3/frame-r-008112-3-0063.fits.bz2 > frame-r-008112-3-0063.fits
    fi
    if [[ ! -f frame-r-007941-1-0031.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0031.fits.bz2 > frame-r-007941-1-0031.fits
    fi
    if [[ ! -f frame-r-007941-2-0029.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0029.fits.bz2 > frame-r-007941-2-0029.fits
    fi
    if [[ ! -f frame-r-007941-2-0032.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0032.fits.bz2 > frame-r-007941-2-0032.fits
    fi
    if [[ ! -f frame-r-008105-6-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0078.fits.bz2 > frame-r-008105-6-0078.fits
    fi
    if [[ ! -f frame-r-008105-6-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0080.fits.bz2 > frame-r-008105-6-0080.fits
    fi
    if [[ ! -f frame-r-008105-6-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0081.fits.bz2 > frame-r-008105-6-0081.fits
    fi
    if [[ ! -f frame-r-008112-1-0062.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0062.fits.bz2 > frame-r-008112-1-0062.fits
    fi
    if [[ ! -f frame-r-008112-1-0064.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0064.fits.bz2 > frame-r-008112-1-0064.fits
    fi
    if [[ ! -f frame-r-008112-1-0065.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0065.fits.bz2 > frame-r-008112-1-0065.fits
    fi
    if [[ ! -f frame-r-008105-5-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0078.fits.bz2 > frame-r-008105-5-0078.fits
    fi
    if [[ ! -f frame-r-008105-5-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0079.fits.bz2 > frame-r-008105-5-0079.fits
    fi
    if [[ ! -f frame-r-008105-5-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0080.fits.bz2 > frame-r-008105-5-0080.fits
    fi
    if [[ ! -f frame-r-008116-5-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0353.fits.bz2 > frame-r-008116-5-0353.fits
    fi
    if [[ ! -f frame-r-008116-5-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0354.fits.bz2 > frame-r-008116-5-0354.fits
    fi
    if [[ ! -f frame-r-008116-5-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0355.fits.bz2 > frame-r-008116-5-0355.fits
    fi
    if [[ ! -f frame-r-008116-5-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0356.fits.bz2 > frame-r-008116-5-0356.fits
    fi
    if [[ ! -f frame-r-008116-6-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0354.fits.bz2 > frame-r-008116-6-0354.fits
    fi
    if [[ ! -f frame-r-008116-6-0355.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0355.fits.bz2 > frame-r-008116-6-0355.fits
    fi
    if [[ ! -f frame-r-008116-6-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0356.fits.bz2 > frame-r-008116-6-0356.fits
    fi
    if [[ ! -f frame-r-008105-4-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0079.fits.bz2 > frame-r-008105-4-0079.fits
    fi
    if [[ ! -f frame-r-008105-4-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0080.fits.bz2 > frame-r-008105-4-0080.fits
    fi
    if [[ ! -f frame-r-008105-4-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0081.fits.bz2 > frame-r-008105-4-0081.fits
    fi
    if [[ ! -f frame-r-008116-4-0356.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0356.fits.bz2 > frame-r-008116-4-0356.fits
    fi
    if [[ ! -f frame-r-008105-2-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0078.fits.bz2 > frame-r-008105-2-0078.fits
    fi
    if [[ ! -f frame-r-008105-2-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0080.fits.bz2 > frame-r-008105-2-0080.fits
    fi
    if [[ ! -f frame-r-008105-2-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0081.fits.bz2 > frame-r-008105-2-0081.fits
    fi
    if [[ ! -f frame-r-008105-3-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0078.fits.bz2 > frame-r-008105-3-0078.fits
    fi
    if [[ ! -f frame-r-008105-3-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0079.fits.bz2 > frame-r-008105-3-0079.fits
    fi
    if [[ ! -f frame-r-008116-3-0354.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0354.fits.bz2 > frame-r-008116-3-0354.fits
    fi
    if [[ ! -f frame-r-008105-1-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0079.fits.bz2 > frame-r-008105-1-0079.fits
    fi
    if [[ ! -f frame-r-008105-1-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0080.fits.bz2 > frame-r-008105-1-0080.fits
    fi
    if [[ ! -f frame-r-008116-1-0353.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0353.fits.bz2 > frame-r-008116-1-0353.fits
    fi
    if [[ ! -f frame-r-007757-5-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0150.fits.bz2 > frame-r-007757-5-0150.fits
    fi
    if [[ ! -f frame-r-007757-5-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0149.fits.bz2 > frame-r-007757-5-0149.fits
    fi
    if [[ ! -f frame-r-007757-5-0151.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0151.fits.bz2 > frame-r-007757-5-0151.fits
    fi
    if [[ ! -f frame-r-007937-6-0174.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0174.fits.bz2 > frame-r-007937-6-0174.fits
    fi
    if [[ ! -f frame-r-007937-6-0176.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0176.fits.bz2 > frame-r-007937-6-0176.fits
    fi
    if [[ ! -f frame-r-007937-6-0177.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0177.fits.bz2 > frame-r-007937-6-0177.fits
    fi
    if [[ ! -f frame-r-008056-5-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0075.fits.bz2 > frame-r-008056-5-0075.fits
    fi
    if [[ ! -f frame-r-008056-6-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0074.fits.bz2 > frame-r-008056-6-0074.fits
    fi
    if [[ ! -f frame-r-007757-4-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0152.fits.bz2 > frame-r-007757-4-0152.fits
    fi
    if [[ ! -f frame-r-008056-4-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0072.fits.bz2 > frame-r-008056-4-0072.fits
    fi
    if [[ ! -f frame-r-007757-2-0152.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0152.fits.bz2 > frame-r-007757-2-0152.fits
    fi
    if [[ ! -f frame-r-007757-3-0150.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0150.fits.bz2 > frame-r-007757-3-0150.fits
    fi
    if [[ ! -f frame-r-007757-3-0149.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0149.fits.bz2 > frame-r-007757-3-0149.fits
    fi
    if [[ ! -f frame-r-008056-3-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0072.fits.bz2 > frame-r-008056-3-0072.fits
    fi
    if [[ ! -f frame-r-008056-3-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0073.fits.bz2 > frame-r-008056-3-0073.fits
    fi
    if [[ ! -f frame-r-008056-3-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0074.fits.bz2 > frame-r-008056-3-0074.fits
    fi
    if [[ ! -f frame-r-008056-3-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0075.fits.bz2 > frame-r-008056-3-0075.fits
    fi
    if [[ ! -f frame-r-007937-1-0174.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0174.fits.bz2 > frame-r-007937-1-0174.fits
    fi
    if [[ ! -f frame-r-007937-1-0175.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0175.fits.bz2 > frame-r-007937-1-0175.fits
    fi
    if [[ ! -f frame-r-007937-1-0177.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0177.fits.bz2 > frame-r-007937-1-0177.fits
    fi
    if [[ ! -f frame-r-008056-1-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0072.fits.bz2 > frame-r-008056-1-0072.fits
    fi
    if [[ ! -f frame-r-008056-1-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0073.fits.bz2 > frame-r-008056-1-0073.fits
    fi
    if [[ ! -f frame-r-008056-1-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0074.fits.bz2 > frame-r-008056-1-0074.fits
    fi
    if [[ ! -f frame-r-008056-2-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0074.fits.bz2 > frame-r-008056-2-0074.fits
    fi
    if [[ ! -f frame-r-004843-5-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0067.fits.bz2 > frame-r-004843-5-0067.fits
    fi
    if [[ ! -f frame-r-004843-5-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0069.fits.bz2 > frame-r-004843-5-0069.fits
    fi
    if [[ ! -f frame-r-004843-6-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0068.fits.bz2 > frame-r-004843-6-0068.fits
    fi
    if [[ ! -f frame-r-004843-6-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0069.fits.bz2 > frame-r-004843-6-0069.fits
    fi
    if [[ ! -f frame-r-008055-5-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0102.fits.bz2 > frame-r-008055-5-0102.fits
    fi
    if [[ ! -f frame-r-008055-5-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0103.fits.bz2 > frame-r-008055-5-0103.fits
    fi
    if [[ ! -f frame-r-008055-6-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0101.fits.bz2 > frame-r-008055-6-0101.fits
    fi
    if [[ ! -f frame-r-008055-6-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0102.fits.bz2 > frame-r-008055-6-0102.fits
    fi
    if [[ ! -f frame-r-008055-6-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0103.fits.bz2 > frame-r-008055-6-0103.fits
    fi
    if [[ ! -f frame-r-008055-6-0104.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0104.fits.bz2 > frame-r-008055-6-0104.fits
    fi
    if [[ ! -f frame-r-008055-4-0101.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0101.fits.bz2 > frame-r-008055-4-0101.fits
    fi
    if [[ ! -f frame-r-008055-4-0102.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0102.fits.bz2 > frame-r-008055-4-0102.fits
    fi
    if [[ ! -f frame-r-008055-4-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/4/frame-r-008055-4-0103.fits.bz2 > frame-r-008055-4-0103.fits
    fi
    if [[ ! -f frame-r-007941-1-0034.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0034.fits.bz2 > frame-r-007941-1-0034.fits
    fi
    if [[ ! -f frame-r-007941-2-0033.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/2/frame-r-007941-2-0033.fits.bz2 > frame-r-007941-2-0033.fits
    fi
    if [[ ! -f frame-r-008105-6-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0083.fits.bz2 > frame-r-008105-6-0083.fits
    fi
    if [[ ! -f frame-r-008105-6-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/6/frame-r-008105-6-0084.fits.bz2 > frame-r-008105-6-0084.fits
    fi
    if [[ ! -f frame-r-008112-1-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0066.fits.bz2 > frame-r-008112-1-0066.fits
    fi
    if [[ ! -f frame-r-008112-1-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0067.fits.bz2 > frame-r-008112-1-0067.fits
    fi
    if [[ ! -f frame-r-008112-1-0068.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0068.fits.bz2 > frame-r-008112-1-0068.fits
    fi
    if [[ ! -f frame-r-008112-1-0069.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0069.fits.bz2 > frame-r-008112-1-0069.fits
    fi
    if [[ ! -f frame-r-008105-5-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0082.fits.bz2 > frame-r-008105-5-0082.fits
    fi
    if [[ ! -f frame-r-008105-5-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0085.fits.bz2 > frame-r-008105-5-0085.fits
    fi
    if [[ ! -f frame-r-008116-5-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0359.fits.bz2 > frame-r-008116-5-0359.fits
    fi
    if [[ ! -f frame-r-008116-6-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0357.fits.bz2 > frame-r-008116-6-0357.fits
    fi
    if [[ ! -f frame-r-008116-6-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0360.fits.bz2 > frame-r-008116-6-0360.fits
    fi
    if [[ ! -f frame-r-008105-4-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0082.fits.bz2 > frame-r-008105-4-0082.fits
    fi
    if [[ ! -f frame-r-008105-4-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0085.fits.bz2 > frame-r-008105-4-0085.fits
    fi
    if [[ ! -f frame-r-008116-4-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0358.fits.bz2 > frame-r-008116-4-0358.fits
    fi
    if [[ ! -f frame-r-008116-4-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0360.fits.bz2 > frame-r-008116-4-0360.fits
    fi
    if [[ ! -f frame-r-008105-2-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0083.fits.bz2 > frame-r-008105-2-0083.fits
    fi
    if [[ ! -f frame-r-008105-2-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0084.fits.bz2 > frame-r-008105-2-0084.fits
    fi
    if [[ ! -f frame-r-008116-3-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0357.fits.bz2 > frame-r-008116-3-0357.fits
    fi
    if [[ ! -f frame-r-008116-3-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0358.fits.bz2 > frame-r-008116-3-0358.fits
    fi
    if [[ ! -f frame-r-008116-3-0359.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0359.fits.bz2 > frame-r-008116-3-0359.fits
    fi
    if [[ ! -f frame-r-008116-3-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0360.fits.bz2 > frame-r-008116-3-0360.fits
    fi
    if [[ ! -f frame-r-008105-1-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0082.fits.bz2 > frame-r-008105-1-0082.fits
    fi
    if [[ ! -f frame-r-008105-1-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0083.fits.bz2 > frame-r-008105-1-0083.fits
    fi
    if [[ ! -f frame-r-008105-1-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0085.fits.bz2 > frame-r-008105-1-0085.fits
    fi
    if [[ ! -f frame-r-008116-1-0357.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0357.fits.bz2 > frame-r-008116-1-0357.fits
    fi
    if [[ ! -f frame-r-008116-1-0358.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0358.fits.bz2 > frame-r-008116-1-0358.fits
    fi
    if [[ ! -f frame-r-008116-1-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0360.fits.bz2 > frame-r-008116-1-0360.fits
    fi
    if [[ ! -f frame-r-008116-2-0360.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0360.fits.bz2 > frame-r-008116-2-0360.fits
    fi
    if [[ ! -f frame-r-007757-5-0154.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0154.fits.bz2 > frame-r-007757-5-0154.fits
    fi
    if [[ ! -f frame-r-007937-6-0178.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0178.fits.bz2 > frame-r-007937-6-0178.fits
    fi
    if [[ ! -f frame-r-007937-6-0181.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0181.fits.bz2 > frame-r-007937-6-0181.fits
    fi
    if [[ ! -f frame-r-008056-5-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0076.fits.bz2 > frame-r-008056-5-0076.fits
    fi
    if [[ ! -f frame-r-008056-5-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0078.fits.bz2 > frame-r-008056-5-0078.fits
    fi
    if [[ ! -f frame-r-008056-5-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0079.fits.bz2 > frame-r-008056-5-0079.fits
    fi
    if [[ ! -f frame-r-008056-6-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0076.fits.bz2 > frame-r-008056-6-0076.fits
    fi
    if [[ ! -f frame-r-008056-6-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0077.fits.bz2 > frame-r-008056-6-0077.fits
    fi
    if [[ ! -f frame-r-008056-6-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0078.fits.bz2 > frame-r-008056-6-0078.fits
    fi
    if [[ ! -f frame-r-008056-6-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0079.fits.bz2 > frame-r-008056-6-0079.fits
    fi
    if [[ ! -f frame-r-007757-4-0153.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0153.fits.bz2 > frame-r-007757-4-0153.fits
    fi
    if [[ ! -f frame-r-007757-4-0155.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0155.fits.bz2 > frame-r-007757-4-0155.fits
    fi
    if [[ ! -f frame-r-007757-4-0156.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0156.fits.bz2 > frame-r-007757-4-0156.fits
    fi
    if [[ ! -f frame-r-008056-4-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0077.fits.bz2 > frame-r-008056-4-0077.fits
    fi
    if [[ ! -f frame-r-008056-4-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/4/frame-r-008056-4-0079.fits.bz2 > frame-r-008056-4-0079.fits
    fi
    if [[ ! -f frame-r-007757-2-0154.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0154.fits.bz2 > frame-r-007757-2-0154.fits
    fi
    if [[ ! -f frame-r-007757-2-0156.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0156.fits.bz2 > frame-r-007757-2-0156.fits
    fi
    if [[ ! -f frame-r-007757-3-0154.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0154.fits.bz2 > frame-r-007757-3-0154.fits
    fi
    if [[ ! -f frame-r-007757-3-0155.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0155.fits.bz2 > frame-r-007757-3-0155.fits
    fi
    if [[ ! -f frame-r-008056-3-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0076.fits.bz2 > frame-r-008056-3-0076.fits
    fi
    if [[ ! -f frame-r-008056-3-0078.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0078.fits.bz2 > frame-r-008056-3-0078.fits
    fi
    if [[ ! -f frame-r-008056-3-0079.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0079.fits.bz2 > frame-r-008056-3-0079.fits
    fi
    if [[ ! -f frame-r-007937-1-0178.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0178.fits.bz2 > frame-r-007937-1-0178.fits
    fi
    if [[ ! -f frame-r-007937-1-0179.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0179.fits.bz2 > frame-r-007937-1-0179.fits
    fi
    if [[ ! -f frame-r-007937-1-0180.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0180.fits.bz2 > frame-r-007937-1-0180.fits
    fi
    if [[ ! -f frame-r-007937-1-0181.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0181.fits.bz2 > frame-r-007937-1-0181.fits
    fi
    if [[ ! -f frame-r-008056-1-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0077.fits.bz2 > frame-r-008056-1-0077.fits
    fi
    if [[ ! -f frame-r-008056-2-0077.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0077.fits.bz2 > frame-r-008056-2-0077.fits
    fi
    if [[ ! -f frame-r-004843-5-0073.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/5/frame-r-004843-5-0073.fits.bz2 > frame-r-004843-5-0073.fits
    fi
    if [[ ! -f frame-r-004843-6-0072.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0072.fits.bz2 > frame-r-004843-6-0072.fits
    fi
    if [[ ! -f frame-r-004843-6-0074.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0074.fits.bz2 > frame-r-004843-6-0074.fits
    fi
    if [[ ! -f frame-r-004843-6-0075.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0075.fits.bz2 > frame-r-004843-6-0075.fits
    fi
    if [[ ! -f frame-r-008055-5-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0105.fits.bz2 > frame-r-008055-5-0105.fits
    fi
    if [[ ! -f frame-r-008055-5-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0106.fits.bz2 > frame-r-008055-5-0106.fits
    fi
    if [[ ! -f frame-r-008055-5-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/5/frame-r-008055-5-0108.fits.bz2 > frame-r-008055-5-0108.fits
    fi
    if [[ ! -f frame-r-008055-6-0105.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0105.fits.bz2 > frame-r-008055-6-0105.fits
    fi
    if [[ ! -f frame-r-008055-6-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0106.fits.bz2 > frame-r-008055-6-0106.fits
    fi
    if [[ ! -f frame-r-007941-1-0037.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0037.fits.bz2 > frame-r-007941-1-0037.fits
    fi
    if [[ ! -f frame-r-007941-1-0038.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7941/1/frame-r-007941-1-0038.fits.bz2 > frame-r-007941-1-0038.fits
    fi
    if [[ ! -f frame-r-008112-1-0070.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8112/1/frame-r-008112-1-0070.fits.bz2 > frame-r-008112-1-0070.fits
    fi
    if [[ ! -f frame-r-008105-5-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0086.fits.bz2 > frame-r-008105-5-0086.fits
    fi
    if [[ ! -f frame-r-008105-5-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0088.fits.bz2 > frame-r-008105-5-0088.fits
    fi
    if [[ ! -f frame-r-008105-5-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0089.fits.bz2 > frame-r-008105-5-0089.fits
    fi
    if [[ ! -f frame-r-008116-5-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0361.fits.bz2 > frame-r-008116-5-0361.fits
    fi
    if [[ ! -f frame-r-008116-5-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0362.fits.bz2 > frame-r-008116-5-0362.fits
    fi
    if [[ ! -f frame-r-008116-5-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0363.fits.bz2 > frame-r-008116-5-0363.fits
    fi
    if [[ ! -f frame-r-008116-6-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0362.fits.bz2 > frame-r-008116-6-0362.fits
    fi
    if [[ ! -f frame-r-008116-6-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/6/frame-r-008116-6-0363.fits.bz2 > frame-r-008116-6-0363.fits
    fi
    if [[ ! -f frame-r-008105-4-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0086.fits.bz2 > frame-r-008105-4-0086.fits
    fi
    if [[ ! -f frame-r-008105-4-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0087.fits.bz2 > frame-r-008105-4-0087.fits
    fi
    if [[ ! -f frame-r-008105-4-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0089.fits.bz2 > frame-r-008105-4-0089.fits
    fi
    if [[ ! -f frame-r-008105-2-0089.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0089.fits.bz2 > frame-r-008105-2-0089.fits
    fi
    if [[ ! -f frame-r-008105-3-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0086.fits.bz2 > frame-r-008105-3-0086.fits
    fi
    if [[ ! -f frame-r-008105-3-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0087.fits.bz2 > frame-r-008105-3-0087.fits
    fi
    if [[ ! -f frame-r-008105-3-0088.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/3/frame-r-008105-3-0088.fits.bz2 > frame-r-008105-3-0088.fits
    fi
    if [[ ! -f frame-r-008116-3-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0362.fits.bz2 > frame-r-008116-3-0362.fits
    fi
    if [[ ! -f frame-r-008105-1-0086.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0086.fits.bz2 > frame-r-008105-1-0086.fits
    fi
    if [[ ! -f frame-r-008116-1-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0363.fits.bz2 > frame-r-008116-1-0363.fits
    fi
    if [[ ! -f frame-r-008116-2-0361.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0361.fits.bz2 > frame-r-008116-2-0361.fits
    fi
    if [[ ! -f frame-r-008116-2-0362.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0362.fits.bz2 > frame-r-008116-2-0362.fits
    fi
    if [[ ! -f frame-r-008116-2-0363.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0363.fits.bz2 > frame-r-008116-2-0363.fits
    fi
    if [[ ! -f frame-r-008116-2-0364.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0364.fits.bz2 > frame-r-008116-2-0364.fits
    fi
    if [[ ! -f frame-r-007757-5-0157.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0157.fits.bz2 > frame-r-007757-5-0157.fits
    fi
    if [[ ! -f frame-r-007757-5-0159.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0159.fits.bz2 > frame-r-007757-5-0159.fits
    fi
    if [[ ! -f frame-r-007937-6-0182.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0182.fits.bz2 > frame-r-007937-6-0182.fits
    fi
    if [[ ! -f frame-r-007937-6-0184.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0184.fits.bz2 > frame-r-007937-6-0184.fits
    fi
    if [[ ! -f frame-r-007937-6-0185.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0185.fits.bz2 > frame-r-007937-6-0185.fits
    fi
    if [[ ! -f frame-r-008056-6-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0081.fits.bz2 > frame-r-008056-6-0081.fits
    fi
    if [[ ! -f frame-r-008056-6-0082.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0082.fits.bz2 > frame-r-008056-6-0082.fits
    fi
    if [[ ! -f frame-r-007757-4-0158.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0158.fits.bz2 > frame-r-007757-4-0158.fits
    fi
    if [[ ! -f frame-r-007757-4-0159.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0159.fits.bz2 > frame-r-007757-4-0159.fits
    fi
    if [[ ! -f frame-r-007757-3-0157.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0157.fits.bz2 > frame-r-007757-3-0157.fits
    fi
    if [[ ! -f frame-r-007757-3-0158.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0158.fits.bz2 > frame-r-007757-3-0158.fits
    fi
    if [[ ! -f frame-r-007757-3-0159.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0159.fits.bz2 > frame-r-007757-3-0159.fits
    fi
    if [[ ! -f frame-r-007757-3-0160.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0160.fits.bz2 > frame-r-007757-3-0160.fits
    fi
    if [[ ! -f frame-r-008056-3-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0080.fits.bz2 > frame-r-008056-3-0080.fits
    fi
    if [[ ! -f frame-r-008056-3-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0081.fits.bz2 > frame-r-008056-3-0081.fits
    fi
    if [[ ! -f frame-r-007937-1-0185.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/1/frame-r-007937-1-0185.fits.bz2 > frame-r-007937-1-0185.fits
    fi
    if [[ ! -f frame-r-008056-1-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/1/frame-r-008056-1-0081.fits.bz2 > frame-r-008056-1-0081.fits
    fi
    if [[ ! -f frame-r-008056-2-0080.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0080.fits.bz2 > frame-r-008056-2-0080.fits
    fi
    if [[ ! -f frame-r-008056-2-0081.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0081.fits.bz2 > frame-r-008056-2-0081.fits
    fi
    if [[ ! -f frame-r-004843-6-0076.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4843/6/frame-r-004843-6-0076.fits.bz2 > frame-r-004843-6-0076.fits
    fi
    if [[ ! -f frame-r-008055-6-0111.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8055/6/frame-r-008055-6-0111.fits.bz2 > frame-r-008055-6-0111.fits
    fi
    if [[ ! -f frame-r-008105-5-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/5/frame-r-008105-5-0090.fits.bz2 > frame-r-008105-5-0090.fits
    fi
    if [[ ! -f frame-r-008116-5-0366.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/5/frame-r-008116-5-0366.fits.bz2 > frame-r-008116-5-0366.fits
    fi
    if [[ ! -f frame-r-008105-4-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/4/frame-r-008105-4-0090.fits.bz2 > frame-r-008105-4-0090.fits
    fi
    if [[ ! -f frame-r-008116-4-0366.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0366.fits.bz2 > frame-r-008116-4-0366.fits
    fi
    if [[ ! -f frame-r-008116-4-0367.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/4/frame-r-008116-4-0367.fits.bz2 > frame-r-008116-4-0367.fits
    fi
    if [[ ! -f frame-r-008105-2-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0090.fits.bz2 > frame-r-008105-2-0090.fits
    fi
    if [[ ! -f frame-r-008116-3-0365.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0365.fits.bz2 > frame-r-008116-3-0365.fits
    fi
    if [[ ! -f frame-r-008116-3-0367.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0367.fits.bz2 > frame-r-008116-3-0367.fits
    fi
    if [[ ! -f frame-r-008105-1-0090.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0090.fits.bz2 > frame-r-008105-1-0090.fits
    fi
    if [[ ! -f frame-r-008105-1-0092.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0092.fits.bz2 > frame-r-008105-1-0092.fits
    fi
    if [[ ! -f frame-r-008116-1-0367.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0367.fits.bz2 > frame-r-008116-1-0367.fits
    fi
    if [[ ! -f frame-r-008116-2-0366.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0366.fits.bz2 > frame-r-008116-2-0366.fits
    fi
    if [[ ! -f frame-r-007757-5-0161.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0161.fits.bz2 > frame-r-007757-5-0161.fits
    fi
    if [[ ! -f frame-r-007757-5-0162.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0162.fits.bz2 > frame-r-007757-5-0162.fits
    fi
    if [[ ! -f frame-r-007937-6-0189.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7937/6/frame-r-007937-6-0189.fits.bz2 > frame-r-007937-6-0189.fits
    fi
    if [[ ! -f frame-r-008056-6-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0084.fits.bz2 > frame-r-008056-6-0084.fits
    fi
    if [[ ! -f frame-r-007757-4-0161.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0161.fits.bz2 > frame-r-007757-4-0161.fits
    fi
    if [[ ! -f frame-r-007757-4-0164.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/4/frame-r-007757-4-0164.fits.bz2 > frame-r-007757-4-0164.fits
    fi
    if [[ ! -f frame-r-007757-2-0161.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0161.fits.bz2 > frame-r-007757-2-0161.fits
    fi
    if [[ ! -f frame-r-007757-2-0162.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/2/frame-r-007757-2-0162.fits.bz2 > frame-r-007757-2-0162.fits
    fi
    if [[ ! -f frame-r-007757-3-0162.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0162.fits.bz2 > frame-r-007757-3-0162.fits
    fi
    if [[ ! -f frame-r-007757-3-0163.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/3/frame-r-007757-3-0163.fits.bz2 > frame-r-007757-3-0163.fits
    fi
    if [[ ! -f frame-r-008056-3-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0083.fits.bz2 > frame-r-008056-3-0083.fits
    fi
    if [[ ! -f frame-r-008056-3-0085.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/3/frame-r-008056-3-0085.fits.bz2 > frame-r-008056-3-0085.fits
    fi
    if [[ ! -f frame-r-008056-2-0083.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0083.fits.bz2 > frame-r-008056-2-0083.fits
    fi
    if [[ ! -f frame-r-008056-2-0084.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/2/frame-r-008056-2-0084.fits.bz2 > frame-r-008056-2-0084.fits
    fi
    if [[ ! -f frame-r-008105-2-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/2/frame-r-008105-2-0093.fits.bz2 > frame-r-008105-2-0093.fits
    fi
    if [[ ! -f frame-r-008116-3-0368.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/3/frame-r-008116-3-0368.fits.bz2 > frame-r-008116-3-0368.fits
    fi
    if [[ ! -f frame-r-008105-1-0093.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8105/1/frame-r-008105-1-0093.fits.bz2 > frame-r-008105-1-0093.fits
    fi
    if [[ ! -f frame-r-007757-5-0165.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/7757/5/frame-r-007757-5-0165.fits.bz2 > frame-r-007757-5-0165.fits
    fi
    if [[ ! -f frame-r-008056-5-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0087.fits.bz2 > frame-r-008056-5-0087.fits
    fi
    if [[ ! -f frame-r-008056-6-0087.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/6/frame-r-008056-6-0087.fits.bz2 > frame-r-008056-6-0087.fits
    fi
fi
#
# Filter = r
#
/bin/rm -f default.swarp
cat > default.swarp <<EOT
IMAGEOUT_NAME          J011700.00+280000.0-r.fits      # Output filename
WEIGHTOUT_NAME       J011700.00+280000.0-r.weight.fits # Output weight-map filename

HEADER_ONLY            N               # Only a header as an output file (Y/N)?
HEADER_SUFFIX          .head           # Filename extension for additional headers

#------------------------------- Input Weights --------------------------------

WEIGHT_TYPE            NONE            # BACKGROUND,MAP_RMS,MAP_VARIANCE
                                       # or MAP_WEIGHT
WEIGHT_SUFFIX          weight.fits     # Suffix to use for weight-maps
WEIGHT_IMAGE                           # Weightmap filename if suffix not used
                                       # (all or for each weight-map)

#------------------------------- Co-addition ----------------------------------

COMBINE                Y               # Combine resampled images (Y/N)?
COMBINE_TYPE           MEDIAN          # MEDIAN,AVERAGE,MIN,MAX,WEIGHTED,CHI2
                                       # or SUM

#-------------------------------- Astrometry ----------------------------------

CELESTIAL_TYPE         NATIVE          # NATIVE, PIXEL, EQUATORIAL,
                                       # GALACTIC,ECLIPTIC, or SUPERGALACTIC
PROJECTION_TYPE        TAN             # Any WCS projection code or NONE
PROJECTION_ERR         0.001           # Maximum projection error (in output
                                       # pixels), or 0 for no approximation
CENTER_TYPE            MANUAL          # MANUAL, ALL or MOST
CENTER                        19.2500000000,       28.0000000000 # Image Center
PIXELSCALE_TYPE        MANUAL          # MANUAL,FIT,MIN,MAX or MEDIAN
PIXEL_SCALE            0.396000  # Pixel scale
IMAGE_SIZE             45454,45454 # scale = 0.396127 arcsec/pixel

#-------------------------------- Resampling ----------------------------------

RESAMPLE               Y               # Resample input images (Y/N)?
RESAMPLE_DIR           .               # Directory path for resampled images
RESAMPLE_SUFFIX        .resamp.fits    # filename extension for resampled images

RESAMPLING_TYPE        LANCZOS3        # NEAREST,BILINEAR,LANCZOS2,LANCZOS3
                                       # or LANCZOS4 (1 per axis)
OVERSAMPLING           0               # Oversampling in each dimension
                                       # (0 = automatic)
INTERPOLATE            N               # Interpolate bad input pixels (Y/N)?
                                       # (all or for each image)

FSCALASTRO_TYPE        FIXED           # NONE,FIXED, or VARIABLE
FSCALE_KEYWORD         FLXSCALE        # FITS keyword for the multiplicative
                                       # factor applied to each input image
FSCALE_DEFAULT         1.0             # Default FSCALE value if not in header

GAIN_KEYWORD           GAIN            # FITS keyword for effect. gain (e-/ADU)
GAIN_DEFAULT           0.0             # Default gain if no FITS keyword found

#--------------------------- Background subtraction ---------------------------

SUBTRACT_BACK          N               # Subtraction sky background (Y/N)?
                                       # (all or for each image)

BACK_TYPE              AUTO            # AUTO or MANUAL
                                       # (all or for each image)
BACK_DEFAULT           0.0             # Default background value in MANUAL
                                       # (all or for each image)
BACK_SIZE              128             # Background mesh size (pixels)
                                       # (all or for each image)
BACK_FILTERSIZE        3               # Background map filter range (meshes)
                                       # (all or for each image)

#------------------------------ Memory management -----------------------------

VMEM_DIR               .               # Directory path for swap files
VMEM_MAX               110000            # Maximum amount of virtual memory (MB)
MEM_MAX                110000            # Maximum amount of usable RAM (MB)
COMBINE_BUFSIZE        20000            # Buffer size for combine (MB)

#------------------------------ Miscellaneous ---------------------------------

DELETE_TMPFILES        Y               # Delete temporary resampled FITS files
                                       # (Y/N)?
COPY_KEYWORDS          OBJECT          # List of FITS keywords to propagate
                                       # from the input to the output headers
WRITE_FILEINFO         Y               # Write information about each input
                                       # file in the output image header?
WRITE_XML              N               # Write XML file (Y/N)?
XML_NAME               swarp.xml       # Filename for XML output
VERBOSE_TYPE           NORMAL           # QUIET,NORMAL or FULL

NTHREADS               0               # Number of simultaneous threads for
                                       # the SMP version of SWarp
                                       # 0 = automatic

EOT
#
swarp frame-r-008105-1-0043.fits frame-r-008116-2-0318.fits frame-r-007757-5-0114.fits frame-r-007757-5-0115.fits frame-r-007757-6-0114.fits frame-r-008056-5-0037.fits frame-r-008105-5-0047.fits frame-r-008105-4-0045.fits frame-r-008105-4-0047.fits frame-r-008116-4-0319.fits frame-r-008105-2-0047.fits frame-r-008105-3-0045.fits frame-r-008105-3-0046.fits frame-r-008105-3-0047.fits frame-r-008116-3-0320.fits frame-r-008116-3-0321.fits frame-r-008105-1-0045.fits frame-r-008105-1-0046.fits frame-r-008105-1-0047.fits frame-r-008116-1-0319.fits frame-r-008116-1-0320.fits frame-r-008116-1-0322.fits frame-r-007757-5-0117.fits frame-r-007757-5-0118.fits frame-r-007757-6-0116.fits frame-r-007757-6-0118.fits frame-r-008056-5-0040.fits frame-r-008056-5-0041.fits frame-r-008056-6-0038.fits frame-r-008056-6-0039.fits frame-r-007757-4-0117.fits frame-r-007757-4-0118.fits frame-r-008056-4-0040.fits frame-r-007757-2-0117.fits frame-r-007757-3-0116.fits frame-r-007757-3-0118.fits frame-r-008056-3-0040.fits frame-r-007757-1-0118.fits frame-r-008111-1-0175.fits frame-r-008112-1-0035.fits frame-r-008105-5-0048.fits frame-r-008105-5-0051.fits frame-r-008105-6-0049.fits frame-r-008105-6-0051.fits frame-r-008116-5-0324.fits frame-r-008116-5-0325.fits frame-r-008116-6-0323.fits frame-r-008116-6-0324.fits frame-r-008105-4-0048.fits frame-r-008116-4-0323.fits frame-r-008116-4-0324.fits frame-r-008105-2-0048.fits frame-r-008105-2-0051.fits frame-r-008105-3-0048.fits frame-r-008116-3-0323.fits frame-r-008105-1-0049.fits frame-r-008116-1-0326.fits frame-r-008116-2-0323.fits frame-r-008116-2-0326.fits frame-r-007757-5-0120.fits frame-r-007757-5-0122.fits frame-r-007757-6-0121.fits frame-r-008056-5-0042.fits frame-r-008056-5-0043.fits frame-r-008056-6-0042.fits frame-r-008056-6-0043.fits frame-r-008056-6-0044.fits frame-r-007757-4-0120.fits frame-r-007757-4-0121.fits frame-r-008056-4-0042.fits frame-r-008056-4-0044.fits frame-r-007757-2-0121.fits frame-r-007757-2-0122.fits frame-r-007757-3-0121.fits frame-r-008056-3-0042.fits frame-r-008056-3-0044.fits frame-r-008056-3-0045.fits frame-r-007757-1-0120.fits frame-r-007757-1-0121.fits frame-r-007757-1-0122.fits frame-r-008056-1-0043.fits frame-r-008056-1-0044.fits frame-r-008056-1-0045.fits frame-r-008056-2-0045.fits frame-r-004843-6-0041.fits frame-r-008055-6-0072.fits frame-r-008112-2-0038.fits frame-r-008111-1-0177.fits frame-r-008111-2-0176.fits frame-r-008111-2-0177.fits frame-r-008111-2-0178.fits frame-r-008112-1-0036.fits frame-r-008112-1-0039.fits frame-r-008105-5-0052.fits frame-r-008105-5-0054.fits frame-r-008105-6-0052.fits frame-r-008105-6-0053.fits frame-r-008105-6-0055.fits frame-r-008116-5-0327.fits frame-r-008116-5-0328.fits frame-r-008116-5-0329.fits frame-r-008116-6-0329.fits frame-r-008116-6-0330.fits frame-r-008105-4-0052.fits frame-r-008105-4-0053.fits frame-r-008116-4-0327.fits frame-r-008116-4-0328.fits frame-r-008116-4-0329.fits frame-r-008105-2-0053.fits frame-r-008105-2-0054.fits frame-r-008105-2-0055.fits frame-r-008105-3-0052.fits frame-r-008105-3-0053.fits frame-r-008105-3-0054.fits frame-r-008105-3-0055.fits frame-r-008116-3-0327.fits frame-r-008116-3-0328.fits frame-r-008116-3-0329.fits frame-r-008116-3-0330.fits frame-r-008105-1-0053.fits frame-r-008105-1-0054.fits frame-r-008116-1-0328.fits frame-r-008116-1-0330.fits frame-r-008116-2-0330.fits frame-r-007757-5-0126.fits frame-r-007757-6-0125.fits frame-r-008056-6-0048.fits frame-r-007757-4-0126.fits frame-r-007757-3-0124.fits frame-r-008056-3-0047.fits frame-r-007757-1-0123.fits frame-r-007757-1-0124.fits frame-r-007757-1-0126.fits frame-r-008056-1-0046.fits frame-r-008056-1-0048.fits frame-r-008056-2-0046.fits frame-r-008056-2-0047.fits frame-r-004843-5-0045.fits frame-r-004843-6-0042.fits frame-r-008055-6-0076.fits frame-r-008055-6-0077.fits frame-r-008055-6-0078.fits frame-r-008112-2-0040.fits frame-r-008112-2-0042.fits frame-r-008112-2-0043.fits frame-r-008112-3-0043.fits frame-r-008111-1-0181.fits frame-r-008111-1-0182.fits frame-r-008111-2-0179.fits frame-r-008111-2-0180.fits frame-r-008111-2-0181.fits frame-r-008111-2-0182.fits frame-r-008112-1-0040.fits frame-r-008112-1-0041.fits frame-r-008112-1-0043.fits frame-r-008105-5-0056.fits frame-r-008105-5-0057.fits frame-r-008105-5-0058.fits frame-r-008105-6-0056.fits frame-r-008105-6-0057.fits frame-r-008116-5-0331.fits frame-r-008116-5-0332.fits frame-r-008116-6-0331.fits frame-r-008116-6-0333.fits frame-r-008105-4-0057.fits frame-r-008116-4-0331.fits frame-r-008105-2-0056.fits frame-r-008105-2-0057.fits frame-r-008105-2-0058.fits frame-r-008105-3-0056.fits frame-r-008105-3-0057.fits frame-r-008116-3-0332.fits frame-r-008105-1-0057.fits frame-r-008105-1-0058.fits frame-r-008116-1-0332.fits frame-r-008116-2-0332.fits frame-r-008116-2-0333.fits frame-r-007757-5-0127.fits frame-r-007757-5-0128.fits frame-r-007757-6-0128.fits frame-r-007757-6-0130.fits frame-r-008056-5-0049.fits frame-r-008056-6-0052.fits frame-r-007757-4-0129.fits frame-r-007757-4-0130.fits frame-r-008056-4-0050.fits frame-r-008056-4-0052.fits frame-r-007757-2-0127.fits frame-r-007757-2-0128.fits frame-r-007757-3-0127.fits frame-r-007757-3-0128.fits frame-r-007757-3-0129.fits frame-r-008056-3-0049.fits frame-r-008056-3-0051.fits frame-r-008056-3-0052.fits frame-r-008056-1-0049.fits frame-r-008056-1-0051.fits frame-r-008056-2-0049.fits frame-r-008056-2-0051.fits frame-r-008056-2-0052.fits frame-r-004843-5-0046.fits frame-r-004843-5-0048.fits frame-r-004843-6-0047.fits frame-r-004843-6-0048.fits frame-r-008055-5-0079.fits frame-r-008055-5-0081.fits frame-r-008055-5-0082.fits frame-r-008055-6-0079.fits frame-r-008055-6-0082.fits frame-r-008111-3-0184.fits frame-r-008111-3-0185.fits frame-r-008112-2-0044.fits frame-r-008112-2-0046.fits frame-r-008112-3-0044.fits frame-r-008112-3-0045.fits frame-r-008112-3-0047.fits frame-r-008111-1-0183.fits frame-r-008111-1-0184.fits frame-r-008111-1-0186.fits frame-r-008111-2-0183.fits frame-r-008111-2-0184.fits frame-r-008111-2-0186.fits frame-r-008112-1-0046.fits frame-r-008105-5-0060.fits frame-r-008105-5-0062.fits frame-r-008116-5-0334.fits frame-r-008116-5-0336.fits frame-r-008116-5-0337.fits frame-r-008116-6-0334.fits frame-r-008105-4-0059.fits frame-r-008105-4-0061.fits frame-r-008116-4-0334.fits frame-r-008116-4-0336.fits frame-r-008105-2-0059.fits frame-r-008105-3-0059.fits frame-r-008105-3-0060.fits frame-r-008105-3-0061.fits frame-r-004800-6-0115.fits frame-r-004800-6-0116.fits frame-r-008116-3-0335.fits frame-r-008116-3-0336.fits frame-r-008116-3-0337.fits frame-r-008105-1-0059.fits frame-r-008105-1-0061.fits frame-r-004800-6-0111.fits frame-r-008116-1-0334.fits frame-r-008116-1-0335.fits frame-r-008116-1-0336.fits frame-r-008116-1-0337.fits frame-r-008116-2-0335.fits frame-r-008116-2-0337.fits frame-r-007757-5-0131.fits frame-r-007757-6-0132.fits frame-r-008056-5-0055.fits frame-r-008056-5-0056.fits frame-r-008056-6-0053.fits frame-r-007757-4-0132.fits frame-r-004800-6-0102.fits frame-r-008056-4-0053.fits frame-r-008056-4-0055.fits frame-r-008056-4-0056.fits frame-r-004800-6-0096.fits frame-r-007757-3-0132.fits frame-r-008056-3-0053.fits frame-r-008056-3-0054.fits frame-r-008056-3-0055.fits frame-r-008056-3-0056.fits frame-r-007757-1-0131.fits frame-r-007757-1-0132.fits frame-r-004800-6-0093.fits frame-r-008056-1-0053.fits frame-r-008056-1-0055.fits frame-r-008056-2-0053.fits frame-r-008056-2-0055.fits frame-r-008056-2-0056.fits frame-r-004843-5-0049.fits frame-r-004843-5-0051.fits frame-r-004836-6-0471.fits frame-r-004836-6-0472.fits frame-r-008055-5-0083.fits frame-r-008055-5-0084.fits frame-r-008055-5-0085.fits frame-r-008055-6-0085.fits frame-r-004843-4-0049.fits frame-r-004843-4-0051.fits frame-r-004829-6-0152.fits frame-r-008111-4-0188.fits frame-r-004829-5-0153.fits frame-r-004829-5-0152.fits frame-r-004829-6-0149.fits frame-r-004829-6-0150.fits frame-r-008111-3-0188.fits frame-r-008111-3-0189.fits frame-r-004829-5-0150.fits frame-r-004829-6-0148.fits frame-r-008112-2-0048.fits frame-r-004829-6-0151.fits frame-r-008112-3-0048.fits frame-r-008112-3-0049.fits frame-r-004829-6-0145.fits frame-r-004829-6-0144.fits frame-r-008111-1-0188.fits frame-r-008111-1-0189.fits frame-r-004829-6-0146.fits frame-r-004829-6-0147.fits frame-r-004829-5-0146.fits frame-r-008112-1-0048.fits frame-r-008105-5-0065.fits frame-r-004829-5-0141.fits frame-r-004829-6-0143.fits frame-r-008105-6-0064.fits frame-r-008105-6-0065.fits frame-r-004829-5-0142.fits frame-r-004829-5-0139.fits frame-r-004829-6-0138.fits frame-r-004800-5-0118.fits frame-r-008105-4-0065.fits frame-r-004829-5-0138.fits frame-r-004829-5-0135.fits frame-r-004829-5-0136.fits frame-r-004829-6-0133.fits frame-r-004829-6-0132.fits frame-r-004800-5-0113.fits frame-r-004800-5-0112.fits frame-r-004829-5-0131.fits frame-r-004829-5-0132.fits frame-r-004829-6-0134.fits frame-r-004800-5-0115.fits frame-r-004829-5-0134.fits frame-r-004800-5-0114.fits frame-r-008105-1-0063.fits frame-r-008105-1-0064.fits frame-r-004800-5-0110.fits frame-r-004829-5-0129.fits frame-r-004800-5-0108.fits frame-r-008116-2-0339.fits frame-r-004829-6-0125.fits frame-r-004800-5-0104.fits frame-r-004829-5-0123.fits frame-r-004829-5-0125.fits frame-r-004800-5-0106.fits frame-r-004829-6-0122.fits frame-r-004800-5-0103.fits frame-r-008056-4-0058.fits frame-r-004829-5-0119.fits frame-r-004829-6-0116.fits frame-r-004829-6-0115.fits frame-r-004800-5-0097.fits frame-r-004800-5-0096.fits frame-r-004829-5-0116.fits frame-r-004829-6-0118.fits frame-r-008056-3-0057.fits frame-r-008056-3-0058.fits frame-r-004829-5-0117.fits frame-r-004829-6-0112.fits frame-r-004829-6-0113.fits frame-r-004829-5-0112.fits frame-r-004829-5-0113.fits frame-r-004800-5-0092.fits frame-r-008056-2-0057.fits frame-r-004829-5-0114.fits frame-r-004843-6-0053.fits frame-r-004800-5-0090.fits frame-r-004829-6-0110.fits frame-r-004843-4-0053.fits frame-r-004836-4-0477.fits frame-r-004800-5-0087.fits frame-r-004829-5-0106.fits frame-r-008055-4-0087.fits frame-r-008055-4-0088.fits frame-r-004829-5-0105.fits frame-r-008055-3-0086.fits frame-r-004800-5-0083.fits frame-r-004829-4-0144.fits frame-r-008111-4-0192.fits frame-r-008111-4-0193.fits frame-r-008111-3-0191.fits frame-r-004829-4-0149.fits frame-r-008112-2-0054.fits frame-r-008112-3-0051.fits frame-r-008112-3-0052.fits frame-r-004829-4-0151.fits frame-r-008112-3-0054.fits frame-r-008111-1-0190.fits frame-r-004829-4-0145.fits frame-r-008111-1-0192.fits frame-r-008111-2-0190.fits frame-r-004829-4-0146.fits frame-r-008111-2-0192.fits frame-r-008111-2-0193.fits frame-r-008111-2-0194.fits frame-r-004829-4-0141.fits frame-r-008105-5-0069.fits frame-r-008105-6-0067.fits frame-r-008105-6-0068.fits frame-r-004829-4-0143.fits frame-r-008116-5-0341.fits frame-r-008116-5-0343.fits frame-r-008116-5-0345.fits frame-r-008116-6-0345.fits frame-r-008105-4-0067.fits frame-r-008105-4-0068.fits frame-r-004829-4-0138.fits frame-r-004829-4-0137.fits frame-r-008105-4-0070.fits frame-r-004800-4-0116.fits frame-r-004800-4-0117.fits frame-r-004829-4-0135.fits frame-r-004829-4-0136.fits frame-r-004800-3-0117.fits frame-r-004800-4-0113.fits frame-r-004829-4-0131.fits frame-r-004829-4-0133.fits frame-r-004800-3-0112.fits frame-r-004800-3-0113.fits frame-r-004800-4-0115.fits frame-r-004800-4-0114.fits frame-r-004829-4-0128.fits frame-r-004829-4-0129.fits frame-r-004829-4-0130.fits frame-r-004800-4-0108.fits frame-r-004829-4-0127.fits frame-r-004800-4-0104.fits frame-r-004800-4-0105.fits frame-r-004829-4-0123.fits frame-r-004829-4-0125.fits frame-r-004800-3-0106.fits frame-r-004800-4-0107.fits frame-r-004800-3-0107.fits frame-r-004800-4-0103.fits frame-r-004800-3-0101.fits frame-r-004829-4-0120.fits frame-r-004800-3-0100.fits frame-r-004829-4-0115.fits frame-r-004829-4-0116.fits frame-r-004800-3-0097.fits frame-r-004800-4-0098.fits frame-r-004800-4-0099.fits frame-r-004800-3-0098.fits frame-r-004800-4-0093.fits frame-r-004800-4-0094.fits frame-r-004800-3-0093.fits frame-r-004800-3-0094.fits frame-r-004800-4-0095.fits frame-r-004800-3-0095.fits frame-r-004800-4-0088.fits frame-r-004829-4-0107.fits frame-r-004800-4-0089.fits frame-r-004829-4-0108.fits frame-r-004829-4-0110.fits frame-r-004829-4-0109.fits frame-r-004800-3-0091.fits frame-r-004800-3-0089.fits frame-r-004800-4-0085.fits frame-r-004800-4-0084.fits frame-r-004836-4-0478.fits frame-r-004800-3-0087.fits frame-r-008055-4-0092.fits frame-r-008055-4-0093.fits frame-r-004800-4-0083.fits frame-r-004829-4-0102.fits frame-r-008055-3-0092.fits frame-r-008055-3-0093.fits frame-r-008111-4-0196.fits frame-r-008111-3-0195.fits frame-r-004829-3-0150.fits frame-r-008111-3-0196.fits frame-r-008111-3-0197.fits frame-r-008112-2-0057.fits frame-r-008112-3-0055.fits frame-r-004829-3-0144.fits frame-r-008111-1-0196.fits frame-r-008111-1-0197.fits frame-r-008111-2-0195.fits frame-r-004829-3-0147.fits frame-r-008112-1-0057.fits frame-r-008112-1-0058.fits frame-r-008105-5-0071.fits frame-r-004829-3-0140.fits frame-r-008105-5-0072.fits frame-r-008105-6-0071.fits frame-r-004829-3-0143.fits frame-r-004829-3-0142.fits frame-r-008105-6-0073.fits frame-r-008116-5-0346.fits frame-r-008116-5-0348.fits frame-r-008116-6-0348.fits frame-r-008105-4-0071.fits frame-r-004829-3-0138.fits frame-r-004829-3-0137.fits frame-r-004800-2-0118.fits frame-r-008105-4-0073.fits frame-r-004829-3-0133.fits frame-r-004829-3-0132.fits frame-r-004829-3-0131.fits frame-r-004800-2-0113.fits frame-r-004800-2-0115.fits frame-r-008116-3-0347.fits frame-r-004829-3-0130.fits frame-r-004829-3-0127.fits frame-r-004829-3-0123.fits frame-r-004829-3-0125.fits frame-r-004829-3-0124.fits frame-r-004800-2-0104.fits frame-r-004800-2-0106.fits frame-r-004800-2-0107.fits frame-r-004829-3-0121.fits frame-r-004800-2-0102.fits frame-r-004829-3-0120.fits frame-r-004829-3-0119.fits frame-r-008056-5-0066.fits frame-r-004829-3-0115.fits frame-r-004829-3-0116.fits frame-r-004800-2-0097.fits frame-r-004800-2-0096.fits frame-r-004800-2-0099.fits frame-r-008056-3-0067.fits frame-r-004829-3-0112.fits frame-r-004829-3-0114.fits frame-r-004800-2-0093.fits frame-r-004800-2-0094.fits frame-r-004829-2-0114.fits frame-r-008056-1-0065.fits frame-r-008056-1-0066.fits frame-r-004829-2-0111.fits frame-r-004843-5-0061.fits frame-r-004843-5-0062.fits frame-r-004829-2-0107.fits frame-r-004843-5-0063.fits frame-r-004843-6-0060.fits frame-r-004843-6-0061.fits frame-r-004843-6-0063.fits frame-r-004829-2-0108.fits frame-r-004829-3-0111.fits frame-r-004843-4-0060.fits frame-r-004843-4-0061.fits frame-r-004843-4-0063.fits frame-r-008055-4-0095.fits frame-r-008055-4-0096.fits frame-r-004829-2-0105.fits frame-r-008055-3-0096.fits frame-r-004829-2-0152.fits frame-r-004829-2-0149.fits frame-r-008111-3-0199.fits frame-r-008111-3-0200.fits frame-r-004829-1-0150.fits frame-r-008112-2-0061.fits frame-r-004829-1-0148.fits frame-r-008112-3-0059.fits frame-r-008112-3-0060.fits frame-r-008112-3-0061.fits frame-r-004829-1-0151.fits frame-r-004829-2-0144.fits frame-r-008111-1-0199.fits frame-r-004829-1-0145.fits frame-r-004829-1-0144.fits frame-r-004829-2-0146.fits frame-r-004829-2-0147.fits frame-r-008111-2-0199.fits frame-r-004829-1-0146.fits frame-r-008111-2-0200.fits frame-r-008112-1-0059.fits frame-r-008112-1-0061.fits frame-r-004829-2-0140.fits frame-r-004829-2-0141.fits frame-r-008105-5-0075.fits frame-r-004829-1-0140.fits frame-r-004829-1-0141.fits frame-r-008105-6-0074.fits frame-r-004829-2-0142.fits frame-r-004829-2-0139.fits frame-r-008116-6-0350.fits frame-r-008116-6-0351.fits frame-r-008105-4-0075.fits frame-r-008105-4-0076.fits frame-r-004829-1-0138.fits frame-r-008116-4-0350.fits frame-r-008116-4-0352.fits frame-r-004829-2-0131.fits frame-r-004800-1-0113.fits frame-r-004829-1-0133.fits frame-r-004829-2-0134.fits frame-r-004800-1-0116.fits frame-r-004829-1-0134.fits frame-r-004800-1-0114.fits frame-r-008116-3-0351.fits frame-r-004829-2-0130.fits frame-r-004800-1-0111.fits frame-r-004800-1-0110.fits frame-r-004800-1-0109.fits frame-r-004829-1-0128.fits frame-r-004829-1-0129.fits frame-r-004800-1-0108.fits frame-r-008116-2-0350.fits frame-r-004800-1-0104.fits frame-r-004800-1-0106.fits frame-r-004829-1-0125.fits frame-r-004800-1-0107.fits frame-r-004829-1-0126.fits frame-r-008056-5-0071.fits frame-r-004829-2-0122.fits frame-r-004800-1-0102.fits frame-r-004829-1-0121.fits frame-r-004829-1-0116.fits frame-r-004829-1-0115.fits frame-r-004829-2-0118.fits frame-r-004800-1-0099.fits frame-r-004829-1-0119.fits frame-r-008056-3-0069.fits frame-r-008056-3-0070.fits frame-r-004829-1-0112.fits frame-r-004829-1-0114.fits frame-r-004829-1-0113.fits frame-r-008056-1-0069.fits frame-r-008056-2-0069.fits frame-r-008056-2-0071.fits frame-r-004843-5-0065.fits frame-r-004843-5-0066.fits frame-r-004843-6-0066.fits frame-r-004843-6-0067.fits frame-r-008055-5-0098.fits frame-r-008055-5-0100.fits frame-r-004800-1-0092.fits frame-r-004829-1-0111.fits frame-r-004843-4-0066.fits frame-r-008055-4-0098.fits frame-r-008055-4-0100.fits frame-r-007941-3-0029.fits frame-r-007941-3-0030.fits frame-r-007941-3-0031.fits frame-r-008112-2-0063.fits frame-r-008112-3-0062.fits frame-r-007941-1-0029.fits frame-r-007941-1-0030.fits frame-r-007941-1-0032.fits frame-r-007941-2-0030.fits frame-r-007941-2-0031.fits frame-r-008105-6-0079.fits frame-r-008112-1-0063.fits frame-r-008105-5-0081.fits frame-r-008116-6-0353.fits frame-r-008105-4-0078.fits frame-r-008116-4-0353.fits frame-r-008116-4-0354.fits frame-r-008116-4-0355.fits frame-r-008105-2-0079.fits frame-r-008105-3-0080.fits frame-r-008105-3-0081.fits frame-r-008116-3-0353.fits frame-r-008116-3-0355.fits frame-r-008116-3-0356.fits frame-r-008105-1-0078.fits frame-r-008105-1-0081.fits frame-r-008116-1-0354.fits frame-r-008116-1-0355.fits frame-r-008116-1-0356.fits frame-r-008116-2-0353.fits frame-r-008116-2-0354.fits frame-r-008116-2-0355.fits frame-r-008116-2-0356.fits frame-r-007757-5-0152.fits frame-r-007937-6-0175.fits frame-r-008056-5-0072.fits frame-r-008056-5-0073.fits frame-r-008056-5-0074.fits frame-r-008056-6-0072.fits frame-r-008056-6-0073.fits frame-r-008056-6-0075.fits frame-r-007757-4-0150.fits frame-r-007757-4-0149.fits frame-r-007757-4-0151.fits frame-r-008056-4-0073.fits frame-r-008056-4-0074.fits frame-r-008056-4-0075.fits frame-r-007757-2-0150.fits frame-r-007757-2-0149.fits frame-r-007757-2-0151.fits frame-r-007757-3-0151.fits frame-r-007757-3-0152.fits frame-r-007937-1-0176.fits frame-r-008056-1-0075.fits frame-r-008056-2-0072.fits frame-r-008056-2-0073.fits frame-r-008056-2-0075.fits frame-r-004843-5-0068.fits frame-r-004843-5-0070.fits frame-r-004843-5-0071.fits frame-r-004843-6-0070.fits frame-r-004843-6-0071.fits frame-r-008055-5-0101.fits frame-r-008055-5-0104.fits frame-r-004843-4-0067.fits frame-r-004843-4-0068.fits frame-r-008055-4-0104.fits frame-r-008112-2-0066.fits frame-r-008112-2-0067.fits frame-r-007941-1-0033.fits frame-r-007941-1-0035.fits frame-r-007941-1-0036.fits frame-r-007941-2-0034.fits frame-r-007941-2-0035.fits frame-r-007941-2-0036.fits frame-r-008105-6-0082.fits frame-r-008105-6-0085.fits frame-r-008105-5-0083.fits frame-r-008105-5-0084.fits frame-r-008116-5-0357.fits frame-r-008116-5-0358.fits frame-r-008116-5-0360.fits frame-r-008116-6-0358.fits frame-r-008116-6-0359.fits frame-r-008105-4-0083.fits frame-r-008105-4-0084.fits frame-r-008116-4-0357.fits frame-r-008116-4-0359.fits frame-r-008105-2-0082.fits frame-r-008105-2-0085.fits frame-r-008105-3-0082.fits frame-r-008105-3-0083.fits frame-r-008105-3-0084.fits frame-r-008105-3-0085.fits frame-r-008105-1-0084.fits frame-r-008116-1-0359.fits frame-r-008116-2-0357.fits frame-r-008116-2-0358.fits frame-r-008116-2-0359.fits frame-r-007757-5-0153.fits frame-r-007757-5-0155.fits frame-r-007757-5-0156.fits frame-r-007937-6-0179.fits frame-r-007937-6-0180.fits frame-r-008056-5-0077.fits frame-r-007757-4-0154.fits frame-r-008056-4-0076.fits frame-r-008056-4-0078.fits frame-r-007757-2-0153.fits frame-r-007757-2-0155.fits frame-r-007757-3-0153.fits frame-r-007757-3-0156.fits frame-r-008056-3-0077.fits frame-r-008056-1-0076.fits frame-r-008056-1-0078.fits frame-r-008056-1-0079.fits frame-r-008056-2-0076.fits frame-r-008056-2-0078.fits frame-r-008056-2-0079.fits frame-r-004843-5-0072.fits frame-r-004843-6-0073.fits frame-r-008055-5-0107.fits frame-r-008055-6-0107.fits frame-r-008055-6-0108.fits frame-r-007941-1-0039.fits frame-r-008105-6-0086.fits frame-r-008105-6-0087.fits frame-r-008105-6-0088.fits frame-r-008112-1-0071.fits frame-r-008105-5-0087.fits frame-r-008116-5-0364.fits frame-r-008116-6-0361.fits frame-r-008116-6-0364.fits frame-r-008105-4-0088.fits frame-r-008116-4-0361.fits frame-r-008116-4-0362.fits frame-r-008116-4-0363.fits frame-r-008116-4-0364.fits frame-r-008105-2-0086.fits frame-r-008105-2-0087.fits frame-r-008105-2-0088.fits frame-r-008105-3-0089.fits frame-r-008116-3-0361.fits frame-r-008116-3-0363.fits frame-r-008116-3-0364.fits frame-r-008105-1-0087.fits frame-r-008105-1-0088.fits frame-r-008105-1-0089.fits frame-r-008116-1-0361.fits frame-r-008116-1-0362.fits frame-r-008116-1-0364.fits frame-r-007757-5-0158.fits frame-r-007757-5-0160.fits frame-r-007937-6-0183.fits frame-r-008056-5-0080.fits frame-r-008056-5-0081.fits frame-r-008056-5-0082.fits frame-r-008056-6-0080.fits frame-r-008056-6-0083.fits frame-r-007757-4-0157.fits frame-r-007757-4-0160.fits frame-r-008056-4-0080.fits frame-r-008056-4-0081.fits frame-r-008056-4-0082.fits frame-r-007757-2-0157.fits frame-r-007757-2-0158.fits frame-r-007757-2-0159.fits frame-r-007757-2-0160.fits frame-r-008056-3-0082.fits frame-r-007937-1-0182.fits frame-r-007937-1-0183.fits frame-r-007937-1-0184.fits frame-r-008056-1-0080.fits frame-r-008056-1-0082.fits frame-r-008056-2-0082.fits frame-r-008055-6-0109.fits frame-r-008055-6-0110.fits frame-r-008116-5-0365.fits frame-r-008105-4-0091.fits frame-r-008116-4-0365.fits frame-r-008105-2-0091.fits frame-r-008105-2-0092.fits frame-r-008105-3-0090.fits frame-r-008105-3-0091.fits frame-r-008105-3-0092.fits frame-r-008116-3-0366.fits frame-r-008105-1-0091.fits frame-r-008116-1-0365.fits frame-r-008116-1-0366.fits frame-r-008116-2-0365.fits frame-r-008116-2-0367.fits frame-r-007757-5-0163.fits frame-r-007757-5-0164.fits frame-r-007937-6-0186.fits frame-r-007937-6-0187.fits frame-r-007937-6-0188.fits frame-r-008056-5-0083.fits frame-r-008056-5-0084.fits frame-r-008056-5-0085.fits frame-r-008056-5-0086.fits frame-r-008056-6-0085.fits frame-r-008056-6-0086.fits frame-r-007757-4-0162.fits frame-r-007757-4-0163.fits frame-r-008056-4-0083.fits frame-r-008056-4-0084.fits frame-r-008056-4-0085.fits frame-r-008056-4-0086.fits frame-r-007757-3-0161.fits frame-r-008056-3-0084.fits frame-r-008116-1-0368.fits frame-r-008116-2-0368.fits frame-r-007937-6-0190.fits frame-r-008105-2-0043.fits frame-r-008116-3-0318.fits frame-r-008116-1-0318.fits frame-r-007757-6-0115.fits frame-r-008056-6-0037.fits frame-r-007757-4-0115.fits frame-r-008105-5-0046.fits frame-r-008116-5-0320.fits frame-r-008116-5-0321.fits frame-r-008116-5-0322.fits frame-r-008116-6-0322.fits frame-r-008105-4-0046.fits frame-r-008116-4-0320.fits frame-r-008116-4-0321.fits frame-r-008116-4-0322.fits frame-r-008105-2-0044.fits frame-r-008105-2-0045.fits frame-r-008105-2-0046.fits frame-r-008105-3-0044.fits frame-r-008116-3-0319.fits frame-r-008116-3-0322.fits frame-r-008105-1-0044.fits frame-r-008116-1-0321.fits frame-r-008116-2-0319.fits frame-r-008116-2-0320.fits frame-r-008116-2-0321.fits frame-r-008116-2-0322.fits frame-r-007757-5-0116.fits frame-r-007757-6-0117.fits frame-r-008056-5-0038.fits frame-r-008056-5-0039.fits frame-r-008056-6-0040.fits frame-r-008056-6-0041.fits frame-r-007757-4-0116.fits frame-r-008056-4-0038.fits frame-r-008056-4-0039.fits frame-r-008056-4-0041.fits frame-r-007757-2-0118.fits frame-r-007757-3-0117.fits frame-r-008056-3-0039.fits frame-r-008056-3-0041.fits frame-r-008056-2-0040.fits frame-r-008056-2-0041.fits frame-r-008111-1-0173.fits frame-r-008111-1-0174.fits frame-r-008105-5-0049.fits frame-r-008105-5-0050.fits frame-r-008105-6-0048.fits frame-r-008105-6-0050.fits frame-r-008116-5-0323.fits frame-r-008116-5-0326.fits frame-r-008116-6-0325.fits frame-r-008116-6-0326.fits frame-r-008105-4-0049.fits frame-r-008105-4-0050.fits frame-r-008105-4-0051.fits frame-r-008116-4-0325.fits frame-r-008116-4-0326.fits frame-r-008105-2-0049.fits frame-r-008105-2-0050.fits frame-r-008105-3-0049.fits frame-r-008105-3-0050.fits frame-r-008105-3-0051.fits frame-r-008116-3-0324.fits frame-r-008116-3-0325.fits frame-r-008116-3-0326.fits frame-r-008105-1-0048.fits frame-r-008105-1-0050.fits frame-r-008105-1-0051.fits frame-r-008116-1-0323.fits frame-r-008116-1-0324.fits frame-r-008116-1-0325.fits frame-r-008116-2-0324.fits frame-r-008116-2-0325.fits frame-r-007757-5-0119.fits frame-r-007757-5-0121.fits frame-r-007757-6-0119.fits frame-r-007757-6-0120.fits frame-r-007757-6-0122.fits frame-r-008056-5-0044.fits frame-r-008056-5-0045.fits frame-r-008056-6-0045.fits frame-r-007757-4-0119.fits frame-r-007757-4-0122.fits frame-r-008056-4-0043.fits frame-r-008056-4-0045.fits frame-r-007757-2-0119.fits frame-r-007757-2-0120.fits frame-r-007757-3-0119.fits frame-r-007757-3-0120.fits frame-r-007757-3-0122.fits frame-r-008056-3-0043.fits frame-r-007757-1-0119.fits frame-r-008056-1-0042.fits frame-r-008056-2-0042.fits frame-r-008056-2-0043.fits frame-r-008056-2-0044.fits frame-r-004843-6-0040.fits frame-r-008055-6-0073.fits frame-r-008055-6-0074.fits frame-r-008112-2-0039.fits frame-r-008111-1-0176.fits frame-r-008111-1-0178.fits frame-r-008112-1-0037.fits frame-r-008112-1-0038.fits frame-r-008105-5-0053.fits frame-r-008105-5-0055.fits frame-r-008105-6-0054.fits frame-r-008116-5-0330.fits frame-r-008116-6-0327.fits frame-r-008116-6-0328.fits frame-r-008105-4-0054.fits frame-r-008105-4-0055.fits frame-r-008116-4-0330.fits frame-r-008105-2-0052.fits frame-r-008105-1-0052.fits frame-r-008105-1-0055.fits frame-r-008116-1-0327.fits frame-r-008116-1-0329.fits frame-r-008116-2-0327.fits frame-r-008116-2-0328.fits frame-r-008116-2-0329.fits frame-r-007757-5-0123.fits frame-r-007757-5-0124.fits frame-r-007757-5-0125.fits frame-r-007757-6-0123.fits frame-r-007757-6-0124.fits frame-r-007757-6-0126.fits frame-r-008056-5-0046.fits frame-r-008056-5-0047.fits frame-r-008056-5-0048.fits frame-r-008056-6-0046.fits frame-r-008056-6-0047.fits frame-r-007757-4-0123.fits frame-r-007757-4-0124.fits frame-r-007757-4-0125.fits frame-r-008056-4-0046.fits frame-r-008056-4-0047.fits frame-r-008056-4-0048.fits frame-r-007757-2-0123.fits frame-r-007757-2-0124.fits frame-r-007757-2-0125.fits frame-r-007757-2-0126.fits frame-r-007757-3-0123.fits frame-r-007757-3-0125.fits frame-r-007757-3-0126.fits frame-r-008056-3-0046.fits frame-r-008056-3-0048.fits frame-r-007757-1-0125.fits frame-r-008056-1-0047.fits frame-r-008056-2-0048.fits frame-r-004843-5-0043.fits frame-r-004843-5-0044.fits frame-r-004843-6-0043.fits frame-r-004843-6-0044.fits frame-r-004843-6-0045.fits frame-r-008055-5-0075.fits frame-r-008055-5-0076.fits frame-r-008055-5-0077.fits frame-r-008055-5-0078.fits frame-r-008055-6-0075.fits frame-r-008111-3-0180.fits frame-r-008111-3-0181.fits frame-r-008111-3-0182.fits frame-r-008112-2-0041.fits frame-r-008111-1-0179.fits frame-r-008111-1-0180.fits frame-r-008112-1-0042.fits frame-r-008105-6-0058.fits frame-r-008116-5-0333.fits frame-r-008116-6-0332.fits frame-r-008105-4-0056.fits frame-r-008105-4-0058.fits frame-r-008116-4-0332.fits frame-r-008116-4-0333.fits frame-r-008105-3-0058.fits frame-r-008116-3-0331.fits frame-r-008116-3-0333.fits frame-r-008105-1-0056.fits frame-r-008116-1-0331.fits frame-r-008116-1-0333.fits frame-r-008116-2-0331.fits frame-r-007757-5-0129.fits frame-r-007757-5-0130.fits frame-r-007757-6-0127.fits frame-r-007757-6-0129.fits frame-r-008056-5-0050.fits frame-r-008056-5-0051.fits frame-r-008056-5-0052.fits frame-r-008056-6-0049.fits frame-r-008056-6-0050.fits frame-r-008056-6-0051.fits frame-r-007757-4-0127.fits frame-r-007757-4-0128.fits frame-r-008056-4-0049.fits frame-r-008056-4-0051.fits frame-r-007757-2-0129.fits frame-r-007757-2-0130.fits frame-r-007757-3-0130.fits frame-r-008056-3-0050.fits frame-r-007757-1-0127.fits frame-r-007757-1-0128.fits frame-r-007757-1-0129.fits frame-r-007757-1-0130.fits frame-r-008056-1-0050.fits frame-r-008056-1-0052.fits frame-r-008056-2-0050.fits frame-r-004843-5-0047.fits frame-r-004843-6-0046.fits frame-r-008055-5-0080.fits frame-r-008055-6-0080.fits frame-r-008055-6-0081.fits frame-r-004843-4-0048.fits frame-r-008055-4-0079.fits frame-r-008055-4-0080.fits frame-r-008055-4-0081.fits frame-r-008055-4-0082.fits frame-r-008111-3-0183.fits frame-r-008111-3-0186.fits frame-r-008112-2-0045.fits frame-r-008112-2-0047.fits frame-r-008112-3-0046.fits frame-r-008111-1-0185.fits frame-r-008111-2-0185.fits frame-r-008112-1-0044.fits frame-r-008112-1-0045.fits frame-r-008112-1-0047.fits frame-r-008105-5-0059.fits frame-r-008105-5-0061.fits frame-r-008105-6-0059.fits frame-r-008105-6-0060.fits frame-r-008105-6-0061.fits frame-r-008105-6-0062.fits frame-r-008116-5-0335.fits frame-r-008116-6-0335.fits frame-r-008116-6-0336.fits frame-r-008116-6-0337.fits frame-r-008105-4-0060.fits frame-r-004800-6-0118.fits frame-r-008105-4-0062.fits frame-r-008116-4-0335.fits frame-r-008116-4-0337.fits frame-r-008105-2-0060.fits frame-r-008105-2-0061.fits frame-r-004800-6-0113.fits frame-r-004800-6-0112.fits frame-r-008116-3-0334.fits frame-r-008105-1-0060.fits frame-r-004800-6-0110.fits frame-r-004800-6-0109.fits frame-r-008116-2-0334.fits frame-r-008116-2-0336.fits frame-r-007757-5-0132.fits frame-r-004800-6-0104.fits frame-r-004800-6-0105.fits frame-r-007757-6-0131.fits frame-r-004800-6-0107.fits frame-r-004800-6-0108.fits frame-r-008056-5-0053.fits frame-r-008056-5-0054.fits frame-r-008056-6-0054.fits frame-r-008056-6-0055.fits frame-r-004800-6-0106.fits frame-r-007757-4-0131.fits frame-r-004800-6-0101.fits frame-r-004800-6-0103.fits frame-r-008056-4-0054.fits frame-r-007757-2-0131.fits frame-r-007757-2-0132.fits frame-r-004800-6-0097.fits frame-r-007757-3-0131.fits frame-r-004800-6-0098.fits frame-r-004800-6-0100.fits frame-r-004800-6-0099.fits frame-r-004800-6-0094.fits frame-r-008056-1-0054.fits frame-r-008056-1-0056.fits frame-r-008056-2-0054.fits frame-r-004843-5-0050.fits frame-r-004843-5-0052.fits frame-r-004843-6-0049.fits frame-r-004843-6-0051.fits frame-r-004843-6-0052.fits frame-r-008055-6-0083.fits frame-r-008055-6-0084.fits frame-r-004843-4-0050.fits frame-r-004843-4-0052.fits frame-r-008055-4-0083.fits frame-r-008055-4-0084.fits frame-r-008055-4-0085.fits frame-r-008111-4-0187.fits frame-r-008111-4-0189.fits frame-r-004829-5-0149.fits frame-r-008112-2-0049.fits frame-r-008112-2-0050.fits frame-r-004829-5-0148.fits frame-r-004829-5-0151.fits frame-r-008112-3-0050.fits frame-r-004829-5-0145.fits frame-r-004829-5-0144.fits frame-r-008111-2-0188.fits frame-r-008111-2-0189.fits frame-r-004829-5-0147.fits frame-r-008112-1-0049.fits frame-r-008112-1-0050.fits frame-r-004829-6-0140.fits frame-r-004829-6-0141.fits frame-r-008105-5-0064.fits frame-r-004829-5-0140.fits frame-r-004829-6-0142.fits frame-r-004829-5-0143.fits frame-r-008116-5-0339.fits frame-r-008116-5-0340.fits frame-r-008116-6-0339.fits frame-r-008116-6-0340.fits frame-r-004829-6-0137.fits frame-r-008105-4-0064.fits frame-r-004829-5-0137.fits frame-r-004829-6-0135.fits frame-r-004829-6-0136.fits frame-r-004800-5-0117.fits frame-r-004800-5-0116.fits frame-r-004829-6-0139.fits frame-r-004829-6-0131.fits frame-r-004829-5-0133.fits frame-r-004829-6-0128.fits frame-r-008105-1-0062.fits frame-r-004829-6-0129.fits frame-r-004800-5-0109.fits frame-r-004800-5-0111.fits frame-r-004829-5-0128.fits frame-r-004829-5-0130.fits frame-r-004829-6-0127.fits frame-r-004829-5-0127.fits frame-r-008116-2-0338.fits frame-r-004829-6-0123.fits frame-r-004829-6-0124.fits frame-r-004800-5-0105.fits frame-r-004829-5-0124.fits frame-r-004829-6-0126.fits frame-r-004800-5-0107.fits frame-r-004829-5-0126.fits frame-r-004829-6-0120.fits frame-r-004829-6-0121.fits frame-r-004800-5-0101.fits frame-r-004800-5-0102.fits frame-r-004829-5-0120.fits frame-r-004829-5-0122.fits frame-r-004829-5-0121.fits frame-r-008056-4-0057.fits frame-r-004800-5-0100.fits frame-r-004829-5-0115.fits frame-r-004829-6-0119.fits frame-r-004800-5-0098.fits frame-r-004800-5-0099.fits frame-r-004829-5-0118.fits frame-r-008056-3-0059.fits frame-r-004800-5-0093.fits frame-r-004800-5-0094.fits frame-r-008056-1-0057.fits frame-r-004829-5-0111.fits frame-r-004800-5-0095.fits frame-r-004843-5-0053.fits frame-r-004800-5-0088.fits frame-r-004829-5-0107.fits frame-r-004800-5-0089.fits frame-r-004800-5-0091.fits frame-r-004829-5-0108.fits frame-r-004829-5-0109.fits frame-r-004829-5-0110.fits frame-r-008055-5-0086.fits frame-r-008055-5-0087.fits frame-r-004829-6-0111.fits frame-r-004800-5-0085.fits frame-r-004800-5-0084.fits frame-r-004829-5-0103.fits frame-r-004836-4-0476.fits frame-r-004800-5-0086.fits frame-r-008055-4-0086.fits frame-r-008055-4-0089.fits frame-r-008055-3-0087.fits frame-r-004829-5-0102.fits frame-r-008111-4-0190.fits frame-r-008111-4-0191.fits frame-r-004829-4-0153.fits frame-r-004829-4-0152.fits frame-r-008111-3-0190.fits frame-r-008111-3-0192.fits frame-r-004829-4-0150.fits frame-r-008111-3-0193.fits frame-r-008112-2-0051.fits frame-r-008112-2-0052.fits frame-r-004829-4-0148.fits frame-r-008111-1-0191.fits frame-r-008111-1-0193.fits frame-r-008111-1-0194.fits frame-r-008111-2-0191.fits frame-r-004829-4-0147.fits frame-r-008112-1-0051.fits frame-r-008112-1-0052.fits frame-r-008112-1-0054.fits frame-r-008105-5-0067.fits frame-r-008105-5-0068.fits frame-r-004829-4-0140.fits frame-r-008105-5-0070.fits frame-r-004829-4-0142.fits frame-r-008105-6-0069.fits frame-r-008105-6-0070.fits frame-r-008116-5-0342.fits frame-r-004829-4-0139.fits frame-r-008116-5-0344.fits frame-r-008116-6-0341.fits frame-r-008116-6-0342.fits frame-r-008116-6-0343.fits frame-r-008116-6-0344.fits frame-r-004800-4-0118.fits frame-r-004800-3-0118.fits frame-r-008105-4-0069.fits frame-r-004800-3-0116.fits frame-r-004800-4-0112.fits frame-r-004829-4-0132.fits frame-r-004829-4-0134.fits frame-r-004800-3-0115.fits frame-r-004800-3-0114.fits frame-r-004800-4-0110.fits frame-r-004800-4-0109.fits frame-r-004800-4-0111.fits frame-r-004800-3-0109.fits frame-r-004800-3-0111.fits frame-r-004800-3-0110.fits frame-r-004800-3-0108.fits frame-r-004829-4-0124.fits frame-r-004800-3-0105.fits frame-r-004800-3-0104.fits frame-r-004829-4-0126.fits frame-r-004800-4-0106.fits frame-r-004800-4-0101.fits frame-r-004800-4-0102.fits frame-r-004829-4-0122.fits frame-r-004829-4-0121.fits frame-r-004800-3-0102.fits frame-r-004800-3-0103.fits frame-r-004800-4-0100.fits frame-r-004829-4-0119.fits frame-r-004800-4-0097.fits frame-r-004800-4-0096.fits frame-r-004800-3-0096.fits frame-r-004829-4-0118.fits frame-r-004800-3-0099.fits frame-r-004829-4-0117.fits frame-r-004829-4-0112.fits frame-r-004829-4-0113.fits frame-r-004829-4-0114.fits frame-r-004800-4-0092.fits frame-r-004829-4-0111.fits frame-r-004800-3-0092.fits frame-r-004800-3-0088.fits frame-r-004800-4-0091.fits frame-r-004800-4-0090.fits frame-r-004800-3-0090.fits frame-r-004800-3-0086.fits frame-r-004829-4-0106.fits frame-r-004829-4-0104.fits frame-r-004829-4-0103.fits frame-r-004800-3-0085.fits frame-r-004800-3-0084.fits frame-r-004800-4-0086.fits frame-r-004800-4-0087.fits frame-r-004829-4-0105.fits frame-r-008111-4-0194.fits frame-r-004829-3-0152.fits frame-r-008111-4-0195.fits frame-r-008111-4-0197.fits frame-r-008111-3-0194.fits frame-r-004829-3-0149.fits frame-r-008112-2-0055.fits frame-r-004829-3-0148.fits frame-r-008112-2-0058.fits frame-r-004829-3-0151.fits frame-r-008112-3-0057.fits frame-r-008112-3-0058.fits frame-r-004829-3-0145.fits frame-r-008111-1-0195.fits frame-r-004829-3-0146.fits frame-r-008111-2-0196.fits frame-r-008111-2-0197.fits frame-r-008112-1-0055.fits frame-r-004829-3-0141.fits frame-r-008105-5-0073.fits frame-r-008105-6-0072.fits frame-r-004829-3-0139.fits frame-r-008116-5-0347.fits frame-r-008116-6-0346.fits frame-r-008116-6-0347.fits frame-r-008105-4-0072.fits frame-r-004829-3-0136.fits frame-r-004829-3-0135.fits frame-r-004800-2-0116.fits frame-r-004800-2-0117.fits frame-r-004800-2-0112.fits frame-r-004829-3-0134.fits frame-r-008116-3-0348.fits frame-r-004829-3-0129.fits frame-r-004829-3-0128.fits frame-r-004800-2-0111.fits frame-r-004800-2-0109.fits frame-r-004800-2-0110.fits frame-r-004800-2-0108.fits frame-r-004800-2-0105.fits frame-r-004829-3-0126.fits frame-r-004829-3-0122.fits frame-r-004800-2-0101.fits frame-r-007757-4-0143.fits frame-r-007757-4-0144.fits frame-r-007757-4-0145.fits frame-r-008056-4-0066.fits frame-r-008056-4-0067.fits frame-r-008056-5-0067.fits frame-r-004829-3-0118.fits frame-r-004800-2-0100.fits frame-r-008056-3-0065.fits frame-r-008056-3-0066.fits frame-r-004829-3-0113.fits frame-r-004829-2-0113.fits frame-r-004829-2-0112.fits frame-r-008056-1-0064.fits frame-r-008056-1-0067.fits frame-r-008056-2-0065.fits frame-r-008056-2-0066.fits frame-r-008056-2-0067.fits frame-r-004843-5-0060.fits frame-r-004829-3-0110.fits frame-r-004843-6-0062.fits frame-r-004829-2-0110.fits frame-r-004829-2-0109.fits frame-r-008055-5-0094.fits frame-r-008055-5-0095.fits frame-r-008055-5-0096.fits frame-r-008055-5-0097.fits frame-r-004800-2-0091.fits frame-r-004800-2-0092.fits frame-r-004843-4-0062.fits frame-r-004829-2-0104.fits frame-r-004829-2-0103.fits frame-r-004829-2-0106.fits frame-r-008055-4-0094.fits frame-r-008055-3-0094.fits frame-r-008055-3-0095.fits frame-r-004829-2-0150.fits frame-r-004829-1-0149.fits frame-r-004829-2-0148.fits frame-r-008112-2-0059.fits frame-r-008112-2-0060.fits frame-r-004829-2-0151.fits frame-r-004829-2-0145.fits frame-r-008111-1-0200.fits frame-r-004829-1-0147.fits frame-r-008112-1-0060.fits frame-r-008105-5-0074.fits frame-r-008105-5-0076.fits frame-r-004829-2-0143.fits frame-r-008105-6-0075.fits frame-r-008105-6-0076.fits frame-r-004829-1-0143.fits frame-r-004829-1-0142.fits frame-r-008116-5-0350.fits frame-r-008116-5-0351.fits frame-r-004829-1-0139.fits frame-r-008105-4-0074.fits frame-r-004829-2-0138.fits frame-r-004829-2-0137.fits frame-r-004800-1-0118.fits frame-r-004829-1-0137.fits frame-r-004829-2-0135.fits frame-r-004829-2-0136.fits frame-r-008116-4-0351.fits frame-r-004829-2-0132.fits frame-r-004829-2-0133.fits frame-r-004800-1-0112.fits frame-r-004829-1-0131.fits frame-r-004829-1-0132.fits frame-r-004800-1-0115.fits frame-r-004829-1-0135.fits frame-r-008116-3-0352.fits frame-r-004829-2-0129.fits frame-r-004829-2-0128.fits frame-r-004829-1-0130.fits frame-r-004829-2-0127.fits frame-r-004829-1-0127.fits frame-r-008116-2-0351.fits frame-r-008116-2-0352.fits frame-r-004829-2-0123.fits frame-r-004829-2-0125.fits frame-r-004829-2-0124.fits frame-r-004800-1-0105.fits frame-r-004829-1-0124.fits frame-r-004829-1-0123.fits frame-r-004829-2-0126.fits frame-r-008056-5-0070.fits frame-r-004829-2-0121.fits frame-r-004800-1-0101.fits frame-r-004800-1-0103.fits frame-r-004829-1-0122.fits frame-r-004829-2-0119.fits frame-r-004829-2-0120.fits frame-r-008056-4-0069.fits frame-r-008056-4-0070.fits frame-r-008056-4-0071.fits frame-r-004829-2-0115.fits frame-r-004829-2-0116.fits frame-r-004800-1-0097.fits frame-r-004800-1-0096.fits frame-r-004800-1-0100.fits frame-r-004829-1-0118.fits frame-r-004829-2-0117.fits frame-r-008056-3-0071.fits frame-r-004800-1-0093.fits frame-r-004800-1-0094.fits frame-r-008056-1-0070.fits frame-r-008056-1-0071.fits frame-r-008056-2-0070.fits frame-r-004829-1-0107.fits frame-r-004843-6-0065.fits frame-r-008055-5-0099.fits frame-r-004800-1-0091.fits frame-r-004829-1-0110.fits frame-r-004843-4-0065.fits frame-r-004829-1-0103.fits frame-r-004829-1-0104.fits frame-r-004829-1-0106.fits frame-r-008055-4-0099.fits frame-r-007941-3-0032.fits frame-r-008112-2-0062.fits frame-r-008112-2-0064.fits frame-r-008112-2-0065.fits frame-r-008112-3-0063.fits frame-r-007941-1-0031.fits frame-r-007941-2-0029.fits frame-r-007941-2-0032.fits frame-r-008105-6-0078.fits frame-r-008105-6-0080.fits frame-r-008105-6-0081.fits frame-r-008112-1-0062.fits frame-r-008112-1-0064.fits frame-r-008112-1-0065.fits frame-r-008105-5-0078.fits frame-r-008105-5-0079.fits frame-r-008105-5-0080.fits frame-r-008116-5-0353.fits frame-r-008116-5-0354.fits frame-r-008116-5-0355.fits frame-r-008116-5-0356.fits frame-r-008116-6-0354.fits frame-r-008116-6-0355.fits frame-r-008116-6-0356.fits frame-r-008105-4-0079.fits frame-r-008105-4-0080.fits frame-r-008105-4-0081.fits frame-r-008116-4-0356.fits frame-r-008105-2-0078.fits frame-r-008105-2-0080.fits frame-r-008105-2-0081.fits frame-r-008105-3-0078.fits frame-r-008105-3-0079.fits frame-r-008116-3-0354.fits frame-r-008105-1-0079.fits frame-r-008105-1-0080.fits frame-r-008116-1-0353.fits frame-r-007757-5-0150.fits frame-r-007757-5-0149.fits frame-r-007757-5-0151.fits frame-r-007937-6-0174.fits frame-r-007937-6-0176.fits frame-r-007937-6-0177.fits frame-r-008056-5-0075.fits frame-r-008056-6-0074.fits frame-r-007757-4-0152.fits frame-r-008056-4-0072.fits frame-r-007757-2-0152.fits frame-r-007757-3-0150.fits frame-r-007757-3-0149.fits frame-r-008056-3-0072.fits frame-r-008056-3-0073.fits frame-r-008056-3-0074.fits frame-r-008056-3-0075.fits frame-r-007937-1-0174.fits frame-r-007937-1-0175.fits frame-r-007937-1-0177.fits frame-r-008056-1-0072.fits frame-r-008056-1-0073.fits frame-r-008056-1-0074.fits frame-r-008056-2-0074.fits frame-r-004843-5-0067.fits frame-r-004843-5-0069.fits frame-r-004843-6-0068.fits frame-r-004843-6-0069.fits frame-r-008055-5-0102.fits frame-r-008055-5-0103.fits frame-r-008055-6-0101.fits frame-r-008055-6-0102.fits frame-r-008055-6-0103.fits frame-r-008055-6-0104.fits frame-r-008055-4-0101.fits frame-r-008055-4-0102.fits frame-r-008055-4-0103.fits frame-r-007941-1-0034.fits frame-r-007941-2-0033.fits frame-r-008105-6-0083.fits frame-r-008105-6-0084.fits frame-r-008112-1-0066.fits frame-r-008112-1-0067.fits frame-r-008112-1-0068.fits frame-r-008112-1-0069.fits frame-r-008105-5-0082.fits frame-r-008105-5-0085.fits frame-r-008116-5-0359.fits frame-r-008116-6-0357.fits frame-r-008116-6-0360.fits frame-r-008105-4-0082.fits frame-r-008105-4-0085.fits frame-r-008116-4-0358.fits frame-r-008116-4-0360.fits frame-r-008105-2-0083.fits frame-r-008105-2-0084.fits frame-r-008116-3-0357.fits frame-r-008116-3-0358.fits frame-r-008116-3-0359.fits frame-r-008116-3-0360.fits frame-r-008105-1-0082.fits frame-r-008105-1-0083.fits frame-r-008105-1-0085.fits frame-r-008116-1-0357.fits frame-r-008116-1-0358.fits frame-r-008116-1-0360.fits frame-r-008116-2-0360.fits frame-r-007757-5-0154.fits frame-r-007937-6-0178.fits frame-r-007937-6-0181.fits frame-r-008056-5-0076.fits frame-r-008056-5-0078.fits frame-r-008056-5-0079.fits frame-r-008056-6-0076.fits frame-r-008056-6-0077.fits frame-r-008056-6-0078.fits frame-r-008056-6-0079.fits frame-r-007757-4-0153.fits frame-r-007757-4-0155.fits frame-r-007757-4-0156.fits frame-r-008056-4-0077.fits frame-r-008056-4-0079.fits frame-r-007757-2-0154.fits frame-r-007757-2-0156.fits frame-r-007757-3-0154.fits frame-r-007757-3-0155.fits frame-r-008056-3-0076.fits frame-r-008056-3-0078.fits frame-r-008056-3-0079.fits frame-r-007937-1-0178.fits frame-r-007937-1-0179.fits frame-r-007937-1-0180.fits frame-r-007937-1-0181.fits frame-r-008056-1-0077.fits frame-r-008056-2-0077.fits frame-r-004843-5-0073.fits frame-r-004843-6-0072.fits frame-r-004843-6-0074.fits frame-r-004843-6-0075.fits frame-r-008055-5-0105.fits frame-r-008055-5-0106.fits frame-r-008055-5-0108.fits frame-r-008055-6-0105.fits frame-r-008055-6-0106.fits frame-r-007941-1-0037.fits frame-r-007941-1-0038.fits frame-r-008112-1-0070.fits frame-r-008105-5-0086.fits frame-r-008105-5-0088.fits frame-r-008105-5-0089.fits frame-r-008116-5-0361.fits frame-r-008116-5-0362.fits frame-r-008116-5-0363.fits frame-r-008116-6-0362.fits frame-r-008116-6-0363.fits frame-r-008105-4-0086.fits frame-r-008105-4-0087.fits frame-r-008105-4-0089.fits frame-r-008105-2-0089.fits frame-r-008105-3-0086.fits frame-r-008105-3-0087.fits frame-r-008105-3-0088.fits frame-r-008116-3-0362.fits frame-r-008105-1-0086.fits frame-r-008116-1-0363.fits frame-r-008116-2-0361.fits frame-r-008116-2-0362.fits frame-r-008116-2-0363.fits frame-r-008116-2-0364.fits frame-r-007757-5-0157.fits frame-r-007757-5-0159.fits frame-r-007937-6-0182.fits frame-r-007937-6-0184.fits frame-r-007937-6-0185.fits frame-r-008056-6-0081.fits frame-r-008056-6-0082.fits frame-r-007757-4-0158.fits frame-r-007757-4-0159.fits frame-r-007757-3-0157.fits frame-r-007757-3-0158.fits frame-r-007757-3-0159.fits frame-r-007757-3-0160.fits frame-r-008056-3-0080.fits frame-r-008056-3-0081.fits frame-r-007937-1-0185.fits frame-r-008056-1-0081.fits frame-r-008056-2-0080.fits frame-r-008056-2-0081.fits frame-r-004843-6-0076.fits frame-r-008055-6-0111.fits frame-r-008105-5-0090.fits frame-r-008116-5-0366.fits frame-r-008105-4-0090.fits frame-r-008116-4-0366.fits frame-r-008116-4-0367.fits frame-r-008105-2-0090.fits frame-r-008116-3-0365.fits frame-r-008116-3-0367.fits frame-r-008105-1-0090.fits frame-r-008105-1-0092.fits frame-r-008116-1-0367.fits frame-r-008116-2-0366.fits frame-r-007757-5-0161.fits frame-r-007757-5-0162.fits frame-r-007937-6-0189.fits frame-r-008056-6-0084.fits frame-r-007757-4-0161.fits frame-r-007757-4-0164.fits frame-r-007757-2-0161.fits frame-r-007757-2-0162.fits frame-r-007757-3-0162.fits frame-r-007757-3-0163.fits frame-r-008056-3-0083.fits frame-r-008056-3-0085.fits frame-r-008056-2-0083.fits frame-r-008056-2-0084.fits frame-r-008105-2-0093.fits frame-r-008116-3-0368.fits frame-r-008105-1-0093.fits frame-r-007757-5-0165.fits frame-r-008056-5-0087.fits frame-r-008056-6-0087.fits
