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
    if [[ ! -f frame-r-008116-1-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/1/frame-r-008116-1-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-1-0337.fits.bz2 > frame-r-008116-1-0337.fits
    fi
    if [[ ! -f frame-r-008116-2-0337.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8116/2/frame-r-008116-2-0337.fits.bz2
        bzip2 -d -c -k frame-r-008116-2-0337.fits.bz2 > frame-r-008116-2-0337.fits
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
    if [[ ! -f frame-r-004800-5-0103.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/5/frame-r-004800-5-0103.fits.bz2
        bzip2 -d -c -k frame-r-004800-5-0103.fits.bz2 > frame-r-004800-5-0103.fits
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
    if [[ ! -f frame-r-008056-5-0066.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0066.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0066.fits.bz2 > frame-r-008056-5-0066.fits
    fi
    if [[ ! -f frame-r-004829-2-0130.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0130.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0130.fits.bz2 > frame-r-004829-2-0130.fits
    fi
    if [[ ! -f frame-r-004800-6-0110.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0110.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0110.fits.bz2 > frame-r-004800-6-0110.fits
    fi
    if [[ ! -f frame-r-004800-6-0109.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0109.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0109.fits.bz2 > frame-r-004800-6-0109.fits
    fi
    if [[ ! -f frame-r-004800-6-0107.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0107.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0107.fits.bz2 > frame-r-004800-6-0107.fits
    fi
    if [[ ! -f frame-r-004800-6-0108.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0108.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0108.fits.bz2 > frame-r-004800-6-0108.fits
    fi
    if [[ ! -f frame-r-004800-6-0106.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/6/frame-r-004800-6-0106.fits.bz2
        bzip2 -d -c -k frame-r-004800-6-0106.fits.bz2 > frame-r-004800-6-0106.fits
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
    if [[ ! -f frame-r-004829-5-0122.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0122.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0122.fits.bz2 > frame-r-004829-5-0122.fits
    fi
    if [[ ! -f frame-r-004829-5-0121.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/5/frame-r-004829-5-0121.fits.bz2
        bzip2 -d -c -k frame-r-004829-5-0121.fits.bz2 > frame-r-004829-5-0121.fits
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
    if [[ ! -f frame-r-004800-2-0112.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4800/2/frame-r-004800-2-0112.fits.bz2
        bzip2 -d -c -k frame-r-004800-2-0112.fits.bz2 > frame-r-004800-2-0112.fits
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
    if [[ ! -f frame-r-008056-5-0067.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/8056/5/frame-r-008056-5-0067.fits.bz2
        bzip2 -d -c -k frame-r-008056-5-0067.fits.bz2 > frame-r-008056-5-0067.fits
    fi
    if [[ ! -f frame-r-004829-2-0129.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0129.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0129.fits.bz2 > frame-r-004829-2-0129.fits
    fi
    if [[ ! -f frame-r-004829-2-0128.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0128.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0128.fits.bz2 > frame-r-004829-2-0128.fits
    fi
    if [[ ! -f frame-r-004829-2-0127.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0127.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0127.fits.bz2 > frame-r-004829-2-0127.fits
    fi
    if [[ ! -f frame-r-004829-2-0125.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0125.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0125.fits.bz2 > frame-r-004829-2-0125.fits
    fi
    if [[ ! -f frame-r-004829-2-0124.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0124.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0124.fits.bz2 > frame-r-004829-2-0124.fits
    fi
    if [[ ! -f frame-r-004829-2-0126.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4829/2/frame-r-004829-2-0126.fits.bz2
        bzip2 -d -c -k frame-r-004829-2-0126.fits.bz2 > frame-r-004829-2-0126.fits
    fi
else
    if [[ ! -f frame-r-008116-1-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/1/frame-r-008116-1-0337.fits.bz2 > frame-r-008116-1-0337.fits
    fi
    if [[ ! -f frame-r-008116-2-0337.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8116/2/frame-r-008116-2-0337.fits.bz2 > frame-r-008116-2-0337.fits
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
    if [[ ! -f frame-r-004800-5-0103.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/5/frame-r-004800-5-0103.fits.bz2 > frame-r-004800-5-0103.fits
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
    if [[ ! -f frame-r-008056-5-0066.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0066.fits.bz2 > frame-r-008056-5-0066.fits
    fi
    if [[ ! -f frame-r-004829-2-0130.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0130.fits.bz2 > frame-r-004829-2-0130.fits
    fi
    if [[ ! -f frame-r-004800-6-0110.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0110.fits.bz2 > frame-r-004800-6-0110.fits
    fi
    if [[ ! -f frame-r-004800-6-0109.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0109.fits.bz2 > frame-r-004800-6-0109.fits
    fi
    if [[ ! -f frame-r-004800-6-0107.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0107.fits.bz2 > frame-r-004800-6-0107.fits
    fi
    if [[ ! -f frame-r-004800-6-0108.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0108.fits.bz2 > frame-r-004800-6-0108.fits
    fi
    if [[ ! -f frame-r-004800-6-0106.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/6/frame-r-004800-6-0106.fits.bz2 > frame-r-004800-6-0106.fits
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
    if [[ ! -f frame-r-004829-5-0122.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0122.fits.bz2 > frame-r-004829-5-0122.fits
    fi
    if [[ ! -f frame-r-004829-5-0121.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/5/frame-r-004829-5-0121.fits.bz2 > frame-r-004829-5-0121.fits
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
    if [[ ! -f frame-r-004800-2-0112.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4800/2/frame-r-004800-2-0112.fits.bz2 > frame-r-004800-2-0112.fits
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
    if [[ ! -f frame-r-008056-5-0067.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/8056/5/frame-r-008056-5-0067.fits.bz2 > frame-r-008056-5-0067.fits
    fi
    if [[ ! -f frame-r-004829-2-0129.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0129.fits.bz2 > frame-r-004829-2-0129.fits
    fi
    if [[ ! -f frame-r-004829-2-0128.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0128.fits.bz2 > frame-r-004829-2-0128.fits
    fi
    if [[ ! -f frame-r-004829-2-0127.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0127.fits.bz2 > frame-r-004829-2-0127.fits
    fi
    if [[ ! -f frame-r-004829-2-0125.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0125.fits.bz2 > frame-r-004829-2-0125.fits
    fi
    if [[ ! -f frame-r-004829-2-0124.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0124.fits.bz2 > frame-r-004829-2-0124.fits
    fi
    if [[ ! -f frame-r-004829-2-0126.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4829/2/frame-r-004829-2-0126.fits.bz2 > frame-r-004829-2-0126.fits
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
IMAGE_SIZE             9090,9090 # scale = 0.396127 arcsec/pixel

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
VMEM_MAX               20000            # Maximum amount of virtual memory (MB)
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
swarp frame-r-008116-1-0337.fits frame-r-008116-2-0337.fits frame-r-004829-6-0132.fits frame-r-004800-5-0113.fits frame-r-004800-5-0112.fits frame-r-004829-5-0131.fits frame-r-004829-5-0132.fits frame-r-008105-1-0063.fits frame-r-008105-1-0064.fits frame-r-004800-5-0110.fits frame-r-004829-5-0129.fits frame-r-004800-5-0108.fits frame-r-008116-2-0339.fits frame-r-004829-6-0125.fits frame-r-004800-5-0104.fits frame-r-004829-5-0123.fits frame-r-004829-5-0125.fits frame-r-004800-5-0106.fits frame-r-004800-5-0103.fits frame-r-004800-4-0113.fits frame-r-004829-4-0131.fits frame-r-004829-4-0133.fits frame-r-004800-3-0112.fits frame-r-004800-3-0113.fits frame-r-004800-4-0114.fits frame-r-004829-4-0128.fits frame-r-004829-4-0129.fits frame-r-004829-4-0130.fits frame-r-004800-4-0108.fits frame-r-004829-4-0127.fits frame-r-004800-4-0104.fits frame-r-004800-4-0105.fits frame-r-004829-4-0123.fits frame-r-004829-4-0125.fits frame-r-004800-3-0106.fits frame-r-004800-4-0107.fits frame-r-004800-3-0107.fits frame-r-004800-4-0103.fits frame-r-004829-3-0133.fits frame-r-004829-3-0132.fits frame-r-004829-3-0131.fits frame-r-004800-2-0113.fits frame-r-004829-3-0130.fits frame-r-004829-3-0127.fits frame-r-004829-3-0123.fits frame-r-004829-3-0125.fits frame-r-004829-3-0124.fits frame-r-004800-2-0104.fits frame-r-004800-2-0106.fits frame-r-004800-2-0107.fits frame-r-008056-5-0066.fits frame-r-004829-2-0130.fits frame-r-004800-6-0110.fits frame-r-004800-6-0109.fits frame-r-004800-6-0107.fits frame-r-004800-6-0108.fits frame-r-004800-6-0106.fits frame-r-004829-6-0131.fits frame-r-004829-5-0133.fits frame-r-004829-6-0128.fits frame-r-008105-1-0062.fits frame-r-004829-6-0129.fits frame-r-004800-5-0109.fits frame-r-004800-5-0111.fits frame-r-004829-5-0128.fits frame-r-004829-5-0130.fits frame-r-004829-6-0127.fits frame-r-004829-5-0127.fits frame-r-008116-2-0338.fits frame-r-004829-6-0123.fits frame-r-004829-6-0124.fits frame-r-004800-5-0105.fits frame-r-004829-5-0124.fits frame-r-004829-6-0126.fits frame-r-004800-5-0107.fits frame-r-004829-5-0126.fits frame-r-004829-5-0122.fits frame-r-004829-5-0121.fits frame-r-004800-4-0112.fits frame-r-004829-4-0132.fits frame-r-004829-4-0134.fits frame-r-004800-3-0114.fits frame-r-004800-4-0110.fits frame-r-004800-4-0109.fits frame-r-004800-4-0111.fits frame-r-004800-3-0109.fits frame-r-004800-3-0111.fits frame-r-004800-3-0110.fits frame-r-004800-3-0108.fits frame-r-004829-4-0124.fits frame-r-004800-3-0105.fits frame-r-004800-3-0104.fits frame-r-004829-4-0126.fits frame-r-004800-4-0106.fits frame-r-004800-4-0102.fits frame-r-004829-4-0122.fits frame-r-004829-4-0121.fits frame-r-004800-3-0102.fits frame-r-004800-3-0103.fits frame-r-004800-2-0112.fits frame-r-004829-3-0129.fits frame-r-004829-3-0128.fits frame-r-004800-2-0111.fits frame-r-004800-2-0109.fits frame-r-004800-2-0110.fits frame-r-004800-2-0108.fits frame-r-004800-2-0105.fits frame-r-004829-3-0126.fits frame-r-004829-3-0122.fits frame-r-008056-5-0067.fits frame-r-004829-2-0129.fits frame-r-004829-2-0128.fits frame-r-004829-2-0127.fits frame-r-004829-2-0125.fits frame-r-004829-2-0124.fits frame-r-004829-2-0126.fits
