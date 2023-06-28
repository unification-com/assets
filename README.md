# Unification Icons & Logos

A repository containing hi-res and web optimised icons and logos in PNG format, and SVG logo icons.

## Contents

### icons

The `icons` directory contains `svg`, `hi-res` PNG images and `web` PNG icons of various sizes suitable for web applications.

### branding

The `branding` directory contains various logos and banners in PNG format.

## Generate Icons

The `generate_icons.sh` script uses ImageMagik to generate PNG format icons of varying sizes from the SVGs.

**Note**: for transparrent backgrounds to work when converting the SVGs to PNGs, Inkscape must be installed.

Images are sourced from `icons/svg` and written to `icons/web`

```bash
rm -rf ./icons/web
./generate_icons.sh
```
