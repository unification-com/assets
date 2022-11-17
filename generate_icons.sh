#!/bin/bash

set -eu

SRC_DIR="./icons/hi-res/icons/"
BASE_DEST_DIR="./icons/web"

TARGET_SIZES=(
 "1024x1024"
 "1000x1000"
 "512x512"
 "500x500"
 "256x256"
 "250x250"
 "200x200"
 "128x128"
 "100x100"
 "96x96"
 "64x64"
 "50x50"
 "48x48"
 "32x32"
)

SRC_IMAGES=($(find "${SRC_DIR}" -type f -regex "^.*$"))

function get_shape_or_colour() {
  local INFO
  local INFO_ARR

  INFO="${1}"
  IFS='_' read -ra INFO_ARR <<< "${INFO}"
  echo "${INFO_ARR[${2}]}"
}

function resize_img() {
  local SRC
  local DIR
  local INFO
  local DEST_IMG

  SRC="${1}"
  DIR="${2}"
  INFO="${3}"

  printf "converting %s\n" "${SRC}"

  for ts in "${TARGET_SIZES[@]}"; do
    printf "   %s\n" "${ts}"
    DEST_IMG="${DIR}/${INFO}_${ts}.png"
    convert "${SRC}" -resize "${ts}" -define png:color-type=6 "${DEST_IMG}"
  done

}

function proc_img() {
  local IMG
  local FILENAME
  local IMG_INFO
  local SHAPE
  local COLOUR
  local DEST_DIR

  IMG="${1}"
  FILENAME=${IMG##*/}
  IMG_INFO="${FILENAME%.png}"
  SHAPE=$(get_shape_or_colour "${IMG_INFO}" 3)
  COLOUR=$(get_shape_or_colour "${IMG_INFO}" 2)

  DEST_DIR="${BASE_DEST_DIR}/${SHAPE}/${COLOUR}"

  mkdir -p "${DEST_DIR}"

  resize_img "${IMG}" "${DEST_DIR}" "${IMG_INFO}"
}

for IMG_LOC in ${SRC_IMAGES[*]}
do
  proc_img "${IMG_LOC}"
done
