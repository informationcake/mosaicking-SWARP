#!/bin/bash
#
# This script will create a mosaic of SDSS images.
#
# To invoke this script do:
#
# $ /bin/bash J095533.00+690355.0.sh
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
#
# Filter = r
#
/bin/rm -f default.swarp
cat > default.swarp <<EOT
IMAGEOUT_NAME          J095533.00+690355.0-r.fits      # Output filename
WEIGHTOUT_NAME       J095533.00+690355.0-r.weight.fits # Output weight-map filename

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
CENTER                       148.8882193990,       69.0652951404 # Image Center
PIXELSCALE_TYPE        MANUAL          # MANUAL,FIT,MIN,MAX or MEDIAN
PIXEL_SCALE            0.396000  # Pixel scale
IMAGE_SIZE             1818,1818 # scale = 0.396127 arcsec/pixel

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
VMEM_MAX               2047            # Maximum amount of virtual memory (MB)
MEM_MAX                2048            # Maximum amount of usable RAM (MB)
COMBINE_BUFSIZE        1024            # Buffer size for combine (MB)

#------------------------------ Miscellaneous ---------------------------------

DELETE_TMPFILES        Y               # Delete temporary resampled FITS files
                                       # (Y/N)?
COPY_KEYWORDS          OBJECT          # List of FITS keywords to propagate
                                       # from the input to the output headers
WRITE_FILEINFO         Y               # Write information about each input
                                       # file in the output image header?
WRITE_XML              N               # Write XML file (Y/N)?
XML_NAME               swarp.xml       # Filename for XML output
VERBOSE_TYPE           FULL           # QUIET,NORMAL or FULL

NTHREADS               0               # Number of simultaneous threads for
                                       # the SMP version of SWarp
                                       # 0 = automatic

EOT
#
swarp frame-r-004264-3-0258.fits frame-r-004264-3-0259.fits frame-r-004264-4-0261.fits frame-r-004294-4-0236.fits frame-r-004264-5-0258.fits frame-r-004264-5-0259.fits frame-r-004294-4-0233.fits frame-r-004294-5-0232.fits frame-r-004264-3-0260.fits frame-r-004264-4-0258.fits frame-r-004264-4-0259.fits frame-r-004264-4-0260.fits frame-r-004294-4-0234.fits frame-r-004294-4-0235.fits frame-r-004294-5-0234.fits frame-r-004294-5-0235.fits frame-r-004294-5-0236.fits frame-r-004264-5-0260.fits frame-r-004264-4-0256.fits frame-r-004264-4-0257.fits frame-r-004294-4-0232.fits frame-r-004294-5-0233.fits
