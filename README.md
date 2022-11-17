# Unification Icons & Logos

A repository containing both hi-res and web optimised icons and logos

## Contents

### icons

The `icons` directory contains both `hi-res` images and `web` square & circle icons suitable for web applications.

### branding

The `branding` directory contains various logos and banners

## Generate Icons

The `generate_icons.sh` script can be uses ImageMagik to generate icons of varying sizes.

Images are sourced from `icons/hi-res/icons` and written to `icons/web`

```bash
rm -rf ./icons/web
./generate_icons.sh
```
