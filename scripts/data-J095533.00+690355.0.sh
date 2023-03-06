#!/bin/bash
#
# This script will download the fits files requires to make a mosaic of SDSS images.
#

hasPhotoObj=''
if [[ -n "${BOSS_PHOTOOBJ}" ]]; then
    if [[ -d ${BOSS_PHOTOOBJ}/frames/301 ]]; then
        echo "BOSS_PHOTOOBJ detected.  Will attempt to use files on disk."
        hasPhotoObj=True
    fi
fi
for cmd in bzip2 wget; do
    hasCmd=$(which ${cmd} 2>/dev/null)
    if [[ -z "${hasCmd}" ]]; then
        echo "This script requires ${cmd}, which is not in your \$PATH."
        exit 1
    fi
done

if [[ -z "${hasPhotoObj}" ]]; then
    echo "downloading data..."
    if [[ ! -f frame-r-004264-3-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/3/frame-r-004264-3-0258.fits.bz2
        bzip2 -d -c -k frame-r-004264-3-0258.fits.bz2 > frame-r-004264-3-0258.fits
    fi
    if [[ ! -f frame-r-004264-3-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/3/frame-r-004264-3-0259.fits.bz2
        bzip2 -d -c -k frame-r-004264-3-0259.fits.bz2 > frame-r-004264-3-0259.fits
    fi
    if [[ ! -f frame-r-004264-4-0261.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0261.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0261.fits.bz2 > frame-r-004264-4-0261.fits
    fi
    if [[ ! -f frame-r-004294-4-0236.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/4/frame-r-004294-4-0236.fits.bz2
        bzip2 -d -c -k frame-r-004294-4-0236.fits.bz2 > frame-r-004294-4-0236.fits
    fi
    if [[ ! -f frame-r-004264-5-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/5/frame-r-004264-5-0258.fits.bz2
        bzip2 -d -c -k frame-r-004264-5-0258.fits.bz2 > frame-r-004264-5-0258.fits
    fi
    if [[ ! -f frame-r-004264-5-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/5/frame-r-004264-5-0259.fits.bz2
        bzip2 -d -c -k frame-r-004264-5-0259.fits.bz2 > frame-r-004264-5-0259.fits
    fi
    if [[ ! -f frame-r-004294-4-0233.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/4/frame-r-004294-4-0233.fits.bz2
        bzip2 -d -c -k frame-r-004294-4-0233.fits.bz2 > frame-r-004294-4-0233.fits
    fi
    if [[ ! -f frame-r-004294-5-0232.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/5/frame-r-004294-5-0232.fits.bz2
        bzip2 -d -c -k frame-r-004294-5-0232.fits.bz2 > frame-r-004294-5-0232.fits
    fi
    if [[ ! -f frame-r-004264-3-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/3/frame-r-004264-3-0260.fits.bz2
        bzip2 -d -c -k frame-r-004264-3-0260.fits.bz2 > frame-r-004264-3-0260.fits
    fi
    if [[ ! -f frame-r-004264-4-0258.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0258.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0258.fits.bz2 > frame-r-004264-4-0258.fits
    fi
    if [[ ! -f frame-r-004264-4-0259.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0259.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0259.fits.bz2 > frame-r-004264-4-0259.fits
    fi
    if [[ ! -f frame-r-004264-4-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0260.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0260.fits.bz2 > frame-r-004264-4-0260.fits
    fi
    if [[ ! -f frame-r-004294-4-0234.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/4/frame-r-004294-4-0234.fits.bz2
        bzip2 -d -c -k frame-r-004294-4-0234.fits.bz2 > frame-r-004294-4-0234.fits
    fi
    if [[ ! -f frame-r-004294-4-0235.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/4/frame-r-004294-4-0235.fits.bz2
        bzip2 -d -c -k frame-r-004294-4-0235.fits.bz2 > frame-r-004294-4-0235.fits
    fi
    if [[ ! -f frame-r-004294-5-0234.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/5/frame-r-004294-5-0234.fits.bz2
        bzip2 -d -c -k frame-r-004294-5-0234.fits.bz2 > frame-r-004294-5-0234.fits
    fi
    if [[ ! -f frame-r-004294-5-0235.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/5/frame-r-004294-5-0235.fits.bz2
        bzip2 -d -c -k frame-r-004294-5-0235.fits.bz2 > frame-r-004294-5-0235.fits
    fi
    if [[ ! -f frame-r-004294-5-0236.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/5/frame-r-004294-5-0236.fits.bz2
        bzip2 -d -c -k frame-r-004294-5-0236.fits.bz2 > frame-r-004294-5-0236.fits
    fi
    if [[ ! -f frame-r-004264-5-0260.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/5/frame-r-004264-5-0260.fits.bz2
        bzip2 -d -c -k frame-r-004264-5-0260.fits.bz2 > frame-r-004264-5-0260.fits
    fi
    if [[ ! -f frame-r-004264-4-0256.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0256.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0256.fits.bz2 > frame-r-004264-4-0256.fits
    fi
    if [[ ! -f frame-r-004264-4-0257.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4264/4/frame-r-004264-4-0257.fits.bz2
        bzip2 -d -c -k frame-r-004264-4-0257.fits.bz2 > frame-r-004264-4-0257.fits
    fi
    if [[ ! -f frame-r-004294-4-0232.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/4/frame-r-004294-4-0232.fits.bz2
        bzip2 -d -c -k frame-r-004294-4-0232.fits.bz2 > frame-r-004294-4-0232.fits
    fi
    if [[ ! -f frame-r-004294-5-0233.fits ]]; then
        wget -q https://data.sdss.org/sas/dr12/env/BOSS_PHOTOOBJ/frames/301/4294/5/frame-r-004294-5-0233.fits.bz2
        bzip2 -d -c -k frame-r-004294-5-0233.fits.bz2 > frame-r-004294-5-0233.fits
    fi
else
    echo "decompressing data..."
    if [[ ! -f frame-r-004264-3-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/3/frame-r-004264-3-0258.fits.bz2 > frame-r-004264-3-0258.fits
    fi
    if [[ ! -f frame-r-004264-3-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/3/frame-r-004264-3-0259.fits.bz2 > frame-r-004264-3-0259.fits
    fi
    if [[ ! -f frame-r-004264-4-0261.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0261.fits.bz2 > frame-r-004264-4-0261.fits
    fi
    if [[ ! -f frame-r-004294-4-0236.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/4/frame-r-004294-4-0236.fits.bz2 > frame-r-004294-4-0236.fits
    fi
    if [[ ! -f frame-r-004264-5-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/5/frame-r-004264-5-0258.fits.bz2 > frame-r-004264-5-0258.fits
    fi
    if [[ ! -f frame-r-004264-5-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/5/frame-r-004264-5-0259.fits.bz2 > frame-r-004264-5-0259.fits
    fi
    if [[ ! -f frame-r-004294-4-0233.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/4/frame-r-004294-4-0233.fits.bz2 > frame-r-004294-4-0233.fits
    fi
    if [[ ! -f frame-r-004294-5-0232.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/5/frame-r-004294-5-0232.fits.bz2 > frame-r-004294-5-0232.fits
    fi
    if [[ ! -f frame-r-004264-3-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/3/frame-r-004264-3-0260.fits.bz2 > frame-r-004264-3-0260.fits
    fi
    if [[ ! -f frame-r-004264-4-0258.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0258.fits.bz2 > frame-r-004264-4-0258.fits
    fi
    if [[ ! -f frame-r-004264-4-0259.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0259.fits.bz2 > frame-r-004264-4-0259.fits
    fi
    if [[ ! -f frame-r-004264-4-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0260.fits.bz2 > frame-r-004264-4-0260.fits
    fi
    if [[ ! -f frame-r-004294-4-0234.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/4/frame-r-004294-4-0234.fits.bz2 > frame-r-004294-4-0234.fits
    fi
    if [[ ! -f frame-r-004294-4-0235.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/4/frame-r-004294-4-0235.fits.bz2 > frame-r-004294-4-0235.fits
    fi
    if [[ ! -f frame-r-004294-5-0234.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/5/frame-r-004294-5-0234.fits.bz2 > frame-r-004294-5-0234.fits
    fi
    if [[ ! -f frame-r-004294-5-0235.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/5/frame-r-004294-5-0235.fits.bz2 > frame-r-004294-5-0235.fits
    fi
    if [[ ! -f frame-r-004294-5-0236.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/5/frame-r-004294-5-0236.fits.bz2 > frame-r-004294-5-0236.fits
    fi
    if [[ ! -f frame-r-004264-5-0260.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/5/frame-r-004264-5-0260.fits.bz2 > frame-r-004264-5-0260.fits
    fi
    if [[ ! -f frame-r-004264-4-0256.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0256.fits.bz2 > frame-r-004264-4-0256.fits
    fi
    if [[ ! -f frame-r-004264-4-0257.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4264/4/frame-r-004264-4-0257.fits.bz2 > frame-r-004264-4-0257.fits
    fi
    if [[ ! -f frame-r-004294-4-0232.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/4/frame-r-004294-4-0232.fits.bz2 > frame-r-004294-4-0232.fits
    fi
    if [[ ! -f frame-r-004294-5-0233.fits ]]; then
        bzip2 -d -c -k ${BOSS_PHOTOOBJ}/frames/301/4294/5/frame-r-004294-5-0233.fits.bz2 > frame-r-004294-5-0233.fits
    fi
fi
