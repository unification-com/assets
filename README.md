![GitHub release](https://img.shields.io/github/v/release/unification-com/assets?style=flat-square)

# Unification Icons & Logos

A repository containing hi-res and web optimised icons and logos in PNG format, and SVG logo icons.

![unification_icon_blue_circle_128x128.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/icons/web/circle/blue/unification_icon_blue_circle_128x128.png)
![unification_icon_blue_square_128x128.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/icons/web/square/blue/unification_icon_blue_square_128x128.png)
![unification_icon_black_plain_128x128.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/icons/web/plain/black/unification_icon_black_plain_128x128.png)
![unification_icon_white_plain_128x128.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/icons/web/plain/white/unification_icon_white_plain_128x128.png)

![unification_horizontal_logo_black.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/branding/web/unification_horizontal_logo_black.png)

![unification_horizontal_logo_white.png](https://raw.githubusercontent.com/unification-com/assets/v1.0.0/branding/web/unification_horizontal_logo_white.png)

<img src="https://raw.githubusercontent.com/unification-com/assets/v1.0.0/branding/web/unification_logo_black_500x500.png" width="200">
<img src="https://raw.githubusercontent.com/unification-com/assets/v1.0.0/branding/web/unification_logo_white_500x500.png" width="200">


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
